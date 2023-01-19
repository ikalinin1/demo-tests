Meta:
  @epic API

Scenario: Get the data
When I get markets data

Scenario: Valiadte whole JSON response
Then JSON element from `${json-context}` by JSON path `$` is equal to `#{loadResource(/data/markets.json)}`


Scenario: Validate single market
Then JSON element from `${json-context}` by JSON path `$..*[?(@.name == '<country>')]` is equal to `#{loadResource(/data/<country>.json)}`

Examples:
|country |
|Denmark |
|Sweden  |
