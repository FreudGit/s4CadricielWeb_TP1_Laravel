<?php
namespace App\Http\Controllers;

use App\Models\Etudiant;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class EtudiantController extends Controller
{

    public function index()
    {
        $items = Etudiant::all();
        return view('etudiant.index', ['posts' => $items]);
    }

 /**
     * Display the specified resource.
     *
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function show(BlogPost $blogPost)
    {

        return view('blog.show', ['blogPost' => $blogPost]);
        //return $blogPost;
    }


}
