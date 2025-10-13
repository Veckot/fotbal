<?php

namespace App\Controllers;

use App\Models\Article;
use App\Models\Team;
use CodeIgniter\HTTP\ResponseInterface;

class Home extends BaseController
{
    var $article;
    var $team;

    public function __construct()
    {
        $this->article = new Article();
        $this->team = new Team();
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
    public function delete($id) : ResponseInterface {
        $this->article->delete($id);
        return redirect()->route('admin');
    }

    public function update()
    {
        $id = $this->request->getPost('id_a');
        $link = $this->request->getPost('link');
        $title = $this->request->getPost('title');
        $photo = $this->request->getPost('photo');
        $date = $this->request->getPost('date');
        $top = $this->request->getPost('top');
        $text = $this->request->getPost('text');
        $published = $this->request->getPost('published');

        // Prepare the data array
        $data = array(
            'id' => $id,
            'link' => "article/".$id."-".$link,
            'title' => $title,
            'photo' => $photo,
            'date' => $date,
            'top' => $top,
            'text' => $text,
            'published' => $published,
        );

        // Save the data to the database
       $this->article->save($data);
        return redirect()->route('admin');
    }
}
