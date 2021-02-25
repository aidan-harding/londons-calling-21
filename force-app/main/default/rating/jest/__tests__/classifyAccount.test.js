describe('Account rating', () => {

    it('Rates Accounts by Industry', () => {
        const accounts = [
            {Industry: 'Biotechnology'},
            {Industry: 'Technology'},
            {Industry: 'Chemicals'},
            {Industry: 'Other'}
        ];

        accounts
            .filter(thisAccount => thisAccount.Industry === 'Chemicals')
            .forEach(function(thisAccount) { thisAccount.Rating = 'Cold' });

        expect(accounts[0].Rating).toBe(undefined);
        expect(accounts[1].Rating).toBe(undefined);
        expect(accounts[2].Rating).toBe('Cold');
        expect(accounts[3].Rating).toBe(undefined);
    });
});