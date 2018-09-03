class TicketingSystem::V1::Home::TicketInformations < Grape::API
  include TicketingSystem::V1::Defaults

  resource :ticket_informations do
    desc "Add new Ticket"
    params do
      use :ticket_information_params
    end

    post http_codes: [
        [200, 'Ok'],
        [201, 'Created'],
        [422, 'Unprocessable Entity']
    ] do

      Ticket.transaction do
        ticket = Ticket.create(request_number: params[:RequestNumber], sequence_number: params[:SequenceNumber], request_type: params[:RequestType], digsite_info: params[:ExcavationInfo][:DigsiteInfo][:WellKnownText],response_due_date_time: params[:DateTimes][:ResponseDueDateTime], primary_service_area_code: params[:ServiceArea]["PrimaryServiceAreaCode"], additional_service_area_code: params[:ServiceArea]["AdditionalServiceAreaCodes"])
        excavator = ticket.create_excavator(company_name: params[:Excavator][:CompanyName], address: params[:Excavator][:Address], crew_onsite: params[:Excavator][:CrewOnsite])
        if ticket
        status 201
        present :message, "ticket_informations created successfully"
      else
        status 422
        present :message, "Something Went Wrong!"
      end
    
      end
    end
  end
end
