require 'rails_helper'

RSpec.describe "tours/new", :type => :view do
  before(:each) do
    assign(:tour, Tour.new(
      :title => "MyString",
      :teaser => "MyString",
      :description => "MyText",
      :url => "MyText"
    ))
  end

  it "renders new tour form" do
    render

    assert_select "form[action=?][method=?]", tours_path, "post" do

      assert_select "input#tour_title[name=?]", "tour[title]"

      assert_select "input#tour_teaser[name=?]", "tour[teaser]"

      assert_select "textarea#tour_description[name=?]", "tour[description]"

      assert_select "textarea#tour_url[name=?]", "tour[url]"
    end
  end
end
