<?php

namespace App\Http\Controllers;

use App\Models\Etudiant;
use Illuminate\Http\Request;

class EtudiantController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $items = Etudiant::all();
        return view('etudiant.index', ['posts' => $items]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Etudiant $etudiant)
    {
        return view('etudiant.show', ['etudiant' => $etudiant]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Etudiant $etudiant)
    {
        return view('etudiant.edit', ['etudiant' => $etudiant]);

    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Etudiant $etudiant)
    {
        $etudiant->update([
            'nom' => $request->nom,
            'date_de_naissance' => $request->date_de_naissance,
            'phone' => $request->phone,
            'email' => $request->email,
            'adresse' => $request->adresse,
            'ville_id' => $request->ville_id
            
        ]);
        return redirect(route('etudiant.show', $etudiant->id))->withSuccess('Donnée mise à jour');
        ;
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Etudiant $etudiant)
    {
        $etudiant->delete();
        return redirect(route('etudiant.index'))->withSuccess('Donnée effacée');
    }
}
