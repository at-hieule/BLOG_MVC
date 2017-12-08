<?php

    namespace App\Controllers;
    use App\Models\Post;

    class HomeController extends Controller
    {
        public function index($page = 1)
        {
            $post = new Post();
            $totalRecords= $post->rowCount();
            $recordPerPage = 2;
            $totalPage = ceil($totalRecords/$recordPerPage);
            $data['totalPage']= $totalPage;
            $offset = ($page-1)*$recordPerPage;
            $posts = $post->checkLimit($offset,2);
            $data['posts'] = $posts;
        	view('home.index',$data);
		    }
    }
    