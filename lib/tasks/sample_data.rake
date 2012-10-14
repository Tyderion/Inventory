namespace :db do
  desc "Reset and Fill database with sample data"
  Rake::Task['db:reset'].invoke
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

    items = {"Aktivkohle"=> 3,"Brennsprit"=> 2,"Papes"=> 3,"Tabak"=>2,"Siebchen klein"=> 10,"Siebchen mittel"=> 10}
    List.create(name: "Smoking Stuff")
    List.first.update_attributes(user_ids: [1,2])

    items.each_with_index do |item,index|
      Item.create(name: item[0])
      Listitem.create(list_id: 1, item_id: index+1, quota: item[1], amount: rand(1..4) )
    end
    
  end

  
end
