@extends('layouts.layout')
@section('title', 'Liste des articles')
@section('content')
<hr>
<div class="row">
    <div class="col-12 pt-2">
        <a href="{{ route('etudiant.index') }}" class="btn btn-outline-primary btn-sm">Retourner</a>
        <h4 class="display-4 mt-5">
            {{ $etudiant->nom }} (ID: {{ $etudiant->id }})
        </h4>
        <hr>
       
        <p class='d-flex flex-column'>
            <div>
                <strong>Date de naissance: </strong> {{ $etudiant->date_de_naissance }}
            </div>
            <div>
                <strong>Adresse: </strong> {{ $etudiant->adresse }}
            </div>
            <div>
                <strong>Ville: </strong> {{ $etudiant->ville}}
            </div>
            <div>
                <strong>Courriel: </strong> {{ $etudiant->email }}
            </div>
            <div>
                <strong>Téléphone: </strong> {{ $etudiant->phone }}
            </div>
        </p>
    </div>
</div>
<hr>
<div class="row mb-5">
    <div class="col-6">
        <a href="{{ route('etudiant.edit', $etudiant->id) }}" class="btn btn-primary">Mettre a
            jour</a>
    </div>
    <div class="col-6">

        <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#deleteModal">
            effacer
        </button>

    </div>
</div>

<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Effacer</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                Voulez-vous vraiment effacer la donnée? {{ $etudiant->nom }}
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <form action="{{ route('etudiant.delete', $etudiant->id) }}" method="post">
                    @method('DELETE')
                    @csrf
                    <input type="submit" class="btn btn-danger" value="Supprimer">

                </form>
            </div>
        </div>
    </div>
</div>
@endsection
