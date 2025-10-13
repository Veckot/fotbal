<?= $this->extend('layout/templateMain'); ?>
<?= $this->section("title"); ?>
<title><?= esc($article[0]->title) ?></title>
<?= $this->endSection(); ?>

<?= $this->section("content"); ?>

<div class="container my-4">
    <!-- Introductory Photo with Title and Date -->
    <div class="article-header position-relative">
        <div class="article-image" style="background-image: url('<?= base_url('images/sigma/' . esc($article[0]->photo)) ?>');"></div>
        <div class="article-overlay d-flex flex-column justify-content-end">
            <h1 class="article-title"><?= esc($article[0]->title) ?></h1>
            <p class="article-date">
                <?php
                $date = strtotime($article[0]->date);
                $formattedDate = $date ? date('j.n.Y', $date) : '';
                echo $formattedDate;
                ?>
            </p>
        </div>
    </div>

    <!-- Article Content -->
    <div class="article-content mt-4">
        <?= $article[0]->text ?>
    </div>
</div>

<style>
    .article-header {
        height: 400px;
        position: relative;
        overflow: hidden;
        border-radius: 10px;
    }

    .article-image {
        height: 100%;
        width: 100%;
        background-size: cover;
        background-position: center;
    }

    .article-overlay {
        position: absolute;
        bottom: 0;
        left: 0;
        right: 0;
        padding: 20px;
        background: linear-gradient(to top, rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.3));
        color: white;
    }

    .article-title {
        font-size: 2rem;
        font-weight: bold;
        margin: 0;
    }

    .article-date {
        font-size: 1rem;
        margin: 0;
    }

    .article-content {
        font-size: 1rem;
        line-height: 1.6;
    }
</style>

<?= $this->endSection(); ?>