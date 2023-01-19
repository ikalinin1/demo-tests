Meta:
  @epic healthcheck

Scenario: Validate images availablity.
Then all resources by selector `img` are valid on:
{transformer=FROM_SITEMAP, siteMapRelativeUrl=/sitemap.xml, ignoreErrors=true, column=pages}
