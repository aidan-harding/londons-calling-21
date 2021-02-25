/**
 * @author aidan@nebulaconsulting.co.uk
 * @date 10/02/2021
 */

@IsTest
private class AccountRatingTest {

    static nebc.TestRecordSource testRecordSource = new nebc.TestRecordSource();

    @IsTest
    static void biotechnologyIsHot() {
        Test.startTest();
        Account testAccount = (Account)testRecordSource.getRecord(Account.SObjectType)
                .put(Account.Industry, 'Biotechnology')
                .withInsert();
        Test.stopTest();

        testAccount = [SELECT Rating FROM Account WHERE Id = :testAccount.Id];
        System.assertEquals('Hot', testAccount.Rating);
    }

    @IsTest
    static void chemicalsIsColdBasic() {
        AccountChemicalsRating.currentImplementation = AccountChemicalsRating.Implementation.BASIC;
        Test.startTest();
        Account testAccount = (Account)testRecordSource.getRecord(Account.SObjectType)
                .put(Account.Industry, 'Chemicals')
                .withInsert();
        Test.stopTest();

        testAccount = [SELECT Rating FROM Account WHERE Id = :testAccount.Id];
        System.assertEquals('Cold', testAccount.Rating);
    }

    @IsTest
    static void chemicalsIsColdSObject() {
        AccountChemicalsRating.currentImplementation = AccountChemicalsRating.Implementation.SOBJECT_SPECIFIC;
        Test.startTest();
        Account testAccount = (Account)testRecordSource.getRecord(Account.SObjectType)
                .put(Account.Industry, 'Chemicals')
                .withInsert();
        Test.stopTest();

        testAccount = [SELECT Rating FROM Account WHERE Id = :testAccount.Id];
        System.assertEquals('Cold', testAccount.Rating);
    }

    @IsTest
    static void technologyIsWarm() {
        Test.startTest();
        Account testAccount = (Account)testRecordSource.getRecord(Account.SObjectType)
                .put(Account.Industry, 'Technology')
                .withInsert();
        Test.stopTest();

        testAccount = [SELECT Rating FROM Account WHERE Id = :testAccount.Id];
        System.assertEquals('Warm', testAccount.Rating);
    }

    @IsTest
    static void otherIsNull() {
        Test.startTest();
        Account testAccount = (Account)testRecordSource.getRecord(Account.SObjectType)
                .put(Account.Industry, 'Other')
                .withInsert();
        Test.stopTest();

        testAccount = [SELECT Rating FROM Account WHERE Id = :testAccount.Id];
        System.assertEquals(null, testAccount.Rating);
    }
}