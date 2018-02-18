Feature: Rock, Paper, Scissors where Scissors wins

# As a player
# I want scissors to beat paper
# So that I can play with rules I'm familiar with

  Scenario Outline: <my choice> vs <their choice>
    Given I have chosen "<my choice>"
    When the opponent chooses "<their choice>"
    Then I should <expected>

    Examples:
      | my choice | their choice | expected |
      | scissors  | paper        | win      |
      | paper     | scissors     | lose     |