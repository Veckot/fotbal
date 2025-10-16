<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');
$routes->get('article/(:num)', 'Home::article/$1');
$routes->get('admin', 'Home::admin');
$routes->get('edit/(:num)', 'Home::edit/$1');
$routes->get('create', 'Home::create');
$routes->get('addnewarticle', 'Home::add');
$routes->get('seasons', 'Home::seasons');

$routes->post('addNew', 'Home::addNew');
$routes->post('uploadImage', 'Home::uploadImage');
$routes->put('update_article', 'Home::update');
$routes->delete('delete_article/(:num)', 'Home::delete/$1');
