require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App |" }

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit root_path
      expect(page).to have_content('Sample App')
    end

    it "should have the base title" do
      visit root_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit root_path
      expect(page).not_to have_title('| Home') 
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('help')
    end

    it "should have the title 'Help'" do
      visit help_path
      expect(page).to have_title("| Help")
    end
  end

  describe "About Us page" do

    it "should have the content 'about'" do
      visit about_path
      expect(page).to have_content('about')
    end

    it "should have the title 'About Us'" do
      visit about_path
      expect(page).to have_title("| About Us")
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit contact_path
      expect(page).to have_content('contact')
    end

    it "should have the title 'Contact'" do
      visit contact_path
      expect(page).to have_title("| Contact")
    end
  end
end
