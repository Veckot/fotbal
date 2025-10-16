<?= $this->extend('layout/templateMain'); ?>
<?= $this->section("title"); ?>
<title>Přehled</title>
<?= $this->endSection(); ?>

<?= $this->section("content"); ?>

<style>
.news-grid {
    display: grid;
    grid-template-columns: 2fr 1fr 1fr;
    grid-template-rows: 1fr 1fr;
    gap: 1rem;
    height: 50vh;
    max-width: 75rem;
    margin: 0 auto;
    padding: 1.25rem;
}

.news-card {
    position: relative;
    overflow: hidden;
    border-radius: 0.75rem;
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    cursor: pointer;
    transition: transform 0.3s ease;
}

.news-card:hover {
    transform: scale(1.02);
}

.news-card-large {
    grid-row: span 2;
}

.news-overlay {
    position: absolute;
    bottom: 0;
    left: 0;
    right: 0;
    background: linear-gradient(transparent, rgba(0,0,0,0.8));
    color: white;
    padding: 1.25rem;
    min-height: 5rem;
    display: flex;
    flex-direction: column;
    justify-content: flex-end;
}

.news-overlay-small {
    padding: 0.9375rem;
    min-height: 3.75rem;
}

.news-title {
    font-weight: bold;
    margin-bottom: 0.3125rem;
    line-height: 1.2;
    text-shadow: 1px 1px 2px rgba(0,0,0,0.7);
}

.news-title a {
    color: white !important;
    text-decoration: none !important;
}

.news-title a:hover {
    color: white !important;
    text-decoration: none !important;
}

.news-title-large {
    font-size: 1.4rem;
}

.news-title-small {
    font-size: 0.9rem;
}

.news-date {
    font-size: 0.8rem;
    opacity: 0.9;
    margin: 0;
}

.news-container {
    background-color: #f0f0f0;
    min-height: 100vh;
    padding: 1.25rem 0;
}

/* Tablet styles */
@media (max-width: 62rem) {
    .news-grid {
        grid-template-columns: 1fr;
        grid-template-rows: auto;
        height: auto;
        gap: 1rem;
        padding: 1rem;
    }
    
    .news-card-large {
        grid-row: span 1;
        height: 30vh;
    }
    
    .news-card {
        height: 20vh;
    }
    
    .news-title-large {
        font-size: 1.2rem;
    }
    
    .news-title-small {
        font-size: 0.85rem;
    }
}

/* Mobile styles */
@media (max-width: 48rem) {
    .news-grid {
        padding: 0.625rem;
        gap: 0.625rem;
    }
    
    .news-card-large {
        height: 25vh;
    }
    
    .news-card {
        height: 18vh;
    }
    
    .news-overlay {
        padding: 1rem;
        min-height: 4rem;
    }
    
    .news-overlay-small {
        padding: 0.75rem;
        min-height: 3rem;
    }
    
    .news-title-large {
        font-size: 1.1rem;
    }
    
    .news-title-small {
        font-size: 0.8rem;
    }
    
    .news-date {
        font-size: 0.7rem;
    }
}

/* Small mobile styles */
@media (max-width: 30rem) {
    .news-container {
        padding: 0.625rem 0;
    }
    
    .news-grid {
        padding: 0.3125rem;
        gap: 0.5rem;
    }
    
    .news-card-large {
        height: 22vh;
    }
    
    .news-card {
        height: 16vh;
    }
    
    .news-overlay {
        padding: 0.75rem;
        min-height: 3.5rem;
    }
    
    .news-overlay-small {
        padding: 0.625rem;
        min-height: 2.5rem;
    }
    
    .news-title-large {
        font-size: 1rem;
    }
    
    .news-title-small {
        font-size: 0.75rem;
    }
    
    .news-date {
        font-size: 0.65rem;
    }
}
</style>
<?var_dump($seasons); ?>
<div class="news-container">
    <div class="news-grid">
        <?php foreach ($seasons as $season): ?>
            <div class="news-card">
                <div class="news-overlay">
                    <?php
                    // Normalize and format start/finish values. They may be stored as ints (timestamps) or strings.
                    $start = $season->start;
                    $finish = $season->finish;
                    echo($start . " - " . $finish);
                    ?>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
</div>

<?= $this->endSection(); ?>