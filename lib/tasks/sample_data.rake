namespace :db do
  desc "Reset and Fill database with sample data"
  task populate:  :environment do |t|
  	User.create!(name: "Gabriel Nadler",
   email: "nadler.gabriel@gmail.com",
   username: "Archie",
   password: "foobar",
   password_confirmation: "foobar")

   	 User.create!(name: "Lino von Burg",
   email: "poochiethecat@gmail.com",
   username: "Poochie",
   password: "foobar",
   password_confirmation: "foobar")
  end
end
