require 'spec_helper'

describe "product_types/index" do
  before(:each) do
    assign(:product_types, [
      stub_model(ProductType,
        :code => "Code",
        :description => "MyText"
      ),
      stub_model(ProductType,
        :code => "Code",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of product_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
