require 'rails_helper'

RSpec.describe "tours/edit", :type => :view do
  before(:each) do
    @tour = assign(:tour, Tour.create!(
      :title => "MyString",
      :teaser => "MyString",
      :description => "MyText",
      :url => "MyText"
    ))
  end

  it "renders the edit tour form" do
    render

    assert_select "form[action=?][method=?]", tour_path(@tour), "post" do

      assert_select "input#tour_title[name=?]", "tour[title]"

      assert_select "input#tour_teaser[name=?]", "tour[teaser]"

      assert_select "textarea#tour_description[name=?]", "tour[description]"

      assert_select "textarea#tour_url[name=?]", "tour[url]"
    end
  end
end
