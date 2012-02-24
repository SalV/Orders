require 'spec_helper'

describe "inv_origins/new" do
  before(:each) do
    assign(:inv_origin, stub_model(InvOrigin,
      :set_id => "MyString",
      :element_id => "MyString"
    ).as_new_record)
  end

  it "renders new inv_origin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => inv_origins_path, :method => "post" do
      assert_select "input#inv_origin_set_id", :name => "inv_origin[set_id]"
      assert_select "input#inv_origin_element_id", :name => "inv_origin[element_id]"
    end
  end
end
