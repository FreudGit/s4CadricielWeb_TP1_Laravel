@extends('layouts.layout')
@section('title', 'Welcome')
@section('content')

            <p>
                Bienvenu au Blogue
            </p>
            <a href="{{route('etudiant.index')}}" class="btn btn-outline-primary">Afficher les étudiants</a>

@endsection

