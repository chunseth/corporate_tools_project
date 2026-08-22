require "application_system_test_case"

class TicketsTest < ApplicationSystemTestCase
  test "user creates a ticket" do
    visit new_ticket_url

    fill_in "Title", with: "Replace conference room monitor"
    fill_in "Description", with: "The monitor is flickering."
    select "open", from: "Status"
    select "high", from: "Priority"

    click_on "Create Ticket"

    assert_text "Ticket created successfully"
    assert_text "Replace conference room monitor"
  end
end
