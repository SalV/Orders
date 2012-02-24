require 'spec_helper'

describe "companies/edit" do
  before(:each) do
    @company = assign(:company, stub_model(Company,
      :company_id => "MyString",
      :company_name => "MyString",
      :address1 => "MyString",
      :address2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :postal_code => "MyString",
      :country => "MyString",
      :phone1 => "MyString",
      :phone2 => "MyString",
      :fax => "MyString",
      :dba => "MyString",
      :contact_name => "MyString",
      :contact_email => "MyString",
      :sales_tax_id => "MyString",
      :credit_status => "MyString",
      :comments => "MyText",
      :business_type => "MyString",
      :password_digest => "MyString"
    ))
  end

  it "renders the edit company form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => companies_path(@company), :method => "post" do
      assert_select "input#company_company_id", :name => "company[company_id]"
      assert_select "input#company_company_name", :name => "company[company_name]"
      assert_select "input#company_address1", :name => "company[address1]"
      assert_select "input#company_address2", :name => "company[address2]"
      assert_select "input#company_city", :name => "company[city]"
      assert_select "input#company_state", :name => "company[state]"
      assert_select "input#company_postal_code", :name => "company[postal_code]"
      assert_select "input#company_country", :name => "company[country]"
      assert_select "input#company_phone1", :name => "company[phone1]"
      assert_select "input#company_phone2", :name => "company[phone2]"
      assert_select "input#company_fax", :name => "company[fax]"
      assert_select "input#company_dba", :name => "company[dba]"
      assert_select "input#company_contact_name", :name => "company[contact_name]"
      assert_select "input#company_contact_email", :name => "company[contact_email]"
      assert_select "input#company_sales_tax_id", :name => "company[sales_tax_id]"
      assert_select "input#company_credit_status", :name => "company[credit_status]"
      assert_select "textarea#company_comments", :name => "company[comments]"
      assert_select "input#company_business_type", :name => "company[business_type]"
      assert_select "input#company_password_digest", :name => "company[password_digest]"
    end
  end
end
