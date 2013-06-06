require 'spec_helper'

describe "brain_candies/edit" do
  before(:each) do
    @brain_candy = assign(:brain_candy, stub_model(BrainCandy,
      :name => "MyString"
    ))
  end

  it "renders the edit brain_candy form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", brain_candy_path(@brain_candy), "post" do
      assert_select "input#brain_candy_name[name=?]", "brain_candy[name]"
    end
  end
end
