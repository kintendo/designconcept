# sends index.html to each connection
# ==============================================================================
http = require 'http'
fs = require 'fs'
express = require('express')
app = express()
server = http.createServer(app)    

app.get '/', (req, res) ->
	res.sendfile(__dirname + '/index.html')

app.use('/img', express.static(__dirname + '/img'))
app.use('/logo', express.static(__dirname + '/logo'))

server.listen process.env.PORT