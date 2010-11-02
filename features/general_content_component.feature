Feature: General Content Component
  In order to add information on a page a website editor will be able to add text and images to content within component slots

  @javascript
  Scenario: Add a General Content component
    Given I am editing content
    When I click a "Small" component slot
    And select the "General Content" component
    And fill in the following within the component:
      | Title       | Big Promotion                    |
     #| Content     | A really big thing is happening! | TinyMCE
      | Link        | http://wearebeef.co.uk           |
    And I select an image from the asset library
    And I press "Save" within the component
    And I press "Publish"
    And I visit the content page
    Then I should see "Big Promotion"

