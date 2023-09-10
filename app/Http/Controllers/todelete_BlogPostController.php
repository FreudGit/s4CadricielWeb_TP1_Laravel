<?php

namespace App\Http\Controllers;

use App\Models\BlogPost;
use Illuminate\Http\Request;

class BlogPostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {



        $posts=BlogPost::all();
        //return $posts;

        return view('blog.index', ['posts' => $posts]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('blog.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //return $request;
        //insert into blogpost (title, body) values (?,?)
        //newdata=select * from blogpost where id=1
        $newPost= BlogPost::create([
            'title' => $request->title,
            'body' => $request->body,
            'user_id' => 1

        ]);
        return redirect(route('blog.index'));       
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\BlogPost  $blogPost
     * @return \Illuminate\Http\Response
     */
    public function show(BlogPost $blogPost)
    {
            return view('blog.show', ['blogPost' => $blogPost]);
            //return $blogPost;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\BlogPost  $blogPost
     * @return \Illuminate\Http\Response
     */
    public function edit(BlogPost $blogPost)
    {
        return view('blog.edit', ['blogPost' => $blogPost]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\BlogPost  $blogPost
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, BlogPost $blogPost)
    {
        //return $request->title;
        $blogPost->update([
            'title' => $request->title,
            'body' => $request->body
        ]);
        return redirect(route('blog.show', $blogPost->id))->withSuccess('Donnée mise à jour');;

        //return view('blog.show', ['blogPost' => $blogPost]);

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\BlogPost  $blogPost
     * @return \Illuminate\Http\Response
     */
    public function destroy(BlogPost $blogPost)
    {
        //return $blogPost;
        $blogPost->delete();
        return redirect(route('blog.index'))->withSuccess('Donnée effacée');
    }



    public function query()
    {

        //meme chose (selectAll)
        $query = BlogPost::all();
        $query = BlogPost::select()->get();

        $query = BlogPost::select()->first();

        $query = BlogPost::select()
            ->orderBy('title', 'desc')
            ->get();

        $query = BlogPost::select('title', 'body')
            //->where('id', 1)
            ->where('id','=',  1)
            //->where('id', '>', 1)
            ->get();


        // Find(1) est identique a where id = 1
        $query = BlogPost::select('title', 'body')
            ->where('id','=',  1)
            ->first();
        $id=$query->id;

        $query = BlogPost::find(1);

        return $query;
    }
}
