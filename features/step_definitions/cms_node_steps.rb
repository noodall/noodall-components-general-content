Given /^I am editing content$/ do
  @_content = Factory(:page_a)
  visit noodall_admin_node_path(@_content)
end

When /^(?:I|a website visitor) visit(?:s|) the content page$/ do
  visit node_path(@_content)
end

