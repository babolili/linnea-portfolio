Bundler.require

require 'sinatra/asset_pipeline'
require 'sinatra/partial'
require 'sinatra/content_for'

class App < Sinatra::Base
  helpers Sinatra::ContentFor
  configure do
    set :production, ENV['RACK_ENV'] == 'production'
  end

  set :assets_precompile, %w(application.js libs.js application.css bootstrap.css *.png *.jpg *.svg)
  register Sinatra::AssetPipeline

  register Sinatra::Partial
  set :partial_template_engine, :erb

  def initialize
    super
  end
  # Define urls like this, erb :file links to /views/file.erb
  get "/" do
    erb :index
  end
  
  get "/work" do
    erb :work
  end

  get "/contact" do
    erb :contact
  end
end