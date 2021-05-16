<?php
use Slim\Views\Twig;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;

// Define named route
$app->get('/', function ($request, $response, $args) {
    $view = Twig::fromRequest($request);
    return $view->render($response, 'pages/login.twig.html');
});


$app->get('/login', function(Request $request, Response $response, $args) {
$view = Twig::fromRequest($request);
    return $view->render($response, 'pages/login.twig.html', ['message' => '']);
})->setName('login');

$app->post('/login', function(Request $request, Response $response, $args) {
    try {
        //retrieve login and password from request
$body = $request->getParsedBody();
 $login = $body['login'];
        $pass = $body['pass'];
        //find user by login
$conn = new mysqli('localhost', 'admin', 'test1234', 'online_supermarket');

$user = $conn->query("SELECT * FROM account WHERE login = '$login'")->fetch_array(MYSQLI_ASSOC);


        
        if ($user) {
            //verify if hash from database matches hash of provided password
            if (password_verify($pass, $user["password"])) {
              return $response->withHeader('Location', '/home');

            }

        }
        //do not reveal if account exists or not
        $tplVars['message'] = "User verification failed.";
echo"User verification failed.";
 return $response->withStatus(302);

    } catch (PDOException $e) {
        $tplVars['message'] = $e->getMessage();
    }
})->setName('do-login');


$app->get('/home', function ($request, $response, $args) {
    $view = Twig::fromRequest($request);
    return $view->render($response, 'pages/home.twig.html');
});
$app->get('/shop', function ($request, $response, $args) {
    $conn = mysqli_connect('localhost', 'admin', 'test1234', 'online_supermarket');
$sql = "SELECT * FROM products";
$products = $conn->query($sql);
    $view = Twig::fromRequest($request);
    return $view->render($response, 'pages/shop.twig.html',[
    "products"=>$products
]);
});

$app->get('/about', function ($request, $response, $args) {
    $view = Twig::fromRequest($request);
    return $view->render($response, 'pages/about.twig.html');
});

$app->get('/Basket', function ($request, $response, $args) {
    $conn = mysqli_connect('localhost', 'admin', 'test1234', 'online_supermarket');
$sql = "SELECT * FROM products";
$products = $conn->query($sql);
    $view = Twig::fromRequest($request);
    return $view->render($response, 'pages/Basket.twig.html',[
    "products"=>$products
]);
});

//register page route
$app->get('/register', function(Request $request, Response $response, $args) {
$view = Twig::fromRequest($request);
    return $view->render($response, 'pages/register.twig.html', [
        'message' => '',
        'form' => [
            'login' => ''
        ]
    ]);
})->setName('register');

//registration process
$app->post('/register', function(Request $request, Response $response, $args) {
    $tplVars = [
        'message' => '',
        'form' => [
            'login' => ''
        ]
    ];
    $input = $request->getParsedBody();
    if(!empty($input['login'] && !empty($input['pass1']) && !empty($input['pass2']))) {
        if($input['pass1'] == $input['pass2']) {
            try {
                //prepare hash
                $pass = password_hash($input['pass1'], PASSWORD_DEFAULT);
                //insert data into database
  $conn = new mysqli('localhost', 'admin', 'test1234', 'online_supermarket');
$user = $input['login'];
$stmt =$conn->query("INSERT INTO account (login, password) VALUES ('$user', '$pass')");
                //redirect to login page
$view = Twig::fromRequest($request);
                return $response->withHeader('Location', '/login');
            } catch (PDOException $e) {
                $this->logger->error($e->getMessage());
                $tplVars['message'] = 'Database error.';
                $tplVars['form'] = $input;
            }
        } else {
            $tplVars['message'] = 'Provided passwords do not match.';
            $tplVars['form'] = $input;
        }
    }
$view = Twig::fromRequest($request);
    return $view->render($response, 'pages/register.twig.html', $tplVars);
})->setName('do-register');




// $app->get('/login', function ($request, $response, $args) {
//     $view = Twig::fromRequest($request);
//     return $view->render($response, 'pages/login.twig.html');
// });


// $app->get('/product/{id}', function (Request $request, Response $response, array $args) {
//  $id = $args['id'];
//   $conn = mysqli_connect('localhost', 'admin', 'test1234', 'online_supermarket');

//     $sql = "SELECT * FROM products WHERE id='$id'";
//     $results = $conn->query($sql);

//     $rows = array();
//     while($r = mysqli_fetch_assoc($results)) {
//         $rows[] = $r;
//     }


// $payload = json_encode($rows);

// $response->getBody()->write($payload);
//     return $response->withHeader('Content-Type', 'application/json');
// });


?>