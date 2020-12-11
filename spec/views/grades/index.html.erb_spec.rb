require 'rails_helper'

RSpec.describe "grades/index", type: :view do
  before(:each) do
    assign(:grades, [
      Grade.create!(
        :nome => "Nome",
        :user => nil
      ),
      Grade.create!(
        :nome => "Nome",
        :user => nil
      )
    ])
  end

  it "renders a list of grades" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
