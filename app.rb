require "sinatra"
require_relative "coin_changer.rb"
enable :sessions


# get '/' do
#     erb :log_in
# end 

# post '/log_in' do
#     username = params[:u_name]
#     password = params[:p_word]
#     if username == "test" ; password == "test"
#         redirect '/amount?u_name='+ username + '&p_word='+ password
#     else
#         erb :log_in
#     end
# end

# get '/amount' do
#   erb :amount 
# end

# post '/amount' do
# 	cents = params[:cents]
# 	coins = coin(cents.to_i)
#     "#{cents} #{coins} "
#     # redirect '/results?cents='+ cents
# end




get '/' do
	erb :log_in
end

post '/login' do
	name = params[:user_name]
	redirect '/amount?users_name=' + name
end

get '/amount' do
	name = params[:users_name]
	erb :amount, locals: {name: name}
end

post '/amount' do
	cents = params[:cents]
	name = params[:name]
	session[:coins] = coin_sorter(cents.to_i)
    # "#{cents} #{name} #{coins}"
    redirect '/results?name=' + name + '&cents='+ cents 
end

get '/results' do
	name = params[:name]
	cents_received = params[:cents]
    cents = params[:cents]
	name = params[:name]
	coins = session[:coins]
	erb :results, locals: {name: name, cents_received: cents_received, coins: session[:coins]}
end

post '/results' do
	name = params[:name]
	cents_recieved = params[:cents]
end

    


