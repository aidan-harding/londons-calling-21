# What Flow And Javascript Can Teach You About Apex

Code examples from London's Calling 2021 presentation with the title above. I will link to the recording when that is 
available.

## Setup

Requires installation of Nebula Core (aliased in the project file):

    sfdx force:package:install --wait 20 --package "Nebula Core"

## Content

### Sorting

 - [AccountSortComparableTest](force-app/main/default/sorting/classes/AccountSortComparableTest.cls) - Apex sorting using Comparable interface
 - [sortAccount.test.js](force-app/main/default/sorting/jest/__tests__/sortAccount.test.js) - Javascript sorting 
 - [AccountSortComparatorTest](force-app/main/default/sorting/classes/AccountSortComparatorTest.cls) - Apex sorting using Comparator

### Account Classification

 - [AccountRatingTest](force-app/main/default/rating/classes/AccountRatingTest.cls) - tests for all implementations
 - [AccountBiotechnologyRating](force-app/main/default/rating/classes/AccountBiotechnologyRating.cls) - standard Apex implementation  
 - [AccountChemicalsRating](force-app/main/default/rating/classes/AccountChemicalsRating.cls) - Apex iterator implementations 
 - [AccountTechnologyRating](force-app/main/default/rating/flows/AccountTechnologyRating.flow-meta.xml) - Flow implementation
 - [classifyAccount.test.js](force-app/main/default/rating/jest/__tests__/classifyAccount.test.js) - Javascript implementation