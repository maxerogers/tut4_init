#app.rb
#This is the app.rb. It is the heart and soul of your sintra application.
require "sintra"

get "/" do
  "hello world"
end

get "/form" do
	puts "GET"
	'<h3>Data:</h3>
	<form action="/form">
		<input type="text" name="data">
		<input type="submit" value="submit">
	</form>'
end
post "/form" do
	puts "POST"
	puts params.inspect
	'<h3>Data: '+params[:data]+' </h3>
	<form action="/form">
		<input type="text" name="data">
		<input type="submit" value="submit">
	</form>'
end
