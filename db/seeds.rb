# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

tickets = [
  {
    title: "New employee laptop setup",
    description: "Prepare a laptop, account access, and security software for a new hire.",
    status: "open",
    priority: "high"
  },
  {
    title: "Update office printer drivers",
    description: "Install the latest printer drivers on the second-floor workstations.",
    status: "in_progress",
    priority: "medium"
  },
  {
    title: "Replace conference room monitor",
    description: "The monitor in Conference Room B is flickering during presentations.",
    status: "open",
    priority: "medium"
  },
  {
    title: "Review quarterly access permissions",
    description: "Confirm that employees have appropriate access to internal tools.",
    status: "completed",
    priority: "high"
  },
  {
    title: "Order ergonomic keyboard",
    description: "Purchase an ergonomic keyboard for the customer support desk.",
    status: "completed",
    priority: "low"
  }
]

tickets.each do |ticket_attributes|
  Ticket.find_or_create_by!(title: ticket_attributes[:title]) do |ticket|
    ticket.assign_attributes(ticket_attributes)
  end
end
