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
    if params[:name].empty? || params[:birth_day].empty? || params[:birth_month].empty?
      redirect '/error'
    else
      @person.birthday_today? ? (redirect '/birthday') : (redirect '/not-birthday')
    end  
  end

  get '/birthday' do
    erb :birthday
  end

  get '/not-birthday' do 
    erb :not_birthday
  end

  get '/error' do 
    erb :error
  end
end