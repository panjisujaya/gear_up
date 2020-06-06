<?php 

$connect = new mysqli("localhost","root","","gear_up");

if ($connect) {
    // echo "Connection Success";
} else {
    echo "Connection Failed";
    exit();
}