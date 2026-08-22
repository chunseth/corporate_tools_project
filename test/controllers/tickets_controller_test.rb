require "test_helper"

class TicketsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tickets_new_url
    assert_response :success
  end

  test "creates a ticket with valid data" do
    assert_difference("Ticket.count", 1) do
      post tickets_url, params: {
        ticket: {
          title: "New employee laptop",
          description: "Prepare a laptop for a new employee.",
          status: "open",
          priority: "high"
        }
      }
    end

    assert_redirected_to root_url
    follow_redirect!
    assert_match "Ticket created successfully", response.body
  end
end
