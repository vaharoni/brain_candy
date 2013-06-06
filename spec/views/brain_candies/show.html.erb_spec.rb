require 'spec_helper'

describe "brain_candies/show" do
  before(:each) do
    @brain_candy = assign(:brain_candy, stub_model(BrainCandy,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
