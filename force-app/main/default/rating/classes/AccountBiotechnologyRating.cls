/**
 * @author aidan@nebulaconsulting.co.uk
 * @date 10/02/2021
 * @description When Account.Industry is Biotechnology, set the Rating to Hot
 */

global without sharing class AccountBiotechnologyRating implements nebc.BeforeInsert {

    public void handleBeforeInsert(List<Account> newList) {
        for(Account thisAccount : newList) {
            if(thisAccount.Industry == 'Biotechnology') {
                thisAccount.Rating = 'Hot';
            }
        }
    }
}