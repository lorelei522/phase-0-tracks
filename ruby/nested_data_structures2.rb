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

#Print some data inside the data structure
p Bloomingdales[:first_floor][:floor_name]
p Bloomingdales[:first_floor][:handbag_section][:employees]
p Bloomingdales[:first_floor][:perfume_section][2]

#push some new data into a section
p Bloomingdales[:second_floor][:belt_section][:belt_brands].push("Louis Vuitton")
p Bloomingdales
#print that new data. Since it was the last one added can use -1 as the index to call
p Bloomingdales[:second_floor][:belt_section][:belt_brands][-1]


#update data in a hash
# update the number of employees from the suit section from 5 to 3 employees. Print to see changes
p Bloomingdales[:second_floor][:suit_section][:employees]= "3"
p Bloomingdales[:second_floor][:suit_section]




