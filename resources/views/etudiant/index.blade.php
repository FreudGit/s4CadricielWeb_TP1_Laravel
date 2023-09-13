@extends('layouts.layout')
@section('title', 'Liste des articles')
@section('content')

<hr>
<!-- <div class="row ">
    <div class="col-md-8">
        <p>Bonne lecture</p>
    </div>
    <div class="col-md-4 text-center">
        <a hrwef="{ww{ route('blog.create') }}" class='btn btn-primary'>Ajouter</a>
    </div>
</div> -->



<div class="row mt-3">
    <div class="col-12">
        <div class="card">
        <div class="card-header">
        <div class="float-start">
        <h4>Liste des étudiants</h4>
  </div>
  <div class="float-end">
  <a href="{e{ route('blog.create') }}" class="btn btn-dark ml-auto">Ajouter</a>
  </div>
               
            </div>
            <div class="card-body">

                <ul>
                    @forelse($posts as $post)

                        <div class="card mb-2">
                            <div class="card-body  text-left">
                                <h5 class="card-title">{{ $post->nom }}</h5>
                                <p class="card-text text-left">Ville</p>
                            </div>
                            <div class="card-footer d-flex justify-content-between align-items-center">
                                <div>
                                    <small class="text-body-secondary">Last updated 3 mins ago</small>
                                </div>
                                <div>
                                <a href="{{ route('etudiant.show', $post->id) }}" class="btn btn-primary btn-sm">Infos</a>
                <a href="{{ route('etudiant.show', $post->id) }}" class="btn btn-outline-secondary btn-sm">Éditer</a>
           
                                </div>
                            </div>
                        </div>

                    @empty
                        <li class='text-danger'>Aucun article disponible</li>
                    @endforelse
                </ul>
            </div>
        </div>


    </div>
</div>
@endsection
