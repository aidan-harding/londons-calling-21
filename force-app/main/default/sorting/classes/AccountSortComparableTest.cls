/**
 * @author aidan@nebulaconsulting.co.uk
 * @date 04/02/2021
 */

@IsTest
private class AccountSortComparableTest {

    static List<Account> accounts = new List<Account> {
            new Account(ShippingStreet = '4', ShippingCity = 'Zero-index Town'),
            new Account(ShippingStreet = '1', ShippingCity = 'Zero-index Town'),
            new Account(ShippingStreet = '2', ShippingCity = 'Zero-index Town'),
            new Account(ShippingStreet = '0', ShippingCity = 'Zero-index Town'),
            new Account(ShippingStreet = '3', ShippingCity = 'Zero-index Town')
    };

    @IsTest
    static void sort() {
        List<SObjectComparable> wrappedAccounts = new List<SObjectComparable>();

        for(Account thisAccount : accounts) {
            wrappedAccounts.add(new SObjectComparable(thisAccount, Account.ShippingStreet));
        }

        wrappedAccounts.sort();

        List<Account> sortedAccounts = new List<Account>();

        for(SObjectComparable thisWrappedAccount : wrappedAccounts) {
            sortedAccounts.add((Account)thisWrappedAccount.record);
        }

        for(Integer i=0; i < sortedAccounts.size(); i++) {
            System.assertEquals(String.valueOf(i), sortedAccounts[i].ShippingStreet, 'Not sorted: ' + sortedAccounts);
        }
    }
}