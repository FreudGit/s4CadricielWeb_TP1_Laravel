@extends('layouts.layout')
@section('title', 'Ajout étudiant')
@section('content')
<div class="row">


    <div class="col-12 text-center pt-2">
    <a href="{{ route('etudiant.index') }}"
            class="btn btn-outline-primary btn-sm float-start">Retour à liste d'étudiants</a>
        <h1 class="display-one">
            Ajouter un étudiant
        </h1>
    </div>
    <!--/col-12-->
</div>
<!--/row-->
<hr>
<div class="row mt-3">
    <div class="col-12">
        <form method="post">

            @csrf
            <div class="card">

                <div class="card-header">
                    <div class="float-start">
                        <h4>Informations sur l'étudiant</h4>
                    </div>


                </div>
                <div class="card-body">
                    <div class="control-grup col-12">
                        <label for="nom">Nom</label>
                        <input type="text" id="nom" name="nom" class="form-control" value="" required>
                    </div>

                    <div class="control-grup col-12">
                        <label for="date_de_naissance">Date de naissance</label>
                        <input type="date" id="date_de_naissance" name="date_de_naissance" class="form-control" value=""
                            required>
                    </div>


                    <div class="control-grup col-12">
                        <label for="adresse">Adresse</label>
                        <input type="text" id="adresse" name="adresse" class="form-control" value="" required>
                    </div>

                    <div class="control-grup col-12">
                        <label for="ville_id">Ville</label>
                        <select name="ville_id" id="ville_id" class="form-control" required>
                            <option value="">Choisir une ville</option>
                            @forelse($villes as $ville)
                                //selected if = ville_id
                                <option value="{{ $ville->id }}">{{ $ville->nom }} </option>
                            @empty
                                <option value="">Aucune ville disponible</option>
                            @endforelse
                        </select>


                    </div>

                    <div class="control-grup col-12">
                        <label for="email">Courriel</label>
                        <input type="email" id="email" name="email" class="form-control" value="" required>
                    </div>

                    <div class="control-grup col-12">
                        <label for="phone">Telephone</label>
                        <input type="tel" id="phone" name="phone" class="form-control" value="" required>
                    </div>

                </div>
                <div class="card-footer d-flex justify-content-between align-items-center">
                    <div>

                    </div>
                    <div>
                        <input type="submit" class="btn btn-success" value='Sauvegarder'>
                    </div>
                </div>

            </div>
        </form>

    </div>
</div>



@endsection
