require 'sinatra'
require 'yaml'

config = YAML.load_file('templates/configmap.yaml')

get '/message' do
  config['data']['message']
end

get '/health' do
  status 200
end