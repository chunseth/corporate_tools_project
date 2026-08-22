class PagesController < ApplicationController
  def home
      @status_filter = params[:status]
      @priority_filter = params[:priority]

      @tickets = Ticket.order(created_at: :desc)
      
      if @status_filter.present?
        @tickets = @tickets.where(status: @status_filter)
      end

      if @priority_filter.present?
        @tickets = @tickets.where(priority: @priority_filter)
      end

      @open_tickets = Ticket.where(status: "open").count
      @in_progress_tickets = Ticket.where(status: "in_progress").count
      @completed_tickets = Ticket.where(status: "completed").count
  end
end
