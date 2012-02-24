require 'spec_helper'

describe "trx_details/index" do
  before(:each) do
    assign(:trx_details, [
      stub_model(TrxDetail,
        :line_no => 1,
        :trx_id => "Trx",
        :item_id => "Item",
        :quan_ordered => 1,
        :quan_shipped => 1,
        :unit_price => 1.5,
        :comments => "MyText",
        :post => false
      ),
      stub_model(TrxDetail,
        :line_no => 1,
        :trx_id => "Trx",
        :item_id => "Item",
        :quan_ordered => 1,
        :quan_shipped => 1,
        :unit_price => 1.5,
        :comments => "MyText",
        :post => false
      )
    ])
  end

  it "renders a list of trx_details" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Trx".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Item".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
