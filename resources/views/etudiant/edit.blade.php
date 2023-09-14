@extends('layouts.layout')
@section('title', 'Éditer un étudiant')
@section('content')

<div class="row">
    <div class="col-12 text-center pt-2">
        <a href="{{ route('etudiant.index') }}"
            class="btn btn-outline-primary btn-sm float-start">Retour à liste d'étudiants</a>
        <h1 class="display-one">
            Éditer un étudiant
        </h1>
    </div>

</div>

<hr>
<div class="row mt-3">
    <div class="col-12">
        <form method="post">
            @method('PUT')
            @csrf
            <div class="card">

                <div class="card-header">
                    <div class="float-start">
                        <h4>Informations sur l'étudiant</h4>
                    </div>
                    <div class="float-end">
                        <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                            data-bs-target="#deleteModal">
                            effacer
                        </button>
                    </div>

                </div>
                <div class="card-body">
                    <div class="control-grup col-12">
                        <label for="nom">Nom</label>
                        <input type="text" id="nom" name="nom" class="form-control" value="{{ $etudiant->nom }}"
                            required>
                    </div>

                    <div class="control-grup col-12">
                        <label for="date_de_naissance">Date de naissance</label>
                        <input type="date" id="date_de_naissance" name="date_de_naissance" class="form-control"
                            value="{{ $etudiant->date_de_naissance }}" required>
                    </div>


                    <div class="control-grup col-12">
                        <label for="adresse">Adresse</label>
                        <input type="text" id="adresse" name="adresse" class="form-control"
                            value="{{ $etudiant->adresse }}" required>
                    </div>

                    <div class="control-grup col-12">
                        <label for="ville_id">Ville</label>
                        <select name="ville_id" id="ville_id" class="form-control" required>
                            <option value="">Choisir une ville</option>
                            @forelse($villes as $ville)
                                //selected if = ville_id
                                <option value="{{ $ville->id }}" @if($ville->id == $etudiant->ville_id) selected
                            @endif>{{ $ville->nom }} </option>
                        @empty
                            <option value="">Aucune ville disponible</option>
                            @endforelse
                        </select>
                    </div>

                    <div class="control-grup col-12">
                        <label for="email">Courriel</label>
                        <input type="email" id="email" name="email" class="form-control"
                            value="{{ $etudiant->email }}" required>
                    </div>

                    <div class="control-grup col-12">
                        <label for="phone">Telephone</label>
                        <input type="tel" id="phone" name="phone" class="form-control" value="{{ $etudiant->phone }}"
                            required>
                    </div>

                </div>
                <div class="card-footer d-flex justify-content-between align-items-center">
                    <div>
                        <small class="text-body-secondary">Dernière mise-à-jour: {{ $etudiant->updated_at }}</small>
                    </div>
                    <div>
                        <input type="submit" class="btn btn-success" value='Sauvegarder'>
                    </div>
                </div>

            </div>
        </form>

    </div>
</div>


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
