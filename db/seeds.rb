# goup_id: 1
family = Group.create(name: "Family")

mom = Contact.create(name: "Mom", group_id: 1, phoneNumber: 1234567890, birthday: Time.new(2020, 2, 2).strftime("%m/%d/%Y"))
dad = Contact.create(name: "dad", group_id:1, phoneNumber: 1123456789, birthday: Time.new(2020, 2, 2).strftime("%m/%d/%Y"))


# group_id: 2
friends = Group.create(name: "Friends")
chromeBoy = Contact.create(name: "Chrome Boy", group_id: 2, phoneNumber: 1010101010, birthday: Time.new(2020, 2, 2).strftime("%m/%d/%Y"))