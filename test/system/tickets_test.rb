require "application_system_test_case"

class TicketsTest < ApplicationSystemTestCase
  setup do
    @ticket = tickets(:one)
  end

  test "visiting the index" do
    visit tickets_url
    assert_selector "h1", text: "Tickets"
  end

  test "creating a Ticket" do
    visit tickets_url
    click_on "New Ticket"

    fill_in "Digsite Info", with: @ticket.digsite_info
    fill_in "Request Number", with: @ticket.request_number
    fill_in "Request Type", with: @ticket.request_type
    fill_in "Sequence Number", with: @ticket.sequence_number
    click_on "Create Ticket"

    assert_text "Ticket was successfully created"
    click_on "Back"
  end

  test "updating a Ticket" do
    visit tickets_url
    click_on "Edit", match: :first

    fill_in "Digsite Info", with: @ticket.digsite_info
    fill_in "Request Number", with: @ticket.request_number
    fill_in "Request Type", with: @ticket.request_type
    fill_in "Sequence Number", with: @ticket.sequence_number
    fill_in "Service Area", with: @ticket.service_area_id
    fill_in "Time Track", with: @ticket.time_track_id
    click_on "Update Ticket"

    assert_text "Ticket was successfully updated"
    click_on "Back"
  end

  test "destroying a Ticket" do
    visit tickets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ticket was successfully destroyed"
  end
end
