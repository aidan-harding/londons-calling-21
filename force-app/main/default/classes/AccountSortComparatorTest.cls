/**
 * @author aidan@nebulaconsulting.co.uk
 * @date 04/02/2021
 */

@IsTest
private class AccountSortComparatorTest {

    static List<Account> accounts = new List<Account> {
            new Account(ShippingStreet = '4'),
            new Account(ShippingStreet = '1'),
            new Account(ShippingStreet = '2'),
            new Account(ShippingStreet = '0'),
            new Account(ShippingStreet = '3')
    };

    @IsTest
    static void sort() {

        nebc.Lists.sort(accounts, new SObjectComparator(Account.ShippingStreet));

        for(Integer i=0; i < accounts.size(); i++) {
            System.assertEquals(String.valueOf(i), accounts[i].ShippingStreet, 'Not sorted: ' + accounts);
        }
    }
}