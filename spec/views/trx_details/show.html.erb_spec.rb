require 'spec_helper'

describe "trx_details/show" do
  before(:each) do
    @trx_detail = assign(:trx_detail, stub_model(TrxDetail,
      :line_no => 1,
      :trx_id => "Trx",
      :item_id => "Item",
      :quan_ordered => 1,
      :quan_shipped => 1,
      :unit_price => 1.5,
      :comments => "MyText",
      :post => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Trx/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Item/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
