require 'spec_helper'

describe "inv_origins/show" do
  before(:each) do
    @inv_origin = assign(:inv_origin, stub_model(InvOrigin,
      :set_id => "Set",
      :element_id => "Element"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Set/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Element/)
  end
end
