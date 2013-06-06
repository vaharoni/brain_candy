require 'spec_helper'

describe "brain_candies/index" do
  before(:each) do
    assign(:brain_candies, [
      stub_model(BrainCandy,
        :name => "Name"
      ),
      stub_model(BrainCandy,
        :name => "Name"
      )
    ])
  end

  it "renders a list of brain_candies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
