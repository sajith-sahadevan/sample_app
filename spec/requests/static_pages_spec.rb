require 'spec_helper'

 describe "StaticPages" do
  
  let(:base_title) {'Ruby on rails Sample app'}

subject { page }
  describe "Home Page" do
    before {visit root_path}
    
    it {should have_selector('h1',:text=>"Sample App")}  
    it {should have_selector('title', text:full_title('')) } 	
    	
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #get static_pages_index_path
      #response.status.should be(200)
    it {should_not have_selector('title' , :text => "| Home")} 
  end

  describe "Help Page" do
    before {visit help_path}
  	it {should have_selector('h1',:text=>"Help")}
  	it {should have_content('Second check in the Help page')}
  	it {should have_selector('title' , text:full_title("Help"))}      
  
  end

  describe "About Page" do
    before{visit about_path}
  	it {should have_selector('h1' , :text => 'About us')}
    it {should have_selector('title' , text:full_title("About"))}
  end

  describe "Contact Page " do
    before {visit contacts_path}
    it {should have_selector('title' , text:full_title("Contacts"))}
  end


end
