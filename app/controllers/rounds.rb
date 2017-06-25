get '/rounds/new' do
  session[:user_id] = 1
  new_round = Round.create(player_id: current_user.id, deck_id: params[:id])
  session[:round_id] = new_round.id
  erb :'rounds/preview'
end


get '/rounds/results' do
  @results = current_round.guesses
  erb :'rounds/results'
end
