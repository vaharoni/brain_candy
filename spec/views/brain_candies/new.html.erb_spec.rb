require 'spec_helper'

describe "brain_candies/new" do
  before(:each) do
    assign(:brain_candy, stub_model(BrainCandy,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new brain_candy form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", brain_candies_path, "post" do
      assert_select "input#brain_candy_name[name=?]", "brain_candy[name]"
    end
  end
end
