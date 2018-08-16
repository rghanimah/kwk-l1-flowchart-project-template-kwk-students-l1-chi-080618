require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end

  post '/results' do
    
    letter_array = params.values 
    answer = letter_array.join("")
    
    puts answer
    return answer
      
  end

post '/results2' do
    
    letter_array = params.values 
    answer = letter_array.join("")
    
    puts answer
    return answer
      
  end
  
  post '/results3' do
    
    letter_array = params.values 
    answer = letter_array.join("")
    
    puts answer
    return answer
      
  end

  post '/results4' do
    
    letter_array = params.values 
    answer = letter_array.join("")
    
    puts answer
    return answer
      
  end
  
  get '/home' do
    erb :home
  end
  
  get '/quiz' do
    erb :index 
  end
  
  get '/fash_and_beaut' do
    erb :fashionbeauty
  end
  
  get '/about_us' do
    erb :about_us
  end

end
