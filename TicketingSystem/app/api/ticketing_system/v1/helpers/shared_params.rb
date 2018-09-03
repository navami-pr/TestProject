module TicketingSystem::V1::Helpers::SharedParams
  extend Grape::API::Helpers
  
  #All Ticket Information Params
  params :ticket_information_params do
    requires :RequestNumber, type: String, desc: 'Request Number'
    requires :SequenceNumber, type: String, desc: 'Sequence Number'
    requires :RequestType, type: String, desc: 'Request Type'
    requires :ExcavationInfo, type: Hash do
      requires :DigsiteInfo, type: Hash do
        requires :WellKnownText, type: String, desc: 'Well Known Text'
      end
    end
    requires :DateTimes, type: Hash do
      optional :ResponseDueDateTime, type: DateTime, desc: 'Response DueDate Time'
    end
  end
end
