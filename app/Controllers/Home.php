<?php

namespace App\Controllers;

use App\Models\Article;
use App\Models\Team;
use App\Models\League;
use App\Models\Season;
use App\Models\League_Season;
use CodeIgniter\HTTP\ResponseInterface;

class Home extends BaseController
{
    var $article;
    var $team;
    var $league;
    var $season;   
    var $league_season;

    public function __construct()
    {
        $this->article = new Article();
        $this->team = new Team();
        $this->league = new League();
        $this->season = new Season();
        $this->league_season = new League_Season();
    }

    public function index(): string
    {
        $data['article'] = $this->article
            ->where('top', 1)
            ->where('published', 1)
            ->orderBy('date', 'DESC')
            ->findAll(5);

        return view('main', $data);
    }

    public function seasons()
    {
        $data['seasons'] = $this->season
            ->orderBy('start', 'DESC')
            ->findAll();

        return view('seasons', $data);
    }

    public function article($idArticle)
    {
        $data['article'] = $this->article
            ->where('top', 1)
            ->where('published', 1)
            ->where('id', $idArticle)
            ->orderBy('date', 'DESC')
            ->findAll(1);

        return view('article', $data);
    }

    public function admin()
    {
        $data['article'] = $this->article
            ->orderBy('id', 'ASC')
            ->findAll();

        return view('admin', $data);
    }
    public function edit($idArticle)
    {
        $data["article"] = $this->article->find($idArticle);

        echo view('edit', $data);
    }
    public function delete($id): ResponseInterface
    {
        $this->article->delete($id);
        return redirect()->route('admin');
    }

    public function update()
    {
        // Log incoming request for debugging
        log_message('debug', 'Home::update called - POST: ' . json_encode($this->request->getPost()));
        log_message('debug', 'Home::update raw body: ' . $this->request->getBody());

        $id = $this->request->getPost('id_a');
        $link = $this->request->getPost('link');
        $title = $this->request->getPost('title');
        $photo = $this->request->getPost('photo');
    $date = $this->request->getPost('date');
        $top = $this->request->getPost('top');
        $text = $this->request->getPost('text');
        $published = $this->request->getPost('published');

        // Convert date to Unix timestamp (int) if possible
        $timestampDate = null;
        if (!empty($date)) {
            // strtotime will parse Y-m-d correctly
            $ts = strtotime($date);
            $timestampDate = $ts !== false ? (int) $ts : null;
        }

        // Prepare the data array
        $data = array(
            'id' => $id,
            'link' => "article/" . $id . "-" . $link,
            'title' => $title,
            'photo' => $photo,
            'date' => $timestampDate,
            'top' => $top,
            'text' => $text,
            'published' => $published,
        );

        // Save the data to the database
        $this->article->save($data);
        return redirect()->route('admin');
    }

    public function add()
    {
        return view('add');
    }

    public function addNew()
    {
        // Log incoming request for debugging
        log_message('debug', 'Home::addNew called - POST: ' . json_encode($this->request->getPost()));
        log_message('debug', 'Home::addNew raw body: ' . $this->request->getBody());

        $id = $this->request->getPost('id_a');
        $link = $this->request->getPost('link');
        $title = $this->request->getPost('title');
        $photo = $this->request->getPost('photo');
        $date = $this->request->getPost('date');
        $top = $this->request->getPost('top');
        $text = $this->request->getPost('text');
        $published = $this->request->getPost('published');

        // Convert date to Unix timestamp (int) if possible
        $timestampDate = null;
        if (!empty($date)) {
            $ts = strtotime($date);
            $timestampDate = $ts !== false ? (int) $ts : null;
        }

        // Prepare the data array
        $data = array(
            'id' => $id,
            'link' => "article/" . $id . "-" . $link,
            'title' => $title,
            'photo' => $photo,
            'date' => $timestampDate,
            'top' => $top,
            'text' => $text,
            'published' => $published,
        );

        // Save the data to the database
        $this->article->insert($data);
        return redirect()->route('admin');
    }

    /**
     * Handle CKEditor image uploads (Simple upload adapter)
     */
    public function uploadImage()
    {
        $file = $this->request->getFile('upload');
        if (!$file || !$file->isValid()) {
            return $this->response->setStatusCode(400)->setJSON(['error' => ['message' => 'No file uploaded']]);
        }

        // Validate mime type and size (max 5MB)
        $allowed = ['image/jpeg', 'image/png', 'image/gif', 'image/webp'];
        $mime = $file->getMimeType();
        $maxSize = 5 * 1024 * 1024;
        if (!in_array($mime, $allowed)) {
            return $this->response->setStatusCode(400)->setJSON(['error' => ['message' => 'Invalid file type']]);
        }
        if ($file->getSize() > $maxSize) {
            return $this->response->setStatusCode(400)->setJSON(['error' => ['message' => 'File too large']]);
        }

        // Ensure public images/uploads directory exists
        $targetDir = FCPATH . 'images/uploads/';
        if (!is_dir($targetDir)) {
            mkdir($targetDir, 0755, true);
        }

        // Move the file and generate a public URL
        $newName = $file->getRandomName();
        try {
            $file->move($targetDir, $newName);
        } catch (\Exception $e) {
            return $this->response->setStatusCode(500)->setJSON(['error' => ['message' => 'Failed to save file']]);
        }
        $url = base_url('images/uploads/' . $newName);

        // CKEditor expects { "url": "..." }
        return $this->response->setJSON(['url' => $url]);
    }
}
