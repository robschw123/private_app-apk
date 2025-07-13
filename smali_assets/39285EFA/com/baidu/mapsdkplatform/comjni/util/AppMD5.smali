.class public Lcom/baidu/mapsdkplatform/comjni/util/AppMD5;
.super Ljava/lang/Object;
.source "AppMD5.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/baidu/mapsdkplatform/comjni/util/JNIMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSignMD5String(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 13
    invoke-static {p0}, Lcom/baidu/mapsdkplatform/comjni/util/JNIMD5;->getSignMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUrlNeedInfo()Ljava/lang/String;
    .locals 1

    .line 24
    invoke-static {}, Lcom/baidu/mapsdkplatform/comjni/util/JNIMD5;->getUrlNeedInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
