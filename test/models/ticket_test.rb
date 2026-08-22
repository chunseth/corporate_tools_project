require "test_helper"

class TicketTest < ActiveSupport::TestCase
  test "is valid with a title, status, and priority" do
    ticket = Ticket.new(
      title: "Set up laptop",
      status: "open",
      priority: "high"
    )

    assert ticket.valid?
  end
  
  test "is invalid without a title" do
    ticket = Ticket.new(
      status: "open",
      priority: "high"
    )

    assert_not ticket.valid?
    assert_includes ticket.errors[:title], "can't be blank"
  end

  test "rejects an invalid status" do
    ticket = Ticket.new(
      title: "Set up laptop",
      status: "unknown",
      priority: "high"
    )

    assert_not ticket.valid?
    assert_includes ticket.errors[:status], "is not included in the list"
  end

  test "rejects an invalid priority" do
    ticket = Ticket.new(
      title: "Set up laptop",
      status: "in_progress",
      priority: "urgent"
    )

    assert_not ticket.valid?
    assert_includes ticket.errors[:priority], "is not included in the list"
  end
end
