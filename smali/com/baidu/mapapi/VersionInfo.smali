.class public Lcom/baidu/mapapi/VersionInfo;
.super Ljava/lang/Object;
.source "VersionInfo.java"


# static fields
.field public static final KIT_NAME:Ljava/lang/String; = "BaiduMapSDK_base_v7_5_3"

.field public static final VERSION_DESC:Ljava/lang/String; = "baidumapapi_base"

.field public static final VERSION_INFO:Ljava/lang/String; = "7_5_3"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
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

    const-string v0, "BaiduMapSDK_base_v7_5_3"

    return-object v0
.end method

.method public static getVersionDesc()Ljava/lang/String;
    .locals 1

    const-string v0, "baidumapapi_base"

    return-object v0
.end method
