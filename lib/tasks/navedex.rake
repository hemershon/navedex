namespace :navedex do
  desc "Setting up Navedex environment"
  task setup: :environment do
    puts "Starting the navedex registration...;)"
    100.times do |i|
      Naver.create!(
        name:Faker::Name.name_with_middle,
        birthdate:Faker::Date.birthday(min_age: 18, max_age: 65),
        job_role:Faker::Job.position,
        admission_date:Faker::Date.in_date_period
      )
    end
    puts "Registration of the navedex order"
  end
end

