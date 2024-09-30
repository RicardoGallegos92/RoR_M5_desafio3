# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


10.times do |i|
  Movie.create(name: "Nombre Pelicula #{i}",
              director: "#{i} Gonzales Perez",
              synopsis: "La película trata sobre cosas inferibles del título"
  )
  DocumentaryFilm.create(name: "Nombre Documental #{i}",
              director: "#{i} Gonzales Perez",
              synopsis: "El Documental trata sobre cosas inferibles del título pero con apelativos emocionales"
  )
  Serie.create(name: "Nombre Serie #{i}",
              director: "#{i} Gonzales Perez",
              synopsis: "La serie trata sobre cosas inferibles del título pero con un twist al 80%"
  )
end
