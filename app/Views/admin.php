<?= $this->extend('layout/templateMain'); ?>
<?= $this->section("content"); ?>


<div class="mb-3">
    <a href="<?= base_url('addnewarticle') ?>" class="btn btn-primary">
        Add New Article
    </a>
</div>

<?php

$table = new \CodeIgniter\View\Table();
$headers = array('Id', 'Title', 'URL', 'Edit', 'Delete');
$table->setHeading($headers);
$modal = "";
foreach ($article as $article) {
    $idModal = "form_modal" . $article->id;
    $table->addRow(
        esc($article->id),
        esc($article->title),
        esc($article->link),
        '<a href="' . base_url('edit/' . esc($article->id)) . '" class="btn btn-warning btn-sm">Edit</a>',
        '<button class="btn btn-danger btn-sm" data-bs-toggle="modal" data-bs-target="#' . $idModal . '">Delete</button>'
    );
    $modal .= form_modal(
        $idModal,
        esc($article->id),
        "Delete Article",
        "Are you sure you want to delete the article with ID " . esc($article->id) . "?",
        "delete_article/" . $article->id,
        "danger",
        "Delete"
    );
}

$template = array(
    'table_open' => '<table class="table table-hover table-striped table-bordered">',
    'thead_open' => '<thead class="thead-dark">',
    'thead_close' => '</thead>',
    'heading_row_start' => '<tr>',
    'heading_row_end' => '</tr>',
    'heading_cell_start' => '<th scope="col">',
    'heading_cell_end' => '</th>',
    'tbody_open' => '<tbody>',
    'tbody_close' => '</tbody>',
    'row_start' => '<tr>',
    'row_end' => '</tr>',
    'cell_start' => '<td>',
    'cell_end' => '</td>',
    'row_alt_start' => '<tr>',
    'row_alt_end' => '</tr>',
    'cell_alt_start' => '<td>',
    'cell_alt_end' => '</td>',
    'table_close' => '</table>'
);

$table->setTemplate($template);

echo $table->generate();
echo $modal;
?>


<?= $this->endSection(); ?>