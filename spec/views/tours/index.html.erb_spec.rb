require 'rails_helper'

RSpec.describe "tours/index", :type => :view do
  before(:each) do
    assign(:tours, [
      Tour.create!(
        :title => "Title",
        :teaser => "Teaser",
        :description => "MyText",
        :url => "MyText"
      ),
      Tour.create!(
        :title => "Title",
        :teaser => "Teaser",
        :description => "MyText",
        :url => "MyText"
      )
    ])
  end

  it "renders a list of tours" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Teaser".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
