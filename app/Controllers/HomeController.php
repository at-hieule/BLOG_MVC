<?php

    namespace App\Controllers;
    use App\Models\Post;

    class HomeController extends Controller
    {
        
        public function index()
        {
            $post = new Post();
            $posts['arrPosts'] = $post->getAll();
        	view('home.index',$posts);
		    }
    }