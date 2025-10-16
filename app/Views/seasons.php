<?= $this->extend('layout/templateMain'); ?>
<?= $this->section("title"); ?>
<title>Přehled</title>
<?= $this->endSection(); ?>

<?= $this->section("content"); ?>

<?var_dump($seasons); ?>
        <?php foreach ($seasons as $season): ?>
            <div>
                <div>
                    <?php
                    $start = $season->start;
                    $finish = $season->finish;
                    echo($start . " - " . $finish);
                    echo anchor("article/" . $article[0]->id, $title = $article[0]->title);
                    ?>
                </div>
            </div>
        <?php endforeach; ?>

<?= $this->endSection(); ?>