Meta:
  @epic API

Scenario: Get the data
When I get markets data

Scenario: Validate single market
Then JSON element from `${json-context}` by JSON path `$..*[?(@.name == 'Denmark')]` is equal to `#{loadResource(/data/denmark-invalid-data.json)}`
