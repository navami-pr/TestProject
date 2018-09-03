require 'grape-swagger'

module TicketingSystem
  module V1
    class Base < Grape::API
      version 'v1', using: :path

      # Tickets Modules
      mount TicketingSystem::V1::Home::TicketInformations

      add_swagger_documentation(
        api_version: "v1",
        hide_documentation_path: true,
        mount_path: "/api/v1/swagger_doc",
        hide_format: true
      )
    end
  end
end
