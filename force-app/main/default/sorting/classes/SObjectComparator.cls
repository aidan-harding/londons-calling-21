/**
 * @author aidan@nebulaconsulting.co.uk
 * @date 04/02/2021
 * @description Comparator for two SObjects. Compares String.valueOf() on the given field
 */

public class SObjectComparator implements nebc.Comparator {

    private SObjectField fieldToCompare;

    public SObjectComparator(SObjectField fieldToCompare) {
        this.fieldToCompare = fieldToCompare;
    }

    public Integer compare(Object left, Object right) {
        String leftValue = String.valueOf(((SObject)left).get(fieldToCompare));
        String rightValue = String.valueOf(((SObject)right).get(fieldToCompare));

        return leftValue.compareTo(rightValue);
    }
}