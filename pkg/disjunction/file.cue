#Conn: {
	address:  string
	port:     int
	protocol: "tcp" | "udp" | "sctp" | "dccp"
}

lossy: #Conn & {
	address:  "203.0.113.42"
	port:     8888
	protocol: "udp" // acceptable value
}
error: #Conn & {
	address:  "203.0.113.42"
	port:     8888
	protocol: "uadp" // invalid value
}