<?php


namespace App\classes;


class Database
{
    public static function db()
    {
        $link = mysqli_connect('remotemysql.com', 'yqSRoh7Xfq', 'BGo6sEGng0', 'yqSRoh7Xfq');
        return $link;
    }
}
