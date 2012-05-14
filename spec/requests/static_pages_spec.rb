require 'spec_helper'

describe "StaticPages" do
  
  let(:base_title) {'Ruby on rails Sample app'}

  describe "Home Page" do
    it "should have the h1 content 'Sample App'" do
    	visit '/static_pages/home'
    	page.should have_selector('h1',:text=>"Sample App")
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #get static_pages_index_path
      #response.status.should be(200)
    end
   

    it "should not have a custome title" do 
      visit '/static_pages/home'
      page.should_not have_selector('title' , :text => "| Home")
      
    end

    

  end

  describe "Help Page" do
  	it "should have the h1 content 'Help'" do
  		visit '/static_pages/help/'
  		page.should have_selector('h1', :text=>"Help")
  		page.should have_content('Second check in the Help page')
  	end 

    it "should not have a custome title" do 
      visit '/static_pages/home'
      page.should_not have_selector('title' , :text => "| Help")
      
    end	

  end

  describe "About Page" do
  	it "should have the content 'About us'" do
  		visit '/static_pages/about/'
  		page.should have_selector('h1' , :text => 'About us')
    end

    it "should not have a custome title" do 
      visit '/static_pages/home'
      page.should_not have_selector('title' , :text => "| About")
      
    end
  end

  describe "Contact Page " do
    it "should not have a custome title" do 
      visit '/static_pages/home'
      page.should_not have_selector('title' , :text => "| Contacts")
      
    end
  end


end
