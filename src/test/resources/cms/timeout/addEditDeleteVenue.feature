@addVenue
Feature: Add,Edit and delete a Venue in CMS
#As a an Admin
#I want to see Venue Page
#so that I can add edit and delete a Venue

  Background:
    Given I am Logged-In

  Scenario Outline: I can able to add a new venue
    When I add a Venue, I supply the information '<Site>','<Language>','<Venue>','<City>'
    And I save it
    Then the Venue is created and should see message as 'The venue was created successfully.'
    And I should be navigate to the 'Edit venue' Page
    When I add taxonomy for Venue
    And I go back to Edit Venue Page
    And I change the Venue status as 'Complete'
    And I save it
    Then I should see the message as 'The venue was saved successfully.'
#    And I logout
#    Then I should redirect to Login Page
Examples:
  |Site |Language|Venue|City|
  |UK - London |British English|AutoTestVenueLondon|London|
  |South Korea - Seoul|American English|AutoTestVenueSeoul|Seoul|
#  |Japan - Tokyo|American English|EnglishVenueTokyo|Tokyo|
#  |Japan - Tokyo|Japanese|JapaneseVenueTokyo|Tokyo|
#  |US - Nashville |American English|AutoTestVenueNashville|Nashville|
#  |Croatia |British English|AutoTestVenueCroatia|Croatia|
#  |Angola - Luanda|Portuguese|AutoTestVenueLuanda|Luanda|
#  |Hong Kong |British English|AutoTestVenueHongKong|Hong Kong|
 #     US 14 cities Configurations
#  |US - Cleveland |American English|AutoTestVenueCleveland|Cleveland|
#  |US - Denver |American English|AutoTestVenueDenver|Denver|
#  |US - Detroit |American English|AutoTestVenueDetroit|Detroit|
#  |US - Memphis |American English|AutoTestVenueMemphis|Memphis|
#  |US - Minneapolis |American English|AutoTestVenueMinneapolis|Minneapolis|
#  |US - New Orleans |American English|AutoTestVenueNewOrleans|New Orleans|
#  |US - Orlando|American English|AutoTestVenueOrlando|Orlando|
#  |US - Phoenix |American English|AutoTestVenuePhoenix|Phoenix|
#  |US - Pittsburgh|American English|AutoTestVenuePittsburgh|Pittsburgh|
#  |US - Portland |American English|AutoTestVenuePortland|Portland|
#  |US - Sacramento|American English|AutoTestVenueSacramento|Sacramento|
#  |US - San Diego |American English|AutoTestVenueSanDiego |San Diego |
#  |US - St Louis|American English|AutoTestVenueStLouis|St Louis|
#  |US - Tampa |American English|AutoTestVenueTampa |Tampa |

  @editanddeleteVenue
  Scenario Outline: I can able to find the newly added venue in the list and I can Edit and Delete
    Given I am on the Venues Page
    When I search venue with the Name '<Venue>',Site '<Site>',Status 'Complete' and UpdatedInLast 'Week'
    And I select the recently created Venue with the name '<Venue>'
    Then I should be navigate to the 'Edit venue' Page
    When I changes the BuildingNo as 'Auto-Test-Building_01' and Author as 'Srikanth' and Status as '<Status>'
    And I change the Posted Date as currentdate
    And I save the Venue
    Then I should see the message as 'The venue was saved successfully.'
  Examples:
  |Venue|Site|Status|
  |AutoTestVenueLondon|UK - London|Complete|
  |AutoTestVenueLondon|UK - London|Deleted |
  |AutoTestVenueSeoul|South Korea - Seoul |Complete|
  |AutoTestVenueSeoul|South Korea - Seoul |Deleted|
#  |JapaneseVenueTokyo|Japan - Tokyo |Complete|
#  |AutoTestVenueTokyo|Japan - Tokyo |Deleted|
#  |AutoTestVenueCroatia|Croatia|Complete|
#  |AutoTestVenueCroatia|Croatia|Deleted |
#  |AutoTestVenueNashville|US - Nashville|Complete|
#  |AutoTestVenueNashville|US - Nashville|Deleted |
#  |AutoTestVenueLuanda|Angola - Luanda|Complete|
#  |AutoTestVenueLuanda|Angola - Luanda|Deleted|
#  |AutoTestVenueHongKong|Hong Kong|Complete|
#  |AutoTestVenueHongKong|Hong Kong|Deleted|
#  |EnglishVenueTokyo|Japan - Tokyo |Complete|
#  |EnglishVenueTokyo|Japan - Tokyo |Deleted|
#  |JapaneseVenueTokyo|Japan - Tokyo |Complete|
#  |JapaneseVenueTokyo|Japan - Tokyo |Deleted|
  #     US 14 cities Configurations
#  |AutoTestVenueCleveland|US - Cleveland|Complete|
#  |AutoTestVenueCleveland|US - Cleveland|Deleted|
#  |AutoTestVenueDenver|US - Denver | Complete|
#  |AutoTestVenueDenver|US - Denver | Deleted|
#  |AutoTestVenueDetroit|US - Detroit | Complete|
#  |AutoTestVenueDetroit|US - Detroit | Deleted|
#  |AutoTestVenueMemphis|US - Memphis | Complete|
#  |AutoTestVenueMemphis|US - Memphis | Deleted|
#  |AutoTestVenueMinneapolis|US - Minneapolis | Complete|
#  |AutoTestVenueMinneapolis|US - Minneapolis | Deleted|
#  |AutoTestVenueNewOrleans|US - New Orleans | Complete|
#  |AutoTestVenueNewOrleans  |US - New Orleans | Deleted|
#  | AutoTestVenueOrlando|US - Orlando| Complete|
#  | AutoTestVenueOrlando|US - Orlando| Deleted|
#  | AutoTestVenuePhoenix|US - Phoenix | Complete|
#  | AutoTestVenuePhoenix|US - Phoenix | Deleted|
#  | AutoTestVenuePittsburgh|US - Pittsburgh| Complete|
#  | AutoTestVenuePittsburgh|US - Pittsburgh| Deleted|
#  | AutoTestVenuePortland|US - Portland | Complete|
#  | AutoTestVenuePortland|US - Portland | Deleted|
#  | AutoTestVenueSacramento|US - Sacramento| Complete|
#  | AutoTestVenueSacramento|US - Sacramento| Deleted|
#  | AutoTestVenueSanDiego |US - San Diego | Complete|
#  | AutoTestVenueSanDiego |US - San Diego | Deleted|
#  | AutoTestVenueStLouis|US - St Louis| Complete|
#  | AutoTestVenueStLouis|US - St Louis| Deleted|
#  | AutoTestVenueTampa |US - Tampa | Complete|
#  | AutoTestVenueTampa |US - Tampa | Deleted|
