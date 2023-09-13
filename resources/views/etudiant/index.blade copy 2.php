@extends('layouts.layout')
@section('title', 'Liste des articles')
@section('content')

<hr>
<div class="row">
    <div class="col-md-8">
        <p>Bonne lecture</p>
    </div>
    <div class="col-md-4">

    </div>
</div>

<div class="container">
    <div class="card">
        <div class="card-body  text-left">
            <h5 class="card-title">Card title</h5>
            <p class="card-text text-left">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
        </div>
        <div class="card-footer d-flex justify-content-between align-items-center">
            <div>
                <small class="text-body-secondary">Last updated 3 mins ago</small>
            </div>
            <div>
                <button type="button" class="btn btn-primary btn-sm">Infos</button>
                <button type="button" class="btn btn-outline-secondary btn-sm">Éditer</button>
            </div>
        </div>
    </div>
</div>


<div class="row mt-3">
    <div class="col-12">
        <div class="card">
            <div class="card-header">
                <h4>Liste des étudiants</h4>
            </div>
            <div class="card-body">

                <ul>
                    @forelse($posts as $post)
                        <li><a
                                hrsef="{-{ route('blog.show', $post->id) }-}">{{ $post->nom }}</a>
                        </li>
                    @empty
                        <li class='text-danger'>Aucun article disponible</li>
                    @endforelse
                </ul>
            </div>
        </div>

        
    </div>
</div>
@endsection
