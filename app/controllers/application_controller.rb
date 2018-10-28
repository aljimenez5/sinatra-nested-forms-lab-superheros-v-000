require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :new 
  end
  
  post '/teams' do
    @team = Team.new(params[:team])
    binding.pry
    params[:team][:members].each do |member|
      Hero.new(member)
    end
    
    @members = Hero.all
    
    erb :team  
  end
end
