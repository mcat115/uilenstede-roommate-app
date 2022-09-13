require 'sinatra'
require_relative 'config/application'

set :bind, '0.0.0.0'  # bind to all interfaces
set :public_folder, File.join(File.dirname(__FILE__), "public")

get '/' do
  @people = Person.all
  erb :index
end

get '*' do
  erb :index
end

post '/chore' do
  person = Person.find_by(name: params[:name])

  if (person != nil) 
    trash_score = person.trash_score
    clean_score = person.clean_score
    
    if (params[:chore].downcase == "trash")
      person.trash_score = trash_score + 1
    elsif (params[:chore].downcase == "sweeping")
      person.clean_score = clean_score + 1
    end 

    person.save
  end

  redirect '/'
end
