Meta:
  @epic UI
  @requirementId JJ-2

Scenario: Open main application page
Given I am on a page with the URL 'https://orders.joejuice.com/'
When I click on element located by `cssSelector(button[aria-label|="Accept"])`


Scenario: Open Login form
When I click on element located by `dataCy(login-button)`
When I click on element located by `dataCy(login-menu-item)`
When I change context to element located `dataCy(login-page)`
When I compare against baseline with name `login-form`
When I compare against baseline with name `failure-example`
When I reset context


Scenario: Login
When I enter `${email}` in field located by `id(email)`
When I enter `${password}` in field located by `id(password)`
When I click on element located by `dataCy(login-form-login-button)`


Scenario: Logout
When I click on element located by `dataCy(login-button)`
When I click on element located by `caseSensitiveText(Logout)`
Then number of elements found by `caseSensitiveText(Sign up/Login)` is = `1`
