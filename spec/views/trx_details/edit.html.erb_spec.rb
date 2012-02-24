require 'spec_helper'

describe "trx_details/edit" do
  before(:each) do
    @trx_detail = assign(:trx_detail, stub_model(TrxDetail,
      :line_no => 1,
      :trx_id => "MyString",
      :item_id => "MyString",
      :quan_ordered => 1,
      :quan_shipped => 1,
      :unit_price => 1.5,
      :comments => "MyText",
      :post => false
    ))
  end

  it "renders the edit trx_detail form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => trx_details_path(@trx_detail), :method => "post" do
      assert_select "input#trx_detail_line_no", :name => "trx_detail[line_no]"
      assert_select "input#trx_detail_trx_id", :name => "trx_detail[trx_id]"
      assert_select "input#trx_detail_item_id", :name => "trx_detail[item_id]"
      assert_select "input#trx_detail_quan_ordered", :name => "trx_detail[quan_ordered]"
      assert_select "input#trx_detail_quan_shipped", :name => "trx_detail[quan_shipped]"
      assert_select "input#trx_detail_unit_price", :name => "trx_detail[unit_price]"
      assert_select "textarea#trx_detail_comments", :name => "trx_detail[comments]"
      assert_select "input#trx_detail_post", :name => "trx_detail[post]"
    end
  end
end
