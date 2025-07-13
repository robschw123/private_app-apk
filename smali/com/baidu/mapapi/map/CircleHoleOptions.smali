.class public Lcom/baidu/mapapi/map/CircleHoleOptions;
.super Lcom/baidu/mapapi/map/HoleOptions;
.source "CircleHoleOptions.java"


# instance fields
.field private a:Lcom/baidu/mapapi/model/LatLng;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/baidu/mapapi/map/HoleOptions;-><init>()V

    const-string v0, "circle"

    .line 23
    iput-object v0, p0, Lcom/baidu/mapapi/map/CircleHoleOptions;->mHoleType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public center(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/CircleHoleOptions;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "baidumapsdk"

    const-string v0, "CircleHole center can not be null"

    .line 34
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/CircleHoleOptions;->a:Lcom/baidu/mapapi/model/LatLng;

    return-object p0
.end method

.method public getHoleCenter()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/baidu/mapapi/map/CircleHoleOptions;->a:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getHoleRadius()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/baidu/mapapi/map/CircleHoleOptions;->b:I

    return v0
.end method

.method public radius(I)Lcom/baidu/mapapi/map/CircleHoleOptions;
    .locals 1

    if-gtz p1, :cond_0

    const-string p1, "baidumapsdk"

    const-string v0, "CircleHole\'s radius can not be less than zero"

    .line 49
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 52
    :cond_0
    iput p1, p0, Lcom/baidu/mapapi/map/CircleHoleOptions;->b:I

    return-object p0
.end method
