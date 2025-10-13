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
</style>

<div class="form-container">
    <!-- Title spanning the entire container -->
    <div class="form-title">Edit Article</div>

    <div class="container mt-4">
        <form action="<?= base_url('update_article') ?>" method="post">
            <input type="hidden" name="id_a" value="<?= $article->id ?>" />
            <input type="hidden" name="_method" value="PUT" />
            
            <!-- Link Field -->
            <div class="input-group mt-2">
                <span class="input-group-text">article/<?= $article->id ?>-</span>
                <div class="form-floating">
                    <input
                        class="form-control"
                        type="text"
                        name="link"
                        id="link"
                        placeholder="Enter article link"
                        value="<?= str_replace("article/" . $article->id . "-", "", $article->link) ?>" />
                    <label for="link" class="form-label">Article Link</label>
                </div>
            </div>

            <!-- Title Field -->
            <div class="form-floating mt-2">
                <input class="form-control" type="text" name="title" id="title" required placeholder="Title" value="<?= $article->title ?>">
                <label for="title">Title</label>
            </div>

            <!-- Photo Field -->
            <div class="form-floating mt-2">
                <input class="form-control" type="text" name="photo" id="photo" required placeholder="Photo" value="<?= $article->photo ?>">
                <label for="photo">Photo</label>
            </div>

            <!-- Date Field -->
            <div class="form-floating mt-2">
                <input
                    class="form-control"
                    type="date"
                    name="date"
                    id="date"
                    required
                    placeholder="Date"
                    value="<?= date('Y-m-d', $article->date) ?>">
                <label for="date">Date</label>
            </div>

            <!-- Top Field Switch -->
            <div class="form-check form-switch mt-2">
                <input type="hidden" name="top" value="0">
                <input
                    class="form-check-input"
                    type="checkbox"
                    name="top"
                    id="top"
                    value="1"
                    <?= $article->top == 1 ? 'checked' : '' ?>>
                <label class="form-check-label" for="top">Top Article</label>
            </div>

            <!-- Text Field with CKEditor -->
            <div class="form-floating mt-2">
                <textarea
                    class="form-control"
                    name="text"
                    id="text"
                    required
                    placeholder="Text"
                    style="height: 150px;"><?= $article->text ?></textarea>
            </div>

            <!-- Published Field Switch -->
            <div class="form-check form-switch mt-2">
                <input type="hidden" name="published" value="0">
                <input
                    class="form-check-input"
                    type="checkbox"
                    name="published"
                    id="published"
                    value="1"
                    <?= $article->published == 1 ? 'checked' : '' ?>>
                <label class="form-check-label" for="published">Published</label>
            </div>

            <!-- Submit Button -->
            <div class="row mt-3">
                <div class="col-12 text-end">
                    <button type="submit" class="btn btn-primary">Update Article</button>
                </div>
            </div>
        </form>
    </div>
</div>

<!-- Include CKEditor 5 Script -->
<script src="https://cdn.ckeditor.com/ckeditor5/39.0.1/classic/ckeditor.js"></script>
<script>
    // Initialize CKEditor 5 for the 'text' field
    ClassicEditor
        .create(document.querySelector('#text'), {
            toolbar: [
                'heading', '|',
                'bold', 'italic', 'underline', 'strikethrough', '|',
                'bulletedList', 'numberedList', '|',
                'link', 'blockQuote', '|',
                'insertTable', 'imageUpload', '|',
                'undo', 'redo', '|',
                'sourceEditing'
            ],
            table: {
                contentToolbar: ['tableColumn', 'tableRow', 'mergeTableCells']
            },
            image: {
                toolbar: ['imageTextAlternative', 'imageStyle:full', 'imageStyle:side']
            },
        })
        .catch(error => {
            console.error(error);
        });
</script>

<?= $this->endSection(); ?>