movie_collection = {
	horror: [
		'Friday the 13th',
		'Candyman',
		'Nightmare on Elm Street',
	],
	romantic: {
		Nineties: {
			movie_name: '10 things I Hate About You',
			city: 'Seattle',
			actors: ['Heath Ledger', 'Julia Stiles'],
		},
		Eighties: {
			movie_name: 'When Harry met Sally',
			city: 'New York',
			actors: ['Billy Crystal', 'Meg Ryan'],
		},	
		Seventies: {
			movie_name: 'Annie Hall',
			city: 'New York',
			actors: ['Woody Allen', 'Diane Keaton'],
		},
		Sixities: {
			movie_name: 'The Graduate',
			city: 'Los Angeles',
			actors: ['Dustin Hoffman', 'Anne Bancroft'],
			review: '4 stars out of 5',
		},
	}
}

p movie_collection[:horror][1]
p movie_collection[:horror][2].upcase
p movie_collection[:romantic][:Eighties][:actors][1]
p movie_collection[:romantic][:Nineties][:city]
p movie_collection[:romantic][:Seventies][:movie_name]
p movie_collection[:romantic][:Sixities][:review]