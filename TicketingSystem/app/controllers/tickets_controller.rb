class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]


  def index
    @tickets = Ticket.all
  end


  def show
  end

  def new
    @ticket = Ticket.new
  end

  private
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end

    def ticket_params
      params.require(:ticket).permit(:request_number, :sequence_number, :request_type, :digsite_info, :primary_service_area_code, :additional_service_area_code, :response_due_date_time)
    end
end
