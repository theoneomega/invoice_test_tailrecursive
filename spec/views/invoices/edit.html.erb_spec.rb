require 'rails_helper'

RSpec.describe "invoices/edit", type: :view do
  before(:each) do
    @invoice = assign(:invoice, Invoice.create!(
      :amount => "9.99",
      :uuid => "MyString",
      :paid => false
    ))
  end

  it "renders the edit invoice form" do
    render

    assert_select "form[action=?][method=?]", invoice_path(@invoice), "post" do

      assert_select "input[name=?]", "invoice[amount]"

      assert_select "input[name=?]", "invoice[uuid]"

      assert_select "input[name=?]", "invoice[paid]"
    end
  end
end
