<?= $this->extend('layout/templateMain'); ?>
<?= $this->section("content"); ?>

<style>
    /* Custom styles for better spacing and alignment */
    .form-container {
        max-width: 800px;
        margin: 0 auto;
        padding: 20px;
        background-color: #f8f9fa;
        border-radius: 10px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    .form-title {
        text-align: center;
        font-size: 1.8rem;
        font-weight: bold;
        margin-bottom: 20px;
        color: #343a40;
    }

    .form-floating label {
        font-size: 0.9rem;
        color: #6c757d;
    }

    .form-floating input,
    .form-floating textarea {
        font-size: 1rem;
    }

    .btn-primary {
        padding: 0.5rem 1.5rem;
        font-size: 1rem;
    }

    .form-check {
        padding: 15px;
        background-color: white;
        border-radius: 5px;
        border: 1px solid #dee2e6;
    }
    /* Styled switch card to match form design */
    .switch-card {
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 10px 14px;
        background-color: #ffffff;
        border-radius: 8px;
        border: 1px solid #e9ecef;
        box-shadow: 0 1px 2px rgba(0,0,0,0.03);
    }
    .switch-card .switch-label {
        margin: 0;
        font-weight: 600;
        color: #343a40;
    }
    .switch-card .switch-help {
        display:block;
        font-size:0.85rem;
        color:#6c757d;
    }
</style>

<div class="form-container">
    <!-- Title spanning the entire container -->
    <div class="form-title">Add Article</div>

    <div class="container mt-4">
    <form action="<?= base_url('addNew') ?>" method="post">
            <!-- No id or _method for creating new article -->

            <!-- Link Field -->
            <div class="input-group mt-2">
                <span class="input-group-text">article/</span>
                <div class="form-floating">
                    <input
                        class="form-control"
                        type="text"
                        name="link"
                        id="link"
                        placeholder="Enter article link"
                        value="" />
                    <label for="link" class="form-label">Article Link</label>
                </div>
            </div>

            <!-- Title Field -->
            <div class="form-floating mt-2">
                <input class="form-control" type="text" name="title" id="title" placeholder="Title" value="">
                <label for="title">Title</label>
            </div>

            <!-- ID Field -->
            <div class="form-floating mt-2">
                <input class="form-control" type="text" name="id_a" id="id_a" placeholder="ID" value="">
                <label for="id_a">ID</label>
            </div>

            <!-- Photo Field -->
            <div class="form-floating mt-2">
                <div class="input-group">
                    <input class="form-control" type="text" name="photo" id="photo" value="">
                    <input class="form-control" type="file" id="photo_file" accept="image/*">
                </div>
                <label for="photo">Photo</label>
                <div id="photo_preview" class="mt-2"></div>
            </div>

            <!-- Date Field -->
            <div class="form-floating mt-2">
                <input
                    class="form-control"
                    type="date"
                    name="date"
                    id="date"
                    placeholder="Date"
                    value="<?= date('Y-m-d') ?>">
                <label for="date">Date</label>
            </div>

            <!-- Top & Published Switches -->
            <div class="row g-2 mt-2">
                <div class="col-md-6">
                    <div class="switch-card">
                        <div>
                            <p class="switch-label">Top Article</p>
                            <span class="switch-help">Highlight at top of listings</span>
                        </div>
                        <div>
                            <input type="hidden" name="top" value="0">
                            <input class="form-check-input" type="checkbox" name="top" id="top" value="1">
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="switch-card">
                        <div>
                            <p class="switch-label">Published</p>
                            <span class="switch-help">Visible to public</span>
                        </div>
                        <div>
                            <input type="hidden" name="published" value="0">
                            <input class="form-check-input" type="checkbox" name="published" id="published" value="1">
                        </div>
                    </div>
                </div>
            </div>

            <!-- Text Field with CKEditor -->
            <div class="form-floating mt-2">
                <textarea
                    class="form-control"
                    name="text"
                    id="text"
                    placeholder="Text"
                    style="height: 150px;"></textarea>
            </div>

            <!-- (duplicate Published switch removed) -->

            <!-- Submit Button -->
            <div class="row mt-3">
                <div class="col-12 text-end">
                    <button type="submit" class="btn btn-primary">Add New Article</button>
                </div>
            </div>
    </form>
    </div>
</div>

<!-- Include CKEditor 5 Script -->
<script src="https://cdn.ckeditor.com/ckeditor5/39.0.1/classic/ckeditor.js"></script>
<script>
    // Initialize CKEditor 5 for the 'text' field and keep a reference to the editor
    let articleEditor = null;
    ClassicEditor
        .create(document.querySelector('#text'), {
            toolbar: [
                'heading', '|',
                'bold', 'italic', 'underline', 'strikethrough', '|',
                'bulletedList', 'numberedList', '|',
                'link', 'blockQuote', '|',
                'insertTable', 'imageUpload', '|',
                'undo', 'redo'
            ],
            table: {
                contentToolbar: ['tableColumn', 'tableRow', 'mergeTableCells']
            },
            image: {
                toolbar: ['imageTextAlternative', 'imageStyle:full', 'imageStyle:side']
            },
            simpleUpload: {
                uploadUrl: "<?= base_url('uploadImage') ?>",
                headers: {
                    // Add any custom headers here if needed (e.g. CSRF token)
                }
            }
        })
        .then(editor => {
            articleEditor = editor;
        })
        .catch(error => {
            console.error(error);
        });

    // Copy CKEditor data into the textarea before the form submits so
    // HTML5 'required' validation won't be blocked and the server receives the content.
    (function () {
        const form = document.querySelector('form');
        if (!form) return;

        form.addEventListener('submit', function (e) {
            const textarea = document.querySelector('#text');
            if (articleEditor && textarea) {
                textarea.value = articleEditor.getData();
            }
            // allow normal submit to proceed
        });
    })();

    // Upload selected photo file and set the photo input to the returned URL
    (function () {
        const fileInput = document.querySelector('#photo_file');
        const photoInput = document.querySelector('#photo');
        const preview = document.querySelector('#photo_preview');
        if (!fileInput || !photoInput) return;

        fileInput.addEventListener('change', function () {
            const f = this.files[0];
            if (!f) return;
            const fd = new FormData();
            fd.append('upload', f);

            fetch('<?= base_url('uploadImage') ?>', {
                method: 'POST',
                body: fd
            }).then(r => r.json()).then(data => {
                if (data.url) {
                    // Save only the file MIME type in the photo input as requested
                    photoInput.value = f.type || data.type || data.mime || '';
                    preview.innerHTML = '<img src="' + data.url + '" style="max-width:200px;" />';
                } else if (data.error && data.error.message) {
                    alert('Upload error: ' + data.error.message);
                }
            }).catch(err => {
                console.error(err);
                alert('Upload failed');
            });
        });
    })();
</script>

<?= $this->endSection(); ?>