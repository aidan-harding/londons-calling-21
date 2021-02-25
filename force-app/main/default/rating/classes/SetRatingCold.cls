/**
 * @author aidan@nebulaconsulting.co.uk
 * @date 12/02/2021
 */

public class SetRatingCold implements nebc.Function {

    public Object call(Object o) {
        ((Account)o).Rating = 'Cold';
        return null;
    }
}