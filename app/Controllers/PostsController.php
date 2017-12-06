<?php

    namespace App\Controllers;
    use App\Models\Post;
    use App\Core\Session;

    class PostsController extends Controller
    {
        
        public function index()
        {
            $post = new Post();
            $posts = $post->find($id);
            // echo "thanh cong";
            view('posts.index',$posts);

		}

        public function view($id){
            $post = new Post();
            $data = $post->find($id);
            view('posts.view',$data);
        }

        public function add(){
            Session::start();
            if(Session::get('username') !=NULL){
                if(isset($_POST['add'])){
                    $post = new Post();
                    $data =array();
                    $data['title'] = $_POST['title'];
                    $data['description'] = $_POST['description'];
                    $data['content'] = $_POST['content'];
                    $data['author'] = Session::get('username');
                    date_default_timezone_set('Asia/Ho_Chi_Minh');
                    $data['created_at'] = date('Y-m-d H:i:s');
                    $post->add($data);
                    header('location:/home/index');
            }
            view('posts.add');
            }
            else {
                header('location:/users/login');
            }
        }

    }