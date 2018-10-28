require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :new 
  end
  
  post '/teams' do
    binding.pry
    @team = Team.new(name: params[:name], motto: params[:motto])
    params[:team][:heroes].each do |hero|
      Hero.new(hero)
    end
    erb :team  
  end
end
