# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


10.times do
     Step.create(
        steps_taken: rand(2000..20000),
        date: Time.at(rand * Time.now.to_i).to_date,
      )
end

10.times do
     WeighIn.create(
        weight: rand(100..300),
        date: Time.at(rand * Time.now.to_i).to_date,
      )
end

10.times do
     Cal.create(
        cals_consumed: rand(0..1000),
        date: Time.at(rand * Time.now.to_i).to_date,
      )
end

ExerciseType.create(name: 'Aerobic')
ExerciseType.create(name: 'Anaerobic')
ExerciseType.create(name: 'Endurance')
ExerciseType.create(name: 'Strength')
ExerciseType.create(name: 'Flexibility')
ExerciseType.create(name: 'Cardio')
