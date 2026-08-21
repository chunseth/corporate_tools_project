class PagesController < ApplicationController
  def home
      @tickets = Ticket.order(created_at: :desc)
  end
end
