#Author: shaheer.alisha@cognizant.com
Feature: Amend booking in PremierInn web portal

  Scenario Outline: Change the arrival date to different date for the given set of BookingReferences
    Given user opens homepage
    When user select Manage Booking
    Then enter "<BookingReference>","<LastName>", "<ArrivalDate>" to search booking
    Then verify the booking information "<BookingReference>" and click on Amend Booking
    Then click on arrival date field and change the date
    And capture the Rooms available information in csv file "<BookingReference>"

    Examples: 
      | BookingReference | LastName | ArrivalDate |
      | AYHR171492       | Tester   | 21-June-21  |
      | BGIR73460        | Tester   | 21-June-21  |
      | BFER85199        | Tester   | 21-June-21  |
      | AYHR171905       | Tester   | 21-June-21  |