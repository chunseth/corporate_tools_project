class PagesController < ApplicationController
  def home
      @tickets = Ticket.order(created_at: :desc)
      @open_tickets = Ticket.where(status: "open").count
      @in_progress_tickets = Ticket.where(status: "in_progress").count
      @completed_tickets = Ticket.where(status: "completed").count
  end
end
