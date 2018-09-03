require 'grape-swagger'
class API < Grape::API
  rescue_from :all, :backtrace => true
  format :json
  content_type :json, 'application/json; charset=utf-8'
  mount TicketingSystem::V1::Base
end