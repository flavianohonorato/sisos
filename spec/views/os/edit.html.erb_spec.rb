require 'spec_helper'

describe "os/edit" do
  before(:each) do
    @o = assign(:o, stub_model(O,
      :produto => "MyString"
    ))
  end

  it "renders the edit o form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => os_path(@o), :method => "post" do
      assert_select "input#o_produto", :name => "o[produto]"
    end
  end
end
