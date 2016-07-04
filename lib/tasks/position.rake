require 'faker'
namespace :db do
  desc "creando cargo"
  task :position => :environment do
    Rake::Task['db:reset'].invoke

    5.times do
      Position.create(
        nombre: Faker::Company.profession,
        descripcion: Faker::Company.profession,
        sueldo: Faker::Commerce.price 
        )
    end

  end
end