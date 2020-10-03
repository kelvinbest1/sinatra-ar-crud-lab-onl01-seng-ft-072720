
require_relative '../../config/environment'
require_relative '../models/article.rb'


require_relative '../../config/environment'
require_relative '../models/article.rb'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do

  end

  get '/articles' do 
    @articles = Article.all
    erb :index
  end

  get '/articles/new' do
    erb :new
  end

  post '/articles' do
    @article1 = Article.create(title: params[:title], content: params[:content])
    return to "articles/#{articles.id}"
  end

  get '/article/:id' do 
    @article = Article.find(id: "#{params[:id]}")
    erb :show
  end
end