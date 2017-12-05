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
        public function about()
        {

            view('home.about');
        }
        public function contact()
        {

            view('home.contact');
        }
        

    }