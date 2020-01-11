require 'sinatra/base'
require './lib/person'

class Birthday < Sinatra::Base

  before do 
    @person = Person.instance
  end

  get '/' do 
    erb :index
  end

  post '/info' do
    @person = Person.create(params[:name], params[:birth_day], params[:birth_month])
    @person.birthday_today? ? (redirect '/birthday') : (redirect '/not-birthday')
  end

  get '/birthday' do
    erb :birthday
  end

  get '/not-birthday' do 
    erb :not_birthday
  end

end