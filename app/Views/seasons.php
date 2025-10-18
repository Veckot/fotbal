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
                    echo anchor("season/" . $season->id, $title = $start." - ".$finish);
                    ?>
                </div>
            </div>
        <?php endforeach; ?>

<?= $this->endSection(); ?>