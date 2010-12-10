When /^(?:|I )click a "([^"]*)" component slot$/ do |slot_name|
  @_slot_type = slot_name.downcase
  within('ol#slot-list') do
    click_link "#{slot_name} Slot"
  end
end

When /^(?:|I )select the "([^\"]+)" component$/ do |component_name|
  within "#fancybox-inner" do
    select component_name, :from => 'Select the type of component'
  end
end

When /^(?:|I )fill in the following within the component:$/ do |fields|
  within "#fancybox-inner" do
    fields.rows_hash.each do |name, value|
      When %{I fill in "#{name}" with "#{value}"}
    end
  end
end

When /^(?:|I )press "([^\"]*)" within the component$/ do |button|
  within "#fancybox-inner" do
    click_button(button)
  end
end

When /^(?:|I )select an image from the asset library$/ do
  asset = Factory(:asset, :title => "My Image")
  within "#fancybox-inner" do
    page.find(:css, 'span.select-file').click
    # wait until there is an image to click on so that faster machines don't throw errors
    wait_until { page.has_css?("#browser-list li:first", :visible => true) }
    click_link "Add"
  end
end

