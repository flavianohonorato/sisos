require 'spec_helper'

describe "ordems/show" do
  before(:each) do
    @ordem = assign(:ordem, stub_model(Ordem,
      :description => "MyText",
      :status => "Status",
      :os => nil,
      :category => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/Status/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
