require 'rails_helper'

RSpec.describe "tours/show", :type => :view do
  before(:each) do
    @tour = assign(:tour, Tour.create!(
      :title => "Title",
      :teaser => "Teaser",
      :description => "MyText",
      :url => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Teaser/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
