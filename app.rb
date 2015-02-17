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

  get "/work/matterhorn" do
    erb "work/matterhorn".to_sym
  end
  get "/work/ubiquity-press-portals" do
    erb "work/ubiquity_press_portals".to_sym
  end
  get "/work/ubiquity-press-journals" do
    erb "work/ubiquity_press_journals".to_sym
  end
  get "/work/serious-fox" do
    erb "work/serious_fox".to_sym
  end
  get "/work/evolve-my-retirement" do
    erb "work/evolve_my_retirement".to_sym
  end
  get "/work/metatrails" do
    erb "work/metatrails".to_sym
  end
  get "/work/tottenham-hotspur" do
    erb "work/tottenham_hotspur".to_sym
  end
  get "/work/tech-city-uk" do
    erb "work/tech_city_uk".to_sym
  end

  get "/contact" do
    erb :contact
  end
end