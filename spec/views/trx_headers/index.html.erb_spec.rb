require 'spec_helper'

describe "trx_headers/index" do
  before(:each) do
    assign(:trx_headers, [
      stub_model(TrxHeader,
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
      ),
      stub_model(TrxHeader,
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
      )
    ])
  end

  it "renders a list of trx_headers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Trx Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Trx".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tracking Number".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Carrier".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Agent1".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
