#create a department store nested data structure


Bloomingdales = {
	first_floor: {
		floor_name: 'Womens Department',
		handbag_section: {
			employees: 6,
			handbags_available: 300
		},
		perfume_section: ["Burberry", "Armani", "Chanel", "Ralph Lauren", "Lancome"]
	},

	second_floor: {
		floor_name: 'Mens Department',
		belt_section: {
			employees: 3,
			belt_brands: ["Tom Ford", "Kenzo", "Paul Smith", "Versace", "Hugo Boss"]
		},
		suit_section:{
			employees: 5,
			tailor_available: true,
			suit_brands: ["Tom Ford", "Hugo Boss", "Gucci", "Ted Baker", "Michael Kors"]
		}
	}
}