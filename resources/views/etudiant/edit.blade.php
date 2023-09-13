@extends('layouts.layout')
@section('title', 'Mettre a jour')
@section('content')

<div class="row">
    <div class="col-12 text-center pt-2">
        <h1 class="display-one">
            Mettre a jour
        </h1>
    </div>
    <!--/col-12-->
</div>
<!--/row-->
<hr>
<div class="row justify-content-center">
    <div class="col-md-6">
        <div class="card">
            <form method="post">
                @method('PUT')
                @csrf
                <div class="card-header">
                    Formulaire
                </div>
                <div class="card-body">

                    <div class="control-grup col-12">
                        <label for="nom">Nom</label>
                        <input type="text" id="nom" name="nom" class="form-control" value="{{ $etudiant->nom }}">
                    </div>

                    <div class="control-grup col-12">
                        <label for="adresse">Date de naissance</label>
                        <input type="text" id="adresse" name="date_de_naissance" class="form-control"
                            value="{{ $etudiant->date_de_naissance }}">
                    </div>


                    <div class="control-grup col-12">
                        <label for="adresse">Adresse</label>
                        <input type="text" id="adresse" name="adresse" class="form-control"
                            value="{{ $etudiant->adresse }}">
                    </div>

                    <div class="control-grup col-12">
                        <label for="ville_id">Ville</label>
                        <input type="text" id="ville_id" name="ville_id" class="form-control"
                            value="{{ $etudiant->ville_id }}">
                    </div>

                    <div class="control-grup col-12">
                        <label for="email">Courriel</label>
                        <input type="text" id="email" name="email" class="form-control"
                            value="{{ $etudiant->email }}">
                    </div>

                    <div class="control-grup col-12">
                        <label for="phone">Telephone</label>
                        <input type="text" id="phone" name="phone" class="form-control"
                            value="{{ $etudiant->phone }}">
                    </div>

                </div>
                <div class="card-footer">
                    <input type="submit" class="btn btn-success">
                </div>
            </form>
        </div>
    </div>
</div>

@endsection
