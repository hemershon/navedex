namespace :user do
  desc "TODO"
  task setup: :environment do
    puts "Starting the User registration...;)"
    100.times do |i|
      User.create!(
        email:Faker::Internet.email,
        password:nil
      )
    end
    puts "Registration of the User order"
  end

end
