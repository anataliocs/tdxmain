package com.tdx

/**
 * Created by canatalio on 1/31/15.
 */
enum DonorLevelEnum {


    MONROE_PARK_CLUB('Monroe Park Club', 50),
    SHAFER_COURT_CLUB('Shafer Court Club', 100),
    FRANKLIN_STREET_CLUB('Franklin Street Club', 250),
    CRAB_TREE_FALLS_SOCIETY('Crab Tree Falls Society', 500),
    BOURBON_CLUB('Bourbon Club', 1000),
    NINETEEN_SEVENTY_CLUB('1970 Club', 1970),
    EXECUTIVE_LOUNGE_SOCIETY('Executive Lounge Society', 2500),
    JEFFERSON_FOUNDERS_CIRCLE('Jefferson Founders\' Circle', 5000),
    SONS_OF_THE_GERMAN_CLUB('Sons of the German Club', 10000)

    private final String displayName
    private final Integer threshold

    public static final List<DonorLevelEnum> getAllDonorLevelEnumList() { [] }

    public String toString() { return displayName }

    DonorLevelEnum(String displayName, Integer threshold) {
        this.displayName = displayName
        this.threshold = threshold
    }

    String getKey() { name() }

    String getThreshold() { threshold }
}
