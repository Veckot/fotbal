<nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm">
    <div class="container">
        <!-- Brand Name -->
        <a class="navbar-brand fw-bold text-primary" href="<?= base_url() ?>">
            <h1 class="m-0">SIGMA OLOMOUC</h1>
        </a>

        <!-- Navbar Toggler (for Mobile View) -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Navbar Items -->
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <?= anchor("admin", "Admin Panel", ['class' => 'nav-link text-primary fw-bold px-3 py-2 rounded hover-effect']); ?>
                </li>
                <li class="nav-item">
                    <?= anchor("tabs", "Tabs", ['class' => 'nav-link text-primary fw-bold px-3 py-2 rounded hover-effect']); ?>
                </li>
            </ul>
        </div>
    </div>
</nav>

<style>
    .navbar {
        font-family: 'Arial', sans-serif;
        font-size: 1rem;
    }

    .navbar-brand h1 {
        font-size: 1.5rem;
        letter-spacing: 1px;
    }

    .navbar-nav .nav-item .nav-link {
        transition: background-color 0.3s ease, color 0.3s ease;
    }

    .navbar-nav .nav-item .nav-link:hover {
        background-color: #f0f0f0;
        color: #007bff;
    }

    .hover-effect {
        transition: all 0.3s ease;
    }

    .hover-effect:hover {
        background-color: #007bff;
        color: #fff !important;
    }
</style>