require 'spec_helper'

describe "payments/show" do
  before(:each) do
    @payment = assign(:payment, stub_model(Payment,
      :trx_id => "Trx",
      :trx_type => "Trx Type",
      :amount_paid => 1.5,
      :pmt_type => "Pmt Type",
      :pmt_doc => "Pmt Doc",
      :comments => "MyText",
      :inv_adj_code => "Inv Adj Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Trx/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Trx Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Pmt Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Pmt Doc/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Inv Adj Code/)
  end
end
