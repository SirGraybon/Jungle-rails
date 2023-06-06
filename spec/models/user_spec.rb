require 'rails_helper'
require_relative "../../app/models/user"


RSpec.describe User, type: :model do
  describe 'Validations' do
    before do
    @test_user = User.new :name => "Tester McGee", :email => "test@email.com", :password => "12345678"  
    puts @test_user.name
    @test_user.save
    
    end


    it "Created a new user" do
      expect(@test_user.valid?).to be true
    end

    it "wont allow duplicate users -- regardless of caseing" do
      b_user = User.new :name => "Tester McGee", :email => "DAVID@TEST.COM", :password => "12345678"
      expect(b_user.valid?).to be false
    end

    
    it "fails with no email" do
      a_user = User.new :name => "test@email.ca", :password => "12345678"
      expect(a_user.valid?).to be false
    end   

    
    
    it "fails when password is below minimim length" do
      a_user = User.new :name => "mike", :email => "test@email.ca", :password => "1234"
      expect(a_user.valid?).to be false
    end
 
  end
describe 'authenticate_with_credentials' do
  it "logs in successfully" do  
    expect(User.authenticate_with_credentials("david@test.com","12345678" )).to_not be_nil 
  end



end




end
