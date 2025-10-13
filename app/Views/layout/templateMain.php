<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?= $this->include("layout/css"); ?>
    <?= $this->include("layout/nav"); ?>
    <title>Cyklofasismus</title>
    <style>
        header {
            padding: 15px;
            background-color: #f8f9fa;
            border-bottom: 1px solid #ddd;
            text-align: center;
        }

        .header a {
            font-size: 1.5rem;
            font-weight: bold;
            text-decoration: none;
            color: black;
            padding: 10px 20px;
            border: 2px solid black;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
        }

        .content {
            padding: 20px;
        }

        footer {
            text-align: center;
            padding: 10px;
            background-color: #f8f9fa;
            border-top: 1px solid #ddd;
            font-size: 0.9rem;
            color: #666;
        }

        .fa-person-biking {
            font-size: 2.5rem;
            vertical-align: middle;
            margin: 0 10px;
        }
    </style>
</head>

<body>

    <main class="content">
        <?= $this->renderSection("content"); ?>
    </main>

    <footer>
        &copy; <?= date("Y"); ?> NIGGA BALLZ INC. All rights reserved.
        <i class="fa-sharp fa-solid fa-person-biking"></i>
    </footer>

    <?= $this->include("layout/js"); ?>
</body>
</html>