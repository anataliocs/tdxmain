package com.tdx

enum AnnouncementTypeEnum {

    RECOLONIZATION('Recolonization'),
    SOCIAL('Social')

    private final String displayName

    public static final List<AnnouncementTypeEnum> getAllAnnouncementTypeEnumList() { [RECOLONIZATION, SOCIAL] }

    public String toString() { return displayName }

    AnnouncementTypeEnum(String displayName) { this.displayName = displayName }

    String getKey() { name() }
}
