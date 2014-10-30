require 'rails_helper'

RSpec.describe "weeks/show", :type => :view do
  before(:each) do
    @week = assign(:week, Week.create!(
      :mood => 1,
      :significance => 2,
      :journal => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
  end
end
