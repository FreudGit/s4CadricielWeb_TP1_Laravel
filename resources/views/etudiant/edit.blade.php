@extends('layouts.layout')
<blade
    section|(%26%2339%3Btitle%26%2339%3B%2C%20%26%2339%3BMettre%20%C3%A0%20jour%20%26%2339%3B.%20%24etudiant-%3Enom%20) />
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
                        <input type="text" id="nom" name="nom" class="form-control" value="{{ $etudiant->nom }}" required>
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
                        <input type="tel" id="phone" name="phone" class="form-control"
                            value="{{ $etudiant->phone }}" required>
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
