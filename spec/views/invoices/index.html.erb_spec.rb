require 'rails_helper'

RSpec.describe "invoices/index", type: :view do
  before(:each) do
    assign(:invoices, [
      Invoice.create!(
        :amount => "9.99",
        :uuid => "Uuid",
        :paid => false
      ),
      Invoice.create!(
        :amount => "9.99",
        :uuid => "Uuid",
        :paid => false
      )
    ])
  end

  it "renders a list of invoices" do
    render
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Uuid".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
