require 'rails_helper'

RSpec.describe "aulas/index", type: :view do
  before(:each) do
    assign(:aulas, [
      Aula.create!(
        :subject => nil
      ),
      Aula.create!(
        :subject => nil
      )
    ])
  end

  it "renders a list of aulas" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
