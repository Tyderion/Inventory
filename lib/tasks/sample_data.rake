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


     Item.create(name: "Aktivkohle")
     Item.create(name: "Brennsprit")
     Item.create(name: "Papes")
     Item.create(name: "Tabak")
     Item.create(name: "Siebchen klein")
     Item.create(name: "Siebchen mittel")
  end

  
end
