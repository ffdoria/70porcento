require 'rails_helper'

RSpec.describe "presencas/index", type: :view do
  before(:each) do
    assign(:presencas, [
      Presenca.create!(
        :compareceu => "",
        :aula => nil
      ),
      Presenca.create!(
        :compareceu => "",
        :aula => nil
      )
    ])
  end

  it "renders a list of presencas" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
