<?php
require_once './vendor/autoload.php';

// echo "oy";
// //connect to database
// $conn = mysqli_connect('localhost', 'admin', 'test1234', 'online_supermarket');

// //check connection 
// if(!$conn){
// echo 'Connection error: ' . mysqli_info_connect_error();
// }

// $app = new \Slim\App();
// require('./routes.php');
use Slim\Factory\AppFactory;
use Slim\Views\Twig;
use Slim\Views\TwigMiddleware;
use Slim\Exception\NotFoundException;
// require __DIR__ . './vendor/autoload.php';

// Create App
$app = AppFactory::create();

// Create Twig
$twig = Twig::create('./templates',);

// Add Twig-View Middleware
$app->add(TwigMiddleware::create($app, $twig));

require("routes.php");



// Run app
$app->run();