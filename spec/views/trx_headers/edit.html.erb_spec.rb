require 'spec_helper'

describe "trx_headers/edit" do
  before(:each) do
    @trx_header = assign(:trx_header, stub_model(TrxHeader,
      :company_id => "MyString",
      :trx_type => "MyString",
      :trx_id => "MyString",
      :comments => "MyText",
      :total_amount => 1.5,
      :shipping_charges1 => 1.5,
      :shipping_charges2 => 1.5,
      :tracking_number => "MyString",
      :carrier => "MyString",
      :agent1 => "MyString",
      :bank_charges => 1.5,
      :other_charges => 1.5
    ))
  end

  it "renders the edit trx_header form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => trx_headers_path(@trx_header), :method => "post" do
      assert_select "input#trx_header_company_id", :name => "trx_header[company_id]"
      assert_select "input#trx_header_trx_type", :name => "trx_header[trx_type]"
      assert_select "input#trx_header_trx_id", :name => "trx_header[trx_id]"
      assert_select "textarea#trx_header_comments", :name => "trx_header[comments]"
      assert_select "input#trx_header_total_amount", :name => "trx_header[total_amount]"
      assert_select "input#trx_header_shipping_charges1", :name => "trx_header[shipping_charges1]"
      assert_select "input#trx_header_shipping_charges2", :name => "trx_header[shipping_charges2]"
      assert_select "input#trx_header_tracking_number", :name => "trx_header[tracking_number]"
      assert_select "input#trx_header_carrier", :name => "trx_header[carrier]"
      assert_select "input#trx_header_agent1", :name => "trx_header[agent1]"
      assert_select "input#trx_header_bank_charges", :name => "trx_header[bank_charges]"
      assert_select "input#trx_header_other_charges", :name => "trx_header[other_charges]"
    end
  end
end
