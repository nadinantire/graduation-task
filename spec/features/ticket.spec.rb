require 'rails_helper'

# On the right side of this RSpec.feature, write the test item name like "task management feature" (grouped by do ~ end)
RSpec.feature "Ticket management function", type: :feature do
  # In scenario (alias of it), write the processing of the test for each item you want to check.
  background do 
    User.create!(email: "g@gmail.com", password: "123456")
    end
    background do
        visit  root_path
        fill_in  'Email' ,  with: 'g@gmail.com'
        fill_in  'Password' ,  with: '123456'
        click_on  'Log in'
        expect(page ).to have_text('Logged in as g@gmail.com.')
    end
    scenario "Test exhibition list" do
    
        Ticket.create!(title: 'test_exhibition_01')
        visit exhibitions_path

    expect(page).to have_content 'test_exhibition_01'
    end
  scenario "Test ticket list" do
    Ticket.create!(phone: 'test_ticket_01', exhibition_id: '1',user_id: '1' )
    visit tickets_path

    expect(page).to have_content 'test_ticket_01'
    
  end
end