require 'spec_helper'

describe "tasks/edit.html.haml" do
  before(:each) do
    @task = assign(:task, stub_model(Task,
      :name => "MyString",
      :done => false
    ))
  end

  it "renders the edit task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tasks_path(@task), :method => "post" do
      assert_select "input#task_name", :name => "task[name]"
      assert_select "input#task_done", :name => "task[done]"
    end
  end
end
