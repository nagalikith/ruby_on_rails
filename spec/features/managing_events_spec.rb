require 'rails_helper'
require "support/render_views"

describe 'Managing Events' do
  specify 'I can add an event' do
    # club = FactoryBot.create :club, name: 'A test Club', postcode: 'LS24 6RT', contactnumber: '07848809547', paymentduedate: '2021,4,12,8'
    visit '/'
    sleep 5
    fill_in 'Email', with: 'admin@admin.co.uk'
    fill_in 'Password', with: 'Admin1#'
    click_button 'Log in'
    visit '/clubs'
    click_link 'New Club'
    # click_link find('New Event').link
    sleep 2
    fill_in 'Name', with: 'Event 1'
    fill_in 'Comment', with: 'Event 1 Comment'
    fill_in 'Date', with: '12 May 2021'
    fill_in 'End Time', with: '13 May 2021 23 00'
    fill_in 'Club', with: 'Affinity'
    fill_in 'Spaces Left', with: '0'
    # all_groups.check()
    
    
#     click_button 'Create Event'
#     visit '/events'
#     within(:css, 'table') { expect(page).to have_content 'name'}
  end
end

#     specify 'I can edit an Event' do
#         FactoryBot.create :event
#         visit '/events'
#         click_link 'Edit'
#         fill_in 'Name', with: 'ToasterNew'
#         click_button 'Update Event'
#         click_link 'Close'
#         within(:css, 'table') { expect(page).to have_content 'ToasterNew' }
#     end
# end
