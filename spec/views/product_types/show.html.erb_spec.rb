require 'spec_helper'

describe "product_types/show" do
  before(:each) do
    @product_type = assign(:product_type, stub_model(ProductType,
      :code => "Code",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Code/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
