require 'spec_helper'

describe "inv_x_refs/new" do
  before(:each) do
    assign(:inv_x_ref, stub_model(InvXRef,
      :company_id => "MyString",
      :inv_id => "MyString",
      :part_id => "MyString"
    ).as_new_record)
  end

  it "renders new inv_x_ref form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => inv_x_refs_path, :method => "post" do
      assert_select "input#inv_x_ref_company_id", :name => "inv_x_ref[company_id]"
      assert_select "input#inv_x_ref_inv_id", :name => "inv_x_ref[inv_id]"
      assert_select "input#inv_x_ref_part_id", :name => "inv_x_ref[part_id]"
    end
  end
end
