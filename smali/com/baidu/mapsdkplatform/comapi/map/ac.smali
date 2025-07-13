.class public Lcom/baidu/mapsdkplatform/comapi/map/ac;
.super Lcom/baidu/mapsdkplatform/comapi/map/z;
.source "TileOverlayer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/map/z;-><init>()V

    const/16 v0, 0xa

    .line 12
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ac;->c:I

    const-string v0, "sdktile"

    .line 13
    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ac;->b:Ljava/lang/String;

    const/16 v0, 0x3e8

    .line 14
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ac;->d:I

    const v0, 0x15bf5

    .line 15
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ac;->e:I

    return-void
.end method
