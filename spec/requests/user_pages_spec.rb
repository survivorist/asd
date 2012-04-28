require 'spec_helper'

describe "UserPages" do
  
  subject { page }
  describe "user_pages" do
    before { visit signup_path}
    it  { should have_selector('h1', text: 'Signup') }
    it  { should have_selector('title', text: full_title('Signup')) }
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    end
  end
