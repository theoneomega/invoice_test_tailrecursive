require 'rails_helper'

RSpec.describe "invoices/new", type: :view do
  before(:each) do
    assign(:invoice, Invoice.new(
      :amount => "9.99",
      :uuid => "MyString",
      :paid => false
    ))
  end

  it "renders new invoice form" do
    render

    assert_select "form[action=?][method=?]", invoices_path, "post" do

      assert_select "input[name=?]", "invoice[amount]"

      assert_select "input[name=?]", "invoice[uuid]"

      assert_select "input[name=?]", "invoice[paid]"
    end
  end
end
