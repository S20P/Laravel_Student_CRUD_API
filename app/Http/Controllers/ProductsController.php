<?php

namespace App\Http\Controllers;

use App\Product;
use Illuminate\Http\Request;

// use App\Http\Requests;
class ProductsController extends Controller
{

// get all product list----

    public function index(Request $request)
    {
        if ($request->isMethod('get')) {
            return Product::all();
        } else {
            return response()->json("Method not Allow", 405);
        }

    }

//get specific product -------
    public function show(Request $request, $productId)
    {
        if ($request->isMethod('get')) {
            return Product::find($productId);
        } else {
            return response()->json("Method not Allow", 405);
        }
    }

//create new product -------
    public function create(Request $request)
    {
        if ($request->isMethod('post')) {
            $resp = Product::create($request->all());
            return $resp;
        } else {
            return response()->json("Method not Allow", 405);
        }
    }

//update product ------
    public function update(Request $request, $productId)
    {
        if ($request->isMethod('post')) {
            $product = Product::findOrFail($productId);
            $product->update($request->all());
            return $product;
        } else {
            return response()->json("Method not Allow", 405);
        }
    }

//delete product ----------
    public function delete(Request $request, $productId)
    {
        if ($request->isMethod('delete')) {
            $product = Product::findOrFail($productId);
            $product->delete();
            return $product;
        } else {
            return response()->json("Method not Allow", 405);
        }
    }

}
