@extends('layouts.layout')
@section('title', 'Welcome')
@section('content')
<p>
    Bienvenue à votre liste d'étudiants
</p>
<a href="{{ route('etudiant.index') }}" class="btn btn-outline-primary">Afficher les étudiants</a>
@endsection
