@extends('layouts.layout')
@section('title', 'Bienvenue')
@section('content')

<hr>
<div class="row mt-3">
    <div class="col-12">
        <form method="post">
            @method('PUT')
            @csrf
            <div class="card">
                <div class="card-header">
                    <div class="float-start">
                        <h4>Bienvenur sur ce site informatif et collaboratif!</h4>
                    </div>
                </div>
                <div class="card-body">
                    Le mandat de ce site est de créer un site Internet pour recueillir de l'information auprès des
                    étudiants du Collège Maisonneuve, et possiblement à l'avenir, de construire un réseau social pour
                    eux.

                    <p class='mt-3'>Prenez plaisir a parcourir la liste des étudiants. Plus d'options seront disponibles
                        bientôt!</p>
                </div>
                <div class="card-footer ">
                    <div>
                        <a href="{{ route('etudiant.index') }}"
                            class="btn btn-outline-primary float-end">Afficher les étudiants</a>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

@endsection
