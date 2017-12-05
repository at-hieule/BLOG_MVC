<?php

namespace App\Models;

class Post extends Model
{
    protected $table = 'posts';

   public function add($data){
      $sql = "INSERT INTO posts(title, description, content,author, created_at) VALUES (:title,:description,:content,:author,:created_at)";
      $stmt = static::$db->prepare($sql);
      $data = array(
      'title' => $data['title'],
      'description' => $data['description'],
      'content' => $data['content'],
      'author' => $data['author'],
      'created_at' => $data['created_at'],
    );
    $stmt->execute($data);
   }
   public function getAll()
    {
    	$sql = "SELECT * FROM {$this->table}";
            $stmt = static::$db->prepare($sql);
            $stmt->execute();

            return $stmt->fetchAll();
    }


}

