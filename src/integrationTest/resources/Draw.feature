Feature: Rock, Paper, Scissors where result is a draw

  Scenario Outline: Same moves result in a draw - <my choice> vs <their choice>
    Given I have chosen "<my choice>"
    When the opponent chooses "<their choice>"
    Then I should <expected>

    Examples:
      | my choice | their choice | expected |
      | rock      | rock         | draw     |
      | scissors  | scissors     | draw     |
      | paper     | paper        | draw     |