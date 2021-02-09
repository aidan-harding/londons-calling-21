/**
 * @author aidan@nebulaconsulting.co.uk
 * @date 04/02/2021
 * @description Comparable wrapper for an SObjects which compares String.valueOf() on the given field
 */

public class SObjectComparable implements Comparable {

    public SObject record {get; private set;}
    private SObjectField fieldToCompare;

    public SObjectComparable(SObject record, SObjectField fieldToCompare) {
        this.record = record;
        this.fieldToCompare = fieldToCompare;
    }

    public Integer compareTo(Object o) {
        String thisValue = String.valueOf(record.get(fieldToCompare));
        String otherValue = String.valueOf(((SObjectComparable)o).record.get(fieldToCompare));

        return thisValue.compareTo(otherValue);
    }
}