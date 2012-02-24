require 'spec_helper'

describe "inv_origins/index" do
  before(:each) do
    assign(:inv_origins, [
      stub_model(InvOrigin,
        :set_id => "Set",
        :element_id => "Element"
      ),
      stub_model(InvOrigin,
        :set_id => "Set",
        :element_id => "Element"
      )
    ])
  end

  it "renders a list of inv_origins" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Set".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Element".to_s, :count => 2
  end
end
