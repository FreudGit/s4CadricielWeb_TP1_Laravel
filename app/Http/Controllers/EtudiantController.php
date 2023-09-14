<?php

namespace App\Http\Controllers;

use App\Models\Etudiant;
use App\Models\Ville;

use Illuminate\Http\Request;

class EtudiantController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // get etidiants and order ny updated_at desc
        //$blogPost=BlogPost::Select()


        $etudiants = Etudiant::Select()
        //->sortByDesc('updated_at')
        ->paginate(10);

        foreach ($etudiants as $etudiant) {
            $etudiant->ville= $this->getVilleFromID($etudiant->ville_id);
        }
        return view('etudiant.index', ['etudiants' => $etudiants]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $villes=Ville::all();

        return view('etudiant.create', ['villes' => $villes]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $newEtudiant = Etudiant::create([
            'nom' => $request->nom,
            'date_de_naissance' => $request->date_de_naissance,
            'phone' => $request->phone,
            'email' => $request->email,
            'adresse' => $request->adresse,
            'ville_id' => $request->ville_id

        ]);
        return redirect(route('etudiant.index'));
    }

    /**
     * Display the specified resource.
     */
    public function show(Etudiant $etudiant)
    {
        //$ville=Ville::find($etudiant->ville_id);
        //$etudiant->ville=$ville->nom;

        $etudiant->ville= $this->getVilleFromID($etudiant->ville_id);
        return view('etudiant.show', ['etudiant' => $etudiant]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Etudiant $etudiant)
    {
        $villes=Ville::all();
        return view('etudiant.edit', ['etudiant' => $etudiant, 'villes' => $villes]);

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


    /**
     * Get ville from ville_id.
     * @param Int $id
     * @return String $ville->nom
     */
    public function getVilleFromID(Int $id)
    {
        $ville=Ville::find($id);
        return $ville->nom;
    }
}
