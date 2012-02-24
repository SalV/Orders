require 'spec_helper'

describe "inv_x_refs/index" do
  before(:each) do
    assign(:inv_x_refs, [
      stub_model(InvXRef,
        :company_id => "Company",
        :inv_id => "Inv",
        :part_id => "Part"
      ),
      stub_model(InvXRef,
        :company_id => "Company",
        :inv_id => "Inv",
        :part_id => "Part"
      )
    ])
  end

  it "renders a list of inv_x_refs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Inv".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Part".to_s, :count => 2
  end
end
