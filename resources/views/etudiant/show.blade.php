@extends('layouts.layout')
@section('title', 'Informations sur étudiant')
@section('content')

<div class="row">
    <div class="col-12 text-center pt-2">
        <a href="{{ route('etudiant.index') }}"
            class="btn btn-outline-primary btn-sm float-start">Retour à liste d'étudiants</a>
        <h1 class="display-one">
            Informations sur étudiant
        </h1>
    </div>
</div>
<!--/row-->
<hr>
<div class="row mt-3">
    <div class="col-12">
        <form method="post">
            @method('PUT')
            @csrf
            <div class="card">
                <div class="card-header">
                    <div class="float-start">
                        <h4>Informations sur l'étudiant: {{ $etudiant->nom }}</h4>
                    </div>
                </div>
                <div class="card-body">
                    <p class='d-flex flex-column'>
                        <div>
                            <strong>Nom: </strong> {{ $etudiant->nom }}
                        </div>
                        <div>
                            <strong>Date de naissance: </strong> {{ $etudiant->date_de_naissance }}
                        </div>
                        <div>
                            <strong>Adresse: </strong> {{ $etudiant->adresse }}
                        </div>
                        <div>
                            <strong>Ville: </strong> {{ $etudiant->ville }}
                        </div>
                        <div>
                            <strong>Courriel: </strong> {{ $etudiant->email }}
                        </div>
                        <div>
                            <strong>Téléphone: </strong> {{ $etudiant->phone }}
                        </div>
                    </p>
                </div>
                <div class="card-footer d-flex justify-content-between align-items-center">

                </div>
            </div>
        </form>
    </div>
</div>
@endsection
