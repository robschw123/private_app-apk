.class public Lcom/baidu/mapsdkplatform/comapi/map/l;
.super Lcom/baidu/mapsdkplatform/comapi/map/z;
.source "HeatMapLayer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/map/z;-><init>()V

    const/4 v0, 0x6

    .line 7
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/l;->c:I

    const-string v0, "tile"

    .line 8
    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/l;->b:Ljava/lang/String;

    const/16 v0, 0x1f4

    .line 9
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/l;->d:I

    const v0, 0x15bf4

    .line 10
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/l;->e:I

    return-void
.end method
