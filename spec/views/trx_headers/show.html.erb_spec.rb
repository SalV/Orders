require 'spec_helper'

describe "trx_headers/show" do
  before(:each) do
    @trx_header = assign(:trx_header, stub_model(TrxHeader,
      :company_id => "Company",
      :trx_type => "Trx Type",
      :trx_id => "Trx",
      :comments => "MyText",
      :total_amount => 1.5,
      :shipping_charges1 => 1.5,
      :shipping_charges2 => 1.5,
      :tracking_number => "Tracking Number",
      :carrier => "Carrier",
      :agent1 => "Agent1",
      :bank_charges => 1.5,
      :other_charges => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Company/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Trx Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Trx/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tracking Number/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Carrier/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Agent1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
  end
end
