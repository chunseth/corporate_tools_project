class TicketsController < ApplicationController
  def new
    @ticket = Ticket.new(status: "open", priority: "medium")
  end
  
  def create 
    @ticket = Ticket.new(ticket_params)

    if @ticket.save
      redirect_to root_path, notice: "Ticket created successfully"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def ticket_params
    params.require(:ticket).permit(:title, :description, :status, :priority)
  end
end
