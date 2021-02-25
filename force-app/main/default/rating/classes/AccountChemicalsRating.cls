/**
 * @author aidan@nebulaconsulting.co.uk
 * @date 10/02/2021
 * @description When Account.Industry is Chemicals, set the Rating to Cold
 */

global without sharing class AccountChemicalsRating implements nebc.BeforeInsert {

    public enum Implementation {
        BASIC,
        SOBJECT_SPECIFIC
    }

    @TestVisible
    private static Implementation currentImplementation = Implementation.SOBJECT_SPECIFIC;

    public void handleBeforeInsert(List<Account> newList) {
        switch on currentImplementation {
            when SOBJECT_SPECIFIC {
                new nebc.LazySObjectIterator(newList)
                        .filterOnField(Account.Industry, 'Chemicals')
                        .put(Account.Rating, 'Cold')
                        .forEach();
            }
            when else {
                new nebc.LazySObjectIterator(newList)
                        .filter(new IsChemicals())
                        .forEach(new SetRatingCold());
            }
        }
    }
}