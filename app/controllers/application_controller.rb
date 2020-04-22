class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # code actions here!

  get '/' do #index action
    redirect '/recipes'
  end
  
  get '/recipes' do 
    @list = Recipe.all 
    erb :index
    
  end
  
  get '/recipes/new' do #new action
    erb :new
  end
  
  post '/recipes' do #create action
     recipe = Recipe.create(:name => params[:name], :ingredients => params[:ingredients], :cook_time => params[:cook_time])
    redirect "/recipes/#{recipe.id}"
  end
  
  get '/recipes/:id' do #show action
    erb :show
  end
  
  get '/recipes/:id/edit' do #edit action

  end
  
  
  patch '/recipes/:id' do #update action
    
  end
  
  # put 'recipes/:id' do  #update action`
    
  # end
 
  delete '/recipes/:id' do #delete action
    
  end
  
end
