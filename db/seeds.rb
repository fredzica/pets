# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

pets = Pet.create([
    {
        name: "Linus",
        description: "Thin, tall, either sleepy or overexcited",
        birth_date: "25/12/2019",
        weight_kg: 24.50
    },
    {
        name: "Nina",
        description: "Fat, crazy, very playful and always sweating",
        birth_date: "12/06/2009",
        weight_kg: 45.0
    }
])
