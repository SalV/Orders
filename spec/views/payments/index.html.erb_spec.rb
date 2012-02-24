require 'spec_helper'

describe "payments/index" do
  before(:each) do
    assign(:payments, [
      stub_model(Payment,
        :trx_id => "Trx",
        :trx_type => "Trx Type",
        :amount_paid => 1.5,
        :pmt_type => "Pmt Type",
        :pmt_doc => "Pmt Doc",
        :comments => "MyText",
        :inv_adj_code => "Inv Adj Code"
      ),
      stub_model(Payment,
        :trx_id => "Trx",
        :trx_type => "Trx Type",
        :amount_paid => 1.5,
        :pmt_type => "Pmt Type",
        :pmt_doc => "Pmt Doc",
        :comments => "MyText",
        :inv_adj_code => "Inv Adj Code"
      )
    ])
  end

  it "renders a list of payments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Trx".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Trx Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Pmt Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Pmt Doc".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Inv Adj Code".to_s, :count => 2
  end
end
