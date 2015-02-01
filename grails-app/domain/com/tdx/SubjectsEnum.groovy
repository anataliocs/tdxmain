package com.tdx

/**
 * Created by canatalio on 1/31/15.
 */
enum SubjectsEnum {

    PHILANTHROPY('Philanthropy'),
    FUNDRAISING('Fundraising'),
    SOCIAL('Social'),
    TECHNICAL('Technical')

    private final String displayName

    public static final List<SubjectsEnum> getAllSubjectsEnumList() { [PHILANTHROPY, FUNDRAISING, SOCIAL, TECHNICAL] }

    public String toString() { return displayName }

    SubjectsEnum(String displayName) { this.displayName = displayName }
}
