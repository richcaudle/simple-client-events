require 'rubygems'
require 'sinatra/base'
require 'yaml'
require 'pusher'
require 'json'

class Server < Sinatra::Base

	# set Pusher configuration
	set :public_folder, Proc.new { File.join(root, "public") }
	config = YAML.load_file('./config.yml')

	Pusher.app_id = config['pusher']['app_id']
	Pusher.key = config['pusher']['app_key']
	Pusher.secret = config['pusher']['app_secret']


	# main view action
	get '/' do
		@app_key = config['pusher']['app_key']
		erb :index
	end


	# authentication action
	post '/auth' do
		content_type :json
		Pusher[params[:channel_name]].authenticate(params[:socket_id]).to_json
	end


	run! if app_file == $0

end