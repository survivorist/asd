require 'spec_helper'

describe "Static pages" do

  let(:base_title) {"CrowdRenta"}

  describe "Home page" do

    it "should have the h1 'CrowdRenta'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit root_path
      page.should have_selector('h1', :text => 'CrowdRenta' )
    end

    it "should have the base title" do
      visit root_path
      page.should have_selector('title', :text => "CrowdRenta")

    end

    it "should not have a custom page title" do
      visit root_path
      page.should_not have_selector('title', :text => '| Home')
    end
  end

  describe "Help page" do

    it "should have the h1 'Help'" do
      visit help_path
      page.should have_selector('h1', :text => "Help")
    end

    it "should have the base title" do
      visit help_path
      page.should have_selector('title', :text => "CrowdRenta")
    end

    it "should not have a custom page title" do
      visit help_path
      page.should_not have_selector('title', :text => '| Help')
    end

  end

  describe "About page" do
    it "should have the h1 'About Us'" do
      visit about_path
      page.should have_selector('h1', :text => 'About Us')
    end
    it "should have the base title" do
      visit about_path
      page.should have_selector('title', :text => "CrowdRenta")
    end

    it "should not have a custom page title" do
      visit about_path
      page.should_not have_selector('title', :text => '| About Us')
    end

  end

  describe "Contact page" do
    it "should have the h1 'Contact Us'" do
      visit contact_path
      page.should have_selector('h1', :text => 'Contact Us')
    end

    it "should have the base title" do
      visit contact_path
      page.should have_selector('title', :text => "CrowdRenta")
    end

    it "should not have a custom page title" do
      visit contact_path
      page.should_not have_selector('title', :text => '| Contact Us')
    end
  end
end
