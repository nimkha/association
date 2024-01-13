require 'rails_helper'

RSpec.describe Group, type: :model do
  
  before :each do
    @oc = Group.create(group_name:"Operations")
  end

  it "should be unique" do
    oc2 = Group.create(group_name:"Operations")
    expect(oc2).to be_invalid
  end

  it "needs all fields populated" do
    expect(Group.new).to be_invalid
  end

  it "should fail when missing name" do
    @oc.group_name = ""
    expect(@oc).to be_invalid
  end

  it "should fail when name is shorter than 4" do
    @oc.group_name = "rrr"
    expect(@oc).to be_invalid
  end

  it "should fail when name is shorter than 4" do
    @oc.group_name = "rrr"
    expect(@oc).to be_invalid
  end

  it "should fail when name is longer than 20" do
    @oc.group_name = "r" * 21
    expect(@oc).to be_invalid
  end

end
