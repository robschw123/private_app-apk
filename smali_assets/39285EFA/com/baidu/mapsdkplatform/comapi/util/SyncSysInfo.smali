.class public Lcom/baidu/mapsdkplatform/comapi/util/SyncSysInfo;
.super Ljava/lang/Object;
.source "SyncSysInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAuthToken()Ljava/lang/String;
    .locals 1

    .line 10
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getCid()Ljava/lang/String;
    .locals 1

    .line 26
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneInfo()Ljava/lang/String;
    .locals 1

    .line 14
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneInfoCache()Ljava/lang/String;
    .locals 1

    .line 30
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSoftWareVer()Ljava/lang/String;
    .locals 1

    .line 22
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initPhoneInfo()Ljava/lang/String;
    .locals 1

    .line 18
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
