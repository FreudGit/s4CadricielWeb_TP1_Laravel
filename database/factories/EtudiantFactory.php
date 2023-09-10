<?php

namespace Database\Factories;
use App\Models\Ville;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Etudiant>
 */
class EtudiantFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        // Récupérer ramdom un ID de ville existant depuis la table "villes"
        $villeIds = Ville::pluck('id')->toArray();
        $randomVilleId = $this->faker->randomElement($villeIds);

    return [
        'nom' => $this->faker->firstName . ' ' . $this->faker->lastName,
        'adresse' => $this->faker->address,
        'phone' => $this->faker->phoneNumber,
        'email' => $this->faker->unique()->safeEmail,
        'date_de_naissance' => $this->faker->date($format = 'Y-m-d', $max = '2003-12-31'),
        'ville_id' => $randomVilleId,
    ];
    }
}
