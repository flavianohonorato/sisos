require 'spec_helper'

describe "ordems/edit" do
  before(:each) do
    @ordem = assign(:ordem, stub_model(Ordem,
      :description => "MyText",
      :status => "MyString",
      :os => nil,
      :category => nil
    ))
  end

  it "renders the edit ordem form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ordems_path(@ordem), :method => "post" do
      assert_select "textarea#ordem_description", :name => "ordem[description]"
      assert_select "input#ordem_status", :name => "ordem[status]"
      assert_select "input#ordem_os", :name => "ordem[os]"
      assert_select "input#ordem_category", :name => "ordem[category]"
    end
  end
end
