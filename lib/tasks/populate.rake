require 'faker'
namespace :db do
  desc "creando empleado"
  task :populate => :environment do
    print "Cuantos empleados desea crear?"
    num_person = $stdin.gets.to_i
    #Rake::Task['db:reset'].invoke

    num_person.times do
      Employee.create(
        nombre: Faker::Name.name,
        fecnac: Faker::Date.between(50.year.ago, 5.year.ago),
        direccion: Faker::Address.street_address
        )
    end

    print "#{num_person} creadas.n"
  end
end