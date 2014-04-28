require 'spec_helper'

feature "A Music Lessons Page shows Lessons" do |

  |  background do
    visit("/")
    click_link("Sign up")
    fill_in("Email", with: 'john@doe.com')
    fill_in("Name", with: 'John Doe')
    fill_in("Username", with: 'jdoe')
    fill_in("Password", with: 'johndoe123')
  end

end
