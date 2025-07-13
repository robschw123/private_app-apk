.class public Lcom/baidu/mapapi/common/SysOSUtil;
.super Ljava/lang/Object;
.source "SysOSUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDensity()F
    .locals 1

    .line 23
    sget v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->b:F

    return v0
.end method

.method public static getDensityDpi()I
    .locals 1

    .line 14
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->n()I

    move-result v0

    return v0
.end method

.method public static getDeviceID()Ljava/lang/String;
    .locals 3

    .line 41
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->r()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const-string/jumbo v2, "|"

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getModuleFileName()Ljava/lang/String;
    .locals 1

    .line 32
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneType()Ljava/lang/String;
    .locals 1

    .line 73
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenSizeX()I
    .locals 1

    .line 55
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->j()I

    move-result v0

    return v0
.end method

.method public static getScreenSizeY()I
    .locals 1

    .line 64
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->l()I

    move-result v0

    return v0
.end method
