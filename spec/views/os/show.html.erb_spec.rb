require 'spec_helper'

describe "os/show" do
  before(:each) do
    @o = assign(:o, stub_model(O,
      :produto => "Produto"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Produto/)
  end
end
