require 'spec_helper'

describe "companies/show" do
  before(:each) do
    @company = assign(:company, stub_model(Company,
      :company_id => "Company",
      :company_name => "Company Name",
      :address1 => "Address1",
      :address2 => "Address2",
      :city => "City",
      :state => "State",
      :postal_code => "Postal Code",
      :country => "Country",
      :phone1 => "Phone1",
      :phone2 => "Phone2",
      :fax => "Fax",
      :dba => "Dba",
      :contact_name => "Contact Name",
      :contact_email => "Contact Email",
      :sales_tax_id => "Sales Tax",
      :credit_status => "Credit Status",
      :comments => "MyText",
      :business_type => "Business Type",
      :password_digest => "Password Digest"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Company/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Company Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address2/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/City/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/State/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Postal Code/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Country/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Phone1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Phone2/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Fax/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Dba/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Contact Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Contact Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sales Tax/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Credit Status/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Business Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Password Digest/)
  end
end
