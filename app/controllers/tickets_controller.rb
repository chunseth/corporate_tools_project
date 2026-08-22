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

  def show
    @ticket = Ticket.find(params[:id])
  end

  def edit
    @ticket = Ticket.find(params[:id])
  end

  def update
    @ticket = Ticket.find(params[:id])

    if @ticket.update(ticket_params)
      redirect_to @ticket, notice: "Ticket updated successfully"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy

    redirect_to root_path, notice: "Ticket deleted successfully"
  end

  private

  def ticket_params
    params.require(:ticket).permit(:title, :description, :status, :priority)
  end
end
