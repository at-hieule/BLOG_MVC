<?php

    namespace App\Controllers;
    use App\Core\Session;

    use App\Models\User;

    class UsersController extends Controller
    {
        public function register()
        {
            if(isset($_POST['btn_register'])){
                $user = new User();
                $users = array();
                $users['username'] = $_POST['username'];
                $users['password'] = $_POST['password'];
                $users['fullname'] = $_POST['fullname'];
                $user->addUser($users);
                header('location:/home/index');
            }

            $user = new User();

            view('users.register');
        }
        public function login()
        {
            if(isset($_POST['btn_login'])){
                $user = new User();
                $users = array();
                $users['username'] = $_POST['username'];
                $users['password'] = $_POST['password'];
                $user->checkUser($users);
                if($user->checkUser($users)){

                    Session::set('username',$users['username']);
                    header('location:/home/index');
                }
                else {

                header('location:/users/register');
                    }
            }

            view('users.login');
        }
        public function logout()
        {
            Session::start();
            Session::destroy();
            header('location:/home/index');
        }
        
        
    }