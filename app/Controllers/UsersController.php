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
      if(($users['username'] == NULL) || ($users['password'] == NULL) 
        || ($users['fullname'] == NULL)){
        $error ="Please fill out all fields";
    }
    else if(strlen($users['username']) < 6){
      $error ="Username must be at least 6 character";  
    }
    else if(strlen($users['password']) < 6){
      $error ="Password must be at least 6 character";
    }
    elseif (is_numeric($users['fullname'])) {
      $error ="Fullname invalid. Fullname must be character";
    }
    else{
      Session::set('username',$users['username']);
      $user->addUser($users);
      header('location:/home/index');
    }  
    if (isset($error)) {
      $data['error'] = $error;
      view('users.register',$data);
    }    
  }
  view('users.register');
}
public function login()
{
  if(isset($_POST['btn_login'])){
    $user = new User();
    $users = array();
    $users['username'] = $_POST['username'];
    $users['password'] = $_POST['password'];
    $users = $user->checkUser($users);
    if($users == 0) {
      $error = "Username or password is incorrect";
      $data['error'] = $error;
      view('users.login',$data);
    }
    else {
      Session::set('username',$users['username']);
      header('location:/home/index');
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
