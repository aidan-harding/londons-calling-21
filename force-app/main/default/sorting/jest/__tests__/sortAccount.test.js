describe('Account sorting', () => {

    it('Sorts a list of accounts by ShippingStreet', () => {
        const accounts = [
            {ShippingStreet: '4'},
            {ShippingStreet: '1'},
            {ShippingStreet: '2'},
            {ShippingStreet: '0'},
            {ShippingStreet: '3'}
        ];

        const compareByShippingStreet = function(left, right) {
            return left.ShippingStreet.localeCompare(right.ShippingStreet);
        };

        accounts.sort(compareByShippingStreet);

        accounts.forEach((account, index) => expect(account.ShippingStreet).toBe(index.toString()));
    });
});