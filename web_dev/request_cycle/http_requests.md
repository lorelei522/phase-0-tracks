1) Common HTTP status codes:

	100's - informational status. Going okay continue with request.

	200's - successful. Request was received understood and accepted.

	300's - more information from the user needed. URI provided isn't specific enough, 
			URI has changed, URI changed temporarily.

	400's - Error from the user. Forbidden, conflict, unauthorized, bad request, legal reasons.

	500's - server side problems. Internal server error, bad gateway, service unavailable,
			HTTP version not supported. Maintenance.


2) What is the difference between a GET request and a POST request? When might each be used?
	GET requests data from a specific resource(fetching documents). POST submits data to be processed to a specific resource(updating server forms).
	GET retrieves data and POST writes data.


3)Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?	

Data that has been sent from a server and stored in the browser of the user while the user is on the page. It can store it and send back together with the next request to the same server. This is typically used to see if the request came from the same browser which allows the user to staty logged on, tracking, and personaliztion.
