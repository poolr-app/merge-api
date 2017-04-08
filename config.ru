#\ -s puma

require_relative './application.rb'

use Rack::Reloader, 0
run Merge::API
