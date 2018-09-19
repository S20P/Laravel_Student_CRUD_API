<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
 */

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

// Route::get("products", function () {
//     return response(Product::all(), 200);
// });

// Route::get("products/{product}", function ($productID) {
//     return response(Product::find($productID), 200);
// });

// Route::post('products',function(Request $request){
//     $resp = Product::create($request::all());
//     return $resp;
// });

// Route::put('products/{product}',function(Request $request,$productID){
//    $product= Product::findOrFail($productID);
//    $product->update($request::all());
//    return $product;
// });

// Route::delete('product/{product}',function($productID){
//     Product::find($productID)->delete();
//     return  204;
// });

Route::get("products", 'ProductsController@index'); //---get all product API
Route::get("products/{productId}", 'ProductsController@show'); //---get specific product API
Route::post("products", 'ProductsController@create'); //---create new product API
Route::post("products/{productId}", 'ProductsController@update'); //---update  product API
Route::delete("products/{productId}", 'ProductsController@delete'); //---delete product API

// usefull link =>https://code.tutsplus.com/tutorials/build-a-react-app-with-laravel-restful-backend-part-1-laravel-5-api--cms-29442

Route::get("student", "StudentController@index");
Route::get("student/{id}", "StudentController@show");
Route::post("student/create", "StudentController@create");
Route::post("student/edit/{id}", "StudentController@update");
Route::delete("student/delete/{id}", "StudentController@delete");
