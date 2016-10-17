#5.4 Nested Data Structures
#Design and Build a Nested Data Structure

hotel = {
    lobby: {
        floor_name: 'Lobby',
        fllor_manager: 'John',
        rooms: {
            total: 0,
            available: 0
        },
        bellmen: ['Rick', 'Juan']
    },
 	guest_room: {
        floor_name: 'Guest Room',
        fllor_manager: 'Eric',
        rooms: {
            total: 20,
            available: 5
        },
    },
	suite: {
        floor_name: 'Suite',
        fllor_manager: 'Greg',
        rooms: {
            total: 8,
            available: 3
        },
    },
    penthouse: {
        floor_name: 'Pent House',
        fllor_manager: 'Sarah',
        rooms: {
            total: 2,
            available: 1
        },
	},
}
p hotel

#Driver code to test nested data
#Floor manager of lobby
p hotel[:lobby][:fllor_manager]

#total number of suites
p hotel[:suite][:rooms][:total]

#name of penthouse floor
p hotel[:penthouse][:floor_name]

#Greg is out sick Sue will be floor manager
hotel[:suite][:fllor_manager] = 'Sue'
p hotel[:suite][:fllor_manager] = 'Sue'

#There are no more available guest rooms
hotel[:guest_room][:rooms][:available] = 0
p hotel[:guest_room][:rooms][:available] = 0

#Two new bellmen joined, Sal and Nick
hotel[:lobby][:bellmen].push ('Sal')
hotel[:lobby][:bellmen].push ('Nick')
p hotel[:lobby][:bellmen]