require 'spec_helper'

describe "inv_x_refs/show" do
  before(:each) do
    @inv_x_ref = assign(:inv_x_ref, stub_model(InvXRef,
      :company_id => "Company",
      :inv_id => "Inv",
      :part_id => "Part"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Company/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Inv/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Part/)
  end
end
