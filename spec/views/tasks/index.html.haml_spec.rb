require 'spec_helper'

describe "tasks/index.html.haml" do
  before(:each) do
    assign(:tasks, [
      stub_model(Task,
        :name => "Name",
        :done => false
      ),
      stub_model(Task,
        :name => "Name",
        :done => false
      )
    ])
  end

  it "renders a list of tasks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
