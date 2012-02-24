require 'spec_helper'

describe "inv_origins/edit" do
  before(:each) do
    @inv_origin = assign(:inv_origin, stub_model(InvOrigin,
      :set_id => "MyString",
      :element_id => "MyString"
    ))
  end

  it "renders the edit inv_origin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => inv_origins_path(@inv_origin), :method => "post" do
      assert_select "input#inv_origin_set_id", :name => "inv_origin[set_id]"
      assert_select "input#inv_origin_element_id", :name => "inv_origin[element_id]"
    end
  end
end
