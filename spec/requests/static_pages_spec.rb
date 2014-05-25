require 'spec_helper'

describe "StaticPages" do

  let(:pageTitle) { "Ruby on Rails Tutorial Sample App" }
  let(:dividerTitle) { " | " }

  describe "Home page" do

    it "should have the content 'Sample App'" do
    	visit '/static_pages/home'
    	expect(page).to have_content('Sample App')
    end

    it "should have the base title" do
    	visit '/static_pages/home'
    	expect(page).to have_title(pageTitle)
    end

    it "should not have a custom page title" do
    	visit '/static_pages/home'
    	expect(page).not_to have_title(dividerTitle + "Home")
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
    	visit '/static_pages/help'
    	expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
    	visit '/static_pages/help'
    	expect(page).to have_title(pageTitle + dividerTitle + "Help")
    end
  end

  describe "About Page" do

  	it "should have the content 'About Us'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About Us')
  	end

    it "should have the title 'About Us'" do
    	visit '/static_pages/about'
    	expect(page).to have_title(pageTitle + dividerTitle + "About Us")
    end
  end

  describe "Contact Page" do

  	it "should have the content 'Contact'" do
  		visit '/static_pages/contact'
  		expect(page).to have_content('contact')
  	end

    it "should have the title 'Contact'" do
    	visit '/static_pages/contact'
    	expect(page).to have_title(pageTitle + dividerTitle + "Contact")
    end
  end
end
