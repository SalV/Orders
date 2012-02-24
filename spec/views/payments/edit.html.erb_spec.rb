require 'spec_helper'

describe "payments/edit" do
  before(:each) do
    @payment = assign(:payment, stub_model(Payment,
      :trx_id => "MyString",
      :trx_type => "MyString",
      :amount_paid => 1.5,
      :pmt_type => "MyString",
      :pmt_doc => "MyString",
      :comments => "MyText",
      :inv_adj_code => "MyString"
    ))
  end

  it "renders the edit payment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => payments_path(@payment), :method => "post" do
      assert_select "input#payment_trx_id", :name => "payment[trx_id]"
      assert_select "input#payment_trx_type", :name => "payment[trx_type]"
      assert_select "input#payment_amount_paid", :name => "payment[amount_paid]"
      assert_select "input#payment_pmt_type", :name => "payment[pmt_type]"
      assert_select "input#payment_pmt_doc", :name => "payment[pmt_doc]"
      assert_select "textarea#payment_comments", :name => "payment[comments]"
      assert_select "input#payment_inv_adj_code", :name => "payment[inv_adj_code]"
    end
  end
end
