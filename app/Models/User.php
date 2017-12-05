<?php

namespace App\Models;

class User extends Model
{
    protected $table = 'users';

    public function getAll()
    {
    	$sql = "SELECT * FROM {$this->table}";
            $stmt = static::$db->prepare($sql);
            $stmt->execute();

            return $stmt->fetchAll();
    }
    public function addUser($users){
   			$sql = "INSERT INTO users(username, password, fullname) VALUES (:username,:password,:fullname)";
    	$stmt = static::$db->prepare($sql);
		$users = array(
			'username' => $users['username'],
			'password' => $users['password'],
			'fullname' => $users['content'],
		);
		$stmt->execute($users);       
   }
   public function checkUser($users){
   		$sql = "SELECT * FROM users WHERE username = '{$users['username']}' AND password = '{$users['password']}'";
    	$stmt = static::$db->prepare($sql);
		$stmt->execute();
		return $stmt->fetch();
   }


}

