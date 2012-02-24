require 'spec_helper'

describe "inventories/index" do
  before(:each) do
    assign(:inventories, [
      stub_model(Inventory,
        :inv_id => "Inv",
        :s_desc => "S Desc",
        :l_desc => "MyText",
        :image_path => "Image Path",
        :origin => "Origin",
        :qty_on_hand => 1,
        :qty_on_order => 1,
        :qty_available => 1,
        :product_type => "Product Type",
        :sale_price => 1.5
      ),
      stub_model(Inventory,
        :inv_id => "Inv",
        :s_desc => "S Desc",
        :l_desc => "MyText",
        :image_path => "Image Path",
        :origin => "Origin",
        :qty_on_hand => 1,
        :qty_on_order => 1,
        :qty_available => 1,
        :product_type => "Product Type",
        :sale_price => 1.5
      )
    ])
  end

  it "renders a list of inventories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Inv".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "S Desc".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Image Path".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Origin".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Product Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
