require 'spec_helper'

describe "Static pages" do


  subject { page }

  describe "Home page" do
    before { visit root_path }

      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      it { should have_selector('h1', text: 'CrowdRenta')  }
      it { should have_selector('title', text: full_title('')) }
      it { should_not have_selector 'title', text: '| Home' }
    end

  describe "Help page" do
    before { visit help_path }

      it { should have_selector('h1', text: 'Help') }
      it { should have_selector('title', text: full_title('Help')) }
   end

  describe "About page" do
    before { visit about_path }
      it { should have_selector('h1', text: 'About Us') }
      it { should have_selector('title', text: full_title('About Us')) }
    end


  describe "Contact page" do
    before { visit contact_path }
      it { should have_selector('h1', text: 'Contact Us') }
      it { should have_selector('title', text: full_title('Contact Us')) }
  end
end
