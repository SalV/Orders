require 'spec_helper'

describe "inventories/edit" do
  before(:each) do
    @inventory = assign(:inventory, stub_model(Inventory,
      :inv_id => "MyString",
      :s_desc => "MyString",
      :l_desc => "MyText",
      :image_path => "MyString",
      :origin => "MyString",
      :qty_on_hand => 1,
      :qty_on_order => 1,
      :qty_available => 1,
      :product_type => "MyString",
      :sale_price => 1.5
    ))
  end

  it "renders the edit inventory form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => inventories_path(@inventory), :method => "post" do
      assert_select "input#inventory_inv_id", :name => "inventory[inv_id]"
      assert_select "input#inventory_s_desc", :name => "inventory[s_desc]"
      assert_select "textarea#inventory_l_desc", :name => "inventory[l_desc]"
      assert_select "input#inventory_image_path", :name => "inventory[image_path]"
      assert_select "input#inventory_origin", :name => "inventory[origin]"
      assert_select "input#inventory_qty_on_hand", :name => "inventory[qty_on_hand]"
      assert_select "input#inventory_qty_on_order", :name => "inventory[qty_on_order]"
      assert_select "input#inventory_qty_available", :name => "inventory[qty_available]"
      assert_select "input#inventory_product_type", :name => "inventory[product_type]"
      assert_select "input#inventory_sale_price", :name => "inventory[sale_price]"
    end
  end
end
