require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :home
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
  
  get '/quizzes' do
    erb :quizzes
  end
  
  get '/foundation_quiz' do
    erb :foundation_quiz
  end
  
  get '/lipstick_quiz' do
    erb :lipstick_quiz
  end

  get '/primer_quiz' do
    erb :primer_quiz
  end
  
  get '/skincare_quiz' do
    erb :skincare_quiz
  end







end
