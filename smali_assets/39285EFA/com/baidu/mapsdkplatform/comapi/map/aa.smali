.class public Lcom/baidu/mapsdkplatform/comapi/map/aa;
.super Lcom/baidu/mapsdkplatform/comapi/map/c;
.source "SDKLayer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/map/c;-><init>()V

    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/aa;->c:I

    const-string v0, "android_sdk"

    .line 6
    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/aa;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/aa;->d:I

    return-void
.end method
