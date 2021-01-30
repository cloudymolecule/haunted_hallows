# run >> rake db:drop db:create db:migrate >> from terminal before seeding database

GUEST_LIST = [
    ["guest1", "luke@hhh.com", "Trying to balance the force.", 28, "Male", "12345678", "12345678"],
    ["guest2", "ganondorf@hhh.com", "King of Hyrule.", 23, "Female", "12345678", "12345678"],
    ["guest3", "aerith@hhh.com", "We can, we will.", 54, "Male", "12345678", "12345678"],
    ["guest4", "thomas@hhh.com", "There's only one.", 23, "Male", "12345678", "12345678"],
    ["guest5", "elliot@hhh.com", "You did good kiddo.", 55, "Female", "12345678", "12345678"],
    ["guest6", "maria@hhh.com", "Nursing Student.", 18, "Male", "12345678", "12345678"],
    ["guest7", "andrew@hhh.com", "Ouija Aficionado.",34, "Male", "12345678", "12345678"],
    ["guest8", "marco@hhh.com", "I believe in everything.", 32, "Female", "12345678", "12345678"],
    ["guest9", "andrea@hhh.com", "The truth is out there.", 28, "Non-Binary", "12345678", "12345678"],
    ["guest10", "jake@hhh.com", "Student of the thing called life.", 28, "Male", "12345678", "12345678"],
    ["guest11", "fernando@hhh.com", "Biochemist by trade.", 30, "Female", "12345678", "12345678"],
    ["guest12", "paris@hhh.com", "Fashion is my life.", 56, "Male", "12345678", "12345678"],
    ["guest13", "mcKayla@hhh.com", "Old-school witch.", 28, "Female", "12345678", "12345678"],
    ["guest14", "priscilla@hhh.com", "Sorceress in training.", 31, "Male", "12345678", "12345678"],
    ["guest15", "gabriel@hhh.com", "Skater by day, Batman by night.", 22, "Female", "12345678", "12345678"],
    ["guest16", "princess@hhh.com", "Princess of another world.", 50, "Male", "12345678", "12345678"],
    ["guest17", "christopher@hhh.com", "Actor, time traveler.", 19, "Female", "12345678", "12345678"],
    ["guest18", "marcela@hhh.com", "There's a plan for all of us.", 20, "Male", "12345678", "12345678"],
    ["guest19", "ramachandra@hhh.com", "People say I'm an amazing cook.", 28, "Female", "12345678", "12345678"],
    ["guest20", "troy@hhh.com", "Martial artist, watch out ghosts.", 32, "Non-Binary", "12345678", "12345678"]
]

GUEST_LIST.each do |username, email, bio, age, gender, password, password_confirmation|
    Guest.create(
        username: username,
        email: email, 
        bio: bio,
        age: age, 
        gender: gender,
        password: password,
        password_confirmation: password_confirmation
    )
end

ROOM_LIST = [
    [102, "Some haunting1", "Some note1", false], [112, "Some haunting12", "Some note33", false],
    [103, "Some haunting2", "Some note2", false], [113, "Some haunting13", "Some note44", false],
    [104, "Some haunting3", "Some note3", false], [114, "Some haunting14", "Some note55", false],
    [101, "Some haunting4", "Some note4", false], [115, "Some haunting15", "Some note66", false],
    [105, "Some haunting5", "Some note5", true], [116, "Some haunting16", "Some note77", false],
    [106, "Some haunting6", "Some note6", false], [117, "Some haunting17", "Some note88", false],
    [107, "Some haunting7", "Some note7", false], [118, "Some haunting18", "Some note99", false],
    [108, "Some haunting8", "Some note8", false], [119, "Some haunting19", "Some note12", true],
    [109, "Some haunting9", "Some note9", false], [120, "Some haunting20", "Some note13", false],
    [110, "Some haunting10", "Some note11", false], [121, "Some haunting21", "Some note14", false]
]

ROOM_LIST.each do |number, haunting, note, do_not_disturb|
    Room.create(
        number: number,
        haunting: haunting,
        note: note,
        do_not_disturb: do_not_disturb
    )
end

BOOKING_LIST = [
    ["Booking Name", 1,1],["Booking Name2", 2,2],["Booking Name3", 3,3],["Booking Name4", 4,4],["Booking Name5", 5,5],
    ["Booking Name6", 6,6],["Booking Name7", 7,7],["Booking Name8", 8,8],["Booking Name9", 9,9],["Booking Name10", 10,10],
    ["Booking Name11", 11,11],["Booking Name12", 12,12],["Booking Name13", 13,13],["Booking Name14", 14,14],["Booking Name15", 15,15],
    ["Booking Name16", 16,16],["Booking Name17", 17,17],["Booking Name18", 18,18],["Booking Name19", 19,19],["Booking Name20", 20,20]
]

BOOKING_LIST.each do |name, guest_id, room_id|
    Booking.create(
        name: name,
        guest_id: guest_id,
        room_id: room_id
    )
end

BOARD_LIST = [
    [1, "Title1"], [5, "Title5"], [9, "Title9"], [12, "Title12"], [15, "Title15"], [18, "Title18"], 
    [2, "Title2"], [6, "Title6"], [10, "Title10"], [13, "Title13"], [16, "Title16"], [19, "Title19"], 
    [3, "Title3"], [7, "Title7"], [11, "Title11"], [14, "Title14"], [17, "Title17"], [20, "Title20"], 
    [4, "Title4"], [8, "Title8"]
]

BOARD_LIST.each do |room_id, title|
    Board.create(room_id: room_id, title: title)
end

COMMENT_LIST = [
    ["Some Comment", 1, 1], ["Some Comment", 2, 2], ["Some Comment", 3, 3], ["Some Comment", 4, 4], ["Some Comment", 5, 5], 
    ["Some Comment", 6, 6], ["Some Comment", 7, 7], ["Some Comment", 8, 8], ["Some Comment", 9, 9], ["Some Comment", 10, 10], 
    ["Some Comment", 11, 11], ["Some Comment", 12, 12], ["Some Comment", 13, 13], ["Some Comment", 14, 14], ["Some Comment", 15, 15], 
    ["Some Comment", 16, 16], ["Some Comment", 17, 17], ["Some Comment", 18, 18], ["Some Comment", 19, 19], ["Some Comment", 20, 20]
]

COMMENT_LIST.each do |entry, guest_id, board_id|
    Comment.create(entry: entry, guest_id: guest_id, board_id: board_id)
end