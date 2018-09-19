<?php

use App\Student;
use Illuminate\Database\Seeder;

class StudentTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = \Faker\Factory::create();
        for ($i = 0; $i < 20; $i++) {
            Student::create([
                'name' => $faker->name,
                'email' => $faker->email,
                'phone' => $faker->randomNumber(4),
            ]);
        }
    }
}
