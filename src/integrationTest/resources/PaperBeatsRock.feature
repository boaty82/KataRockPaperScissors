Feature: Rock, Paper, Scissors where Paper wins

# As a player
# I want paper to beat rock
# So that I can play with rules I'm familiar with

  Scenario Outline: Paper beats rock - <my choice> vs <their choice>
    Given I have chosen "<my choice>"
    When the opponent chooses "<their choice>"
    Then I should <expected>

    Examples:
      | my choice | their choice | expected |
      | paper     | rock         | win      |
      | rock      | paper        | lose     |

