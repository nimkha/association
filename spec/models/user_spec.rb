require 'rails_helper'

RSpec.describe User, type: :model do
  
  before :each do
    @bob = User.create(user_name:"Bob", user_password:"abcd", user_email:"email@user.com", user_firstname:"Bobby", user_lastname:"Burger")
  end

  it "should be unique" do
    bob2 = User.create(user_name:"Bob", user_password:"abcd123", user_email:"email123@user.com", user_firstname:"Bobby123", user_lastname:"Burger123")
    expect(bob2).to be_invalid
  end

  it "returns the users first and last name" do
    expect(@bob.user_firstname).to eq("Bobby")
    expect(@bob.user_lastname).to eq("Burger")
  end

  it "needs all fields populated" do
    expect(User.new).to be_invalid
  end

  it "should fail when missing user_name" do
    @bob.user_name = ""
    expect(@bob).to be_invalid
  end

  it "should fail when missing user_firstname" do
    @bob.user_firstname = ""
    expect(@bob).to be_invalid
  end

  it "should fail when missing user_lastname" do
    @bob.user_lastname = ""
    expect(@bob).to be_invalid
  end

  it "should fail when missing user_email" do
    @bob.user_email = ""
    expect(@bob).to be_invalid
  end

  it "should fail when missing user_password" do
    @bob.user_password = ""
    expect(@bob).to be_invalid
  end

  it "should fail when firstname is shorter than 3" do
    @bob.user_firstname = "bb"
    expect(@bob).to be_invalid
  end

  it "should fail when firstname is longer than 20" do
    @bob.user_firstname = "w" * 21
    expect(@bob).to be_invalid
  end

end
