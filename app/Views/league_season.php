<?= $this->extend('layout/templateMain'); ?>
<?= $this->section("title"); ?>
<title>Přehled</title>
<?= $this->endSection(); ?>

<?= $this->section("content"); ?>

<?php foreach ($league_seasons as $season): ?>
    <div>
        <div>
            <?php
            $id = $season->id;
            $idleague = $season->id_league;
            echo $id." - League ID: ".$idleague;
            ?>
        </div>
    </div>
<?php endforeach; ?>

<?= $this->endSection(); ?>