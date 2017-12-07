<?php

    namespace App\Controllers;
    use App\Models\Post;

    class HomeController extends Controller
    {
        public function index($index = 1)
        {
            $post = new Post();
            $totalRecords= $post->rowCount();
            $recordPerPage = 2;
            $totalPage = ceil($totalRecords/$recordPerPage);
            $data['totalPage']= $totalPage;
            $offset = ($index-1)*$recordPerPage;
            $posts = $post->checkLimit($offset,2);
            $data['posts'] = $posts;
        	view('home.index',$data);
		    }
    }
    