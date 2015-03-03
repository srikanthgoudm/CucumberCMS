@addPage
Feature: Add Feature Page,Feature Package and Edit,Delete a Feature Page in CMS
#As a an Admin
#I want to see CMS Pages
#so that I can add edit and delete a Page

  Background:
    Given I am Logged-In

  Scenario Outline: I can able to add a new Feature Page and Feature Package
    Given I am on the Pages Page
    When I add a Page,I supply '<Page Name>','<Page Title>','<Sub Title>','<Site>','<Language>','<Page Type>'
    And I save it
    Then the Page is created and should see message as 'The page was created successfully'
    And I should be navigate to the 'Edit page' Page
    When I add taxonomy for Page
    And I go back to Edit page
    And I change the Page status as 'Complete'
    And I save it
    Then I should see the message as 'The page was updated successfully'
    Examples:
      |Page Name       |Page Title | Sub Title     | Site          | Language         | Page Type|
      |TestFeaturePageLondon|LondonFeaturePage |TestSubTitle|UK - London| British English  | Feature |
      |TestHubPageLondon|LondonHubPage |TestSubTitle|UK - London| British English  | Hub |
      |TestFeaturePackageLondon|LondonFeaturePackage |TestSubTitle|UK - London| British English  | Package |
      |TestFeaturePageAtlanta|AtlantaFeaturePage |TestSubTitle|US - Atlanta |American English| Feature |
      |TestHubPageAtlanta|AtlantaHubPage |TestSubTitle|US - Atlanta |American English| Hub |
      |TestFeaturePackageAtlanta|AtlantaFeaturePackage|TestSubTitle|US - Atlanta | American English | Package |
#     |TestFeaturePageSeoul|SeoulFeaturePage|TestSubTitle|South Korea - Seoul|American English|Feature|
#      |TestFeaturePackageSeoul|SeoulFeaturePackage|TestSubTitle|South Korea - Seoul|American English|Package|
#      |TestFeaturePageTokyo|TokyoFeaturePage |TestSubTitle|Japan - Tokyo | American English | Feature |
#      |TestFeaturePageTokyo|TokyoFeaturePage |TestSubTitle|Japan - Tokyo | American English | Package |
#      |TestFeaturePageNashville|NashvilleFeaturePage |TestSubTitle|US - Nashville |American English| Feature |
#      |TestFeaturePackageNashville|NashvilleFeaturePackage|TestSubTitle|US - Nashville | American English | Package |
#      |TestHubPageNashville|NashvilleHubPage|TestSubTitle|US - Nashville | American English | Hub |
#      |TestHubPageCroatia|CroatiaHubPage |TestSubTitle|Croatia| British English  | Hub |
#      |TestFeaturePageCroatia|CroatiaFeaturePage |TestSubTitle|Croatia| British English  | Feature |
#      |TestFeaturePackageCroatia|CroatiaFeaturePackage |TestSubTitle|Croatia| British English  | Package |
#      |TestFeaturePageLuanda|LuandaFeaturePage|TestSubTitle|Angola - Luanda|Portuguese|Feature|
#      |TestHubPageLuanda|LuandaHubPage|TestSubTitle|Angola - Luanda|Portuguese|Hub|
#      |TestFeaturePackageLuanda|LuandaFeaturePackage|TestSubTitle|Angola - Luanda| Portuguese  | Package |
#      |TestHubPageHongKong|HongKongHubPage |TestSubTitle|Hong Kong| British English  | Hub |
#      |TestFeaturePageHongKong|HongKongFeaturePage |TestSubTitle|Hong Kong| British English  | Feature |
#      |TestFeaturePackageHongKong|HongKongFeaturePackage |TestSubTitle|Hong Kong| British English  | Package |

#      |TestFeaturePageTokyo-English|TokyoFeaturePage-English |TestSubTitle|Japan - Tokyo | American English | Feature |
#      |TestHubPageTokyo-English|TokyoHubPage-English |TestSubTitle|Japan - Tokyo | American English | Hub |
#      |TestFeaturePackageTokyo-English|TokyoFeaturePackage-English |TestSubTitle|Japan - Tokyo | American English | Package |
#      |TestFeaturePageTokyo-JP|TokyoFeaturePage-JP |TestSubTitle|Japan - Tokyo | Japanese | Feature |
#      |TestHubPageTokyo-JP|TokyoHubPage-JP |TestSubTitle|Japan - Tokyo | Japanese | Hub |
#      |TestFeaturePackageTokyo-JP|TokyoFeaturePackage-JP |TestSubTitle|Japan - Tokyo | Japanese | Package |
#     US 14 cities Configurations
#      |TestFeaturePageCleveland|ClevelandFeaturePage |TestSubTitle|US - Cleveland| American English  | Feature |
#      |TestHubPageCleveland|ClevelandHubPage |TestSubTitle|US - Cleveland| American English  | Hub |
#      |TestFeaturePackageCleveland|ClevelandFeaturePackage |TestSubTitle|US - Cleveland| American English  | Package |
#      |TestFeaturePageDenver|DenverFeaturePage |TestSubTitle|US - Denver| American English  | Feature |
#      |TestHubPageDenver|DenverHubPage |TestSubTitle|US - Denver| American English  | Hub |
#      |TestFeaturePackageDenver|DenverFeaturePackage |TestSubTitle|US - Denver| American English  | Package |
#      |TestFeaturePageDetroit|DetroitFeaturePage |TestSubTitle|US - Detroit| American English  | Feature |
#      |TestHubPageDetroit|DetroitHubPage |TestSubTitle|US - Detroit| American English  | Hub |
#      |TestFeaturePackageDetroit|DetroitFeaturePackage |TestSubTitle|US - Detroit| American English  | Package |
#      |TestFeaturePageMemphis|MemphisFeaturePage |TestSubTitle|US - Memphis| American English  | Feature |
#      |TestHubPageMemphis|MemphisHubPage |TestSubTitle|US - Memphis| American English  | Hub |
#      |TestFeaturePackageMemphis|MemphisFeaturePackage |TestSubTitle|US - Memphis| American English  | Package |
#      |TestFeaturePageMinneapolis|MinneapolisFeaturePage |TestSubTitle|US - Minneapolis| American English  | Feature |
#      |TestHubPageMinneapolis|MinneapolisHubPage |TestSubTitle|US - Minneapolis| American English  | Hub |
#      |TestFeaturePackageMinneapolis|MinneapolisFeaturePackage |TestSubTitle|US - Minneapolis| American English  | Package |
#      |TestFeaturePageNewOrleans|NewOrleansFeaturePage |TestSubTitle|US - New Orleans| American English  | Feature |
#      |TestHubPageNewOrleans|NewOrleansHubPage |TestSubTitle|US - New Orleans| American English  | Hub |
#      |TestFeaturePackageNewOrleans|NewOrleansFeaturePackage |TestSubTitle|US - New Orleans| American English  | Package |
#      |TestFeaturePageOrlando|OrlandoFeaturePage |TestSubTitle|US - Orlando| American English  | Feature |
#      |TestHubPageOrlando|OrlandoHubPage |TestSubTitle|US - Orlando| American English  | Hub |
#      |TestFeaturePackageOrlando|OrlandoFeaturePackage |TestSubTitle|US - Orlando| American English  | Package |
#      |TestFeaturePagePhoenix|PhoenixFeaturePage |TestSubTitle|US - Phoenix| American English  | Feature |
#      |TestHubPagePhoenix|PhoenixHubPage |TestSubTitle|US - Phoenix| American English  | Hub |
#      |TestFeaturePackagePhoenix|PhoenixFeaturePackage |TestSubTitle|US - Phoenix| American English  | Package |
#      |TestFeaturePagePittsburgh|PittsburghFeaturePage |TestSubTitle|US - Pittsburgh| American English  | Feature |
#      |TestHubPagePittsburgh|PittsburghHubPage |TestSubTitle|US - Pittsburgh| American English  | Hub |
#      |TestFeaturePackagePittsburgh|PittsburghFeaturePackage |TestSubTitle|US - Pittsburgh| American English  | Package |
#      |TestFeaturePagePortland|PortlandFeaturePage |TestSubTitle|US - Portland| American English  | Feature |
#      |TestHubPagePortland|PortlandHubPage |TestSubTitle|US - Portland| American English  | Hub |
#      |TestFeaturePackagePortland|PortlandFeaturePackage |TestSubTitle|US - Portland| American English  | Package |
#      |TestFeaturePageSacramento|SacramentoFeaturePage |TestSubTitle|US - Sacramento| American English  | Feature |
#      |TestHubPageSacramento|SacramentoHubPage |TestSubTitle|US - Sacramento| American English  | Hub |
#      |TestFeaturePackageSacramento|SacramentoFeaturePackage |TestSubTitle|US - Sacramento| American English  | Package |
#      |TestFeaturePageSanDiego|SanDiegoFeaturePage |TestSubTitle|US – San Diego| American English  | Feature |
#      |TestHubPageSanDiego|SanDiegoHubPage |TestSubTitle|US – San Diego| American English  | Hub |
#      |TestFeaturePackageSanDiego|SanDiegoFeaturePackage |TestSubTitle|US – San Diego| American English  | Package |
#      |TestFeaturePageStLouis|StLouisFeaturePage |TestSubTitle|US – St Louis| American English  | Feature |
#      |TestHubPageStLouis|StLouisHubPage |TestSubTitle|US – St Louis| American English  | Hub |
#      |TestFeaturePackageStLouis|StLouisFeaturePackage |TestSubTitle|US – St Louis| American English  | Package |
#      |TestFeaturePageTampa|TampaFeaturePage |TestSubTitle|US – Tampa| American English  | Feature |
#      |TestHubPageTampa|TampaHubPage |TestSubTitle|US – Tampa| American English  | Hub |
#      |TestFeaturePackageTampa|TampaFeaturePackage |TestSubTitle|US – Tampa| American English  | Package |


  @editAndDeletePage
  Scenario Outline: I can able to find the newly added Pages in the list and I can Edit and Delete
    Given I am on the Pages Page
    When I search for the Page with Keyword '<Page Title>',Site as '<Site>' and Status as 'Complete'
    And I select the recently created Page with the name '<Page Title>'
    Then I should be navigate to the 'Edit page' Page
    When I changes event Subtitle as '<subtitle>' and status as '<Status>'
    And I save the Page
    Then I should see the message as 'The page was updated successfully'
  Examples:
    |Page Title|Site|subtitle|Status|
    |LondonFeaturePage|UK - London|Modified Test Sub Title|Complete |
    |LondonFeaturePage|UK - London|Deleting This Page|Deleted |
    |AtlantaFeaturePage|US - Atlanta|Modified Test Sub Title|Complete |
    |AtlantaFeaturePage|US - Atlanta|Deleting This Page|Deleted |
#    |SeoulFeaturePage|South Korea - Seoul|Modified Test Sub Title|Complete |
#    |SeoulFeaturePage|South Korea - Seoul|Deleting This Page|Deleted  |
#    |TokyoFeaturePage|Japan - Tokyo|Modified Test Sub Title|Complete |
#    |TokyoFeaturePage|Japan - Tokyo|Deleting This Page|Deleted |
#    |NashvilleFeaturePage|US - Nashville|Modified Test Sub Title|Complete |
#    |NashvilleFeaturePage|US - Nashville|Deleting This Page|Deleted |
#    |CroatiaFeaturePage|Croatia|Modified Test Sub Title|Complete |
#    |CroatiaFeaturePage|Croatia|Deleting This Page|Deleted |
#    |LuandaFeaturePage|Angola - Luanda|Modified Test Sub Title|Complete |
#    |LuandaFeaturePage|Angola - Luanda|Deleting This Page|Deleted |
#    |HongKongFeaturePage|Hong Kong|Modified Test Sub Title|Complete |
#    |HongKongFeaturePage|Hong Kong|Modified Test Sub Title|Deleted |
#    |TokyoFeaturePage-English|Japan - Tokyo|Modified Test Sub Title|Complete |
#    |TokyoFeaturePage-English|Japan - Tokyo|Deleting This Page|Deleted |
#    |TokyoFeaturePage-JP|Japan - Tokyo|Modified Test Sub Title|Complete |
#    |TokyoFeaturePage-JP|Japan - Tokyo|Deleting This Page|Deleted |
    #     US 14 cities Configurations
#    |ClevelandFeaturePage|US - Cleveland|Modified Test Sub Title|Complete |
#    |ClevelandFeaturePage|US - Cleveland|Deleting This Page|Deleted |
#    |DenverFeaturePage|US - Denver|Modified Test Sub Title|Complete |
#    |DenverFeaturePage|US - Denver|Deleting This Page|Deleted |
#    |DetroitFeaturePage|US - Detroit|Modified Test Sub Title|Complete |
#    |DetroitFeaturePage|US - Detroit|Deleting This Page|Deleted |
#    |MemphisFeaturePage|US - Memphis|Modified Test Sub Title|Complete |
#    |MemphisFeaturePage|US - Memphis|Deleting This Page|Deleted |
#    |MinneapolisFeaturePage|US - Minneapolis|Modified Test Sub Title|Complete |
#    |MinneapolisFeaturePage|US - Minneapolis|Deleting This Page|Deleted |
#    |NewOrleansFeaturePage|US – New Orleans |Modified Test Sub Title|Complete |
#    |NewOrleansFeaturePage|US – New Orleans |Deleting This Page|Deleted |
#    |OrlandoFeaturePage|US - Orlando|Modified Test Sub Title|Complete |
#    |OrlandoFeaturePage|US - Orlando|Deleting This Page|Deleted |
#    |PhoenixFeaturePage|US - Phoenix|Modified Test Sub Title|Complete |
#    |PhoenixFeaturePage|US - Phoenix|Deleting This Page|Deleted |
#    |PittsburghFeaturePage|US - Pittsburgh|Modified Test Sub Title|Complete |
#    |PittsburghFeaturePage|US - Pittsburgh|Deleting This Page|Deleted |
#    |PortlandFeaturePage|US - Portland|Modified Test Sub Title|Complete |
#    |PortlandFeaturePage|US - Portland|Deleting This Page|Deleted |
#    |SacramentoFeaturePage|US – Sacramento|Modified Test Sub Title|Complete |
#    |SacramentoFeaturePage|US – Sacramento|Deleting This Page|Deleted |
#    |SanDiegoFeaturePage|US – San Diego|Modified Test Sub Title|Complete |
#    |SanDiegoFeaturePage|US – San Diego|Deleting This Page|Deleted |
#    |StLouisFeaturePage|US – St Louis|Modified Test Sub Title|Complete |
#    |StLouisFeaturePage|US – St Louis|Deleting This Page|Deleted |
#    |TampaFeaturePage|US – Tampa|Modified Test Sub Title|Complete |
#    |TampaFeaturePage|US – Tampa|Deleting This Page|Deleted |


#    @addEditDeleteZone
#    Scenario: I can able to add a New Zone to the existing Page
#      Given I am on the Pages Page
#      When I search for the Page with Keyword 'Test Feature',Site as 'UK - London' and Status as 'Complete'
#      And I select the recently created Page with the name 'Test Feature'
#      Then I should be navigate to the 'Edit page' Page