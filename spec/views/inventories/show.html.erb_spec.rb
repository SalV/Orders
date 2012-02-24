require 'spec_helper'

describe "inventories/show" do
  before(:each) do
    @inventory = assign(:inventory, stub_model(Inventory,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Inv/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/S Desc/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Image Path/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Origin/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Product Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
  end
end
