require 'rails_helper'

RSpec.describe "weeks/index", :type => :view do
  before(:each) do
    assign(:weeks, [
      Week.create!(
        :mood => 1,
        :significance => 2,
        :journal => "MyText"
      ),
      Week.create!(
        :mood => 1,
        :significance => 2,
        :journal => "MyText"
      )
    ])
  end

  it "renders a list of weeks" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
