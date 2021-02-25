/**
 * @author aidan@nebulaconsulting.co.uk
 * @date 12/02/2021
 */

public class IsChemicals implements nebc.BooleanFunction {

    public Boolean isTrueFor(Object o) {
        return ((Account)o).Industry == 'Chemicals';
    }
}