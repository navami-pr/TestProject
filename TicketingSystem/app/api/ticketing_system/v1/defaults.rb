module TicketingSystem
  module V1
    module Defaults
      extend ActiveSupport::Concern

      included do
        prefix "api"
        default_format :json
        format :json
        before do
          header['Access-Control-Allow-Origin'] = '*'
          header['Access-Control-Request-Method'] = '*'
        end

        helpers TicketingSystem::V1::Helpers::SharedParams

        rescue_from ActiveRecord::RecordNotFound do |e|
          error_response(message: e.message, status: 404)
        end

        rescue_from ActiveRecord::RecordInvalid do |e|
          error_response(message: e.message, status: 422)
        end
      end
    end
  end
end