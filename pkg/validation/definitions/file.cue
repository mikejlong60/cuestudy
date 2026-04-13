#Conn: {
	address:  string
	port:     int
	protocol: string

	// Uncomment this to allow any field.
	 ...
}

lossy: #Conn & {
	address:  "203.0.113.42"
	port:     8888
	protocol: "udp"

	// The timeout field is not specified in
	// #Conn, and its presence causes an
	// evaluation failure.
	timeout: 30
}