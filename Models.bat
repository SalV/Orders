rails generate scaffold Inventory inv_id:string s_desc:string l_desc:text image_path:string origin:string qty_on_hand:integer qty_on_order:integer qty_available:integer product_type:string sale_price:float
rails generate scaffold Company company_id:string company_name:string address1:string address2:string city:string state:string postal_code:string country:string phone1:string phone2:string fax:string dba:string business_since:date contact_name:string contact_email:string sales_tax_id:string credit_status:string comments:text business_type:string password_digest:string
rails generate scaffold ProductType code:string description:text
rails generate scaffold InvXRef company_id:string inv_id:string part_id:string
rails generate scaffold InvOrigin set_id:string element_id:string
rails generate scaffold TrxHeader company_id:string trx_type:string trx_id:string comments:text order_date:date ship_date:date order_ack_date:date total_amount:float close_date:date shipping_charges1:float shipping_charges2:float tracking_number:string carrier:string agent1:string bank_charges:float other_charges:float
rails generate scaffold TrxDetail line_no:integer trx_id:string item_id:string quan_ordered:integer quan_shipped:integer unit_price:float comments:text post:boolean 
rails generate scaffold Payment trx_id:string trx_type:string amount_paid:float pmt_date:date pmt_type:string pmt_doc:string comments:text inv_adj_code:string
rails generate controller StaticPages home help about admin
