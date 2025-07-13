.class public Lcom/baidu/mapsdkplatform/comapi/map/VersionInfo;
.super Ljava/lang/Object;
.source "VersionInfo.java"


# static fields
.field public static final KIT_NAME:Ljava/lang/String; = "BaiduMapSDK_map_v"

.field protected static final MAP_APPROVAL_NUMBER:Ljava/lang/String; = "GS(2022)460\u53f7"

.field protected static final MAP_COPYRIGHT:Ljava/lang/String; = "\u957f\u5730\u4e07\u65b9\nMapbox\nMapKin\n\u6a02\u5ba2LocalKing PalmCit\nESO DigitalGlobal spaceview\nOSRM Copyright \u00a92017, Project OSRMcontributors, all rights reserved\nHERE\u00a9 2019 HERE, all rights reserved\nOpenStreetMap\u00a9 OpenStreetMapContributor;(OSMF)"

.field protected static final MAP_MAPPING_QUALIFICATION:Ljava/lang/String; = "\u7532\u6d4b\u8d44\u5b5711111342"

.field public static final VERSION_DESC:Ljava/lang/String; = "baidumapapi_map"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApiVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "7_5_3"

    return-object v0
.end method

.method public static getKitName()Ljava/lang/String;
    .locals 1

    const-string v0, "BaiduMapSDK_map_v7_5_3"

    return-object v0
.end method

.method public static getVersionDesc()Ljava/lang/String;
    .locals 1

    const-string v0, "baidumapapi_map"

    return-object v0
.end method
