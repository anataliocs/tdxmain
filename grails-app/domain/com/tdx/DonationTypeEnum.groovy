package com.tdx

/**
 * Created by canatalio on 1/31/15.
 */
enum DonationTypeEnum {


    RECOLONIZATION('Recolonization'),
    SOCIAL('Social'),
    TECHNICAL('Technical')

    private final String displayName

    public static final List<DonationTypeEnum> getAllDonationTypeEnumList() { [RECOLONIZATION, SOCIAL] }

    public String toString() { return displayName }

    DonationTypeEnum(String displayName) { this.displayName = displayName }
}
