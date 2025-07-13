.class public Lcom/baidu/mapapi/search/building/BuildingSearchOption;
.super Ljava/lang/Object;
.source "BuildingSearchOption.java"


# instance fields
.field public mLatLng:Lcom/baidu/mapapi/model/LatLng;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLatLng()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/baidu/mapapi/search/building/BuildingSearchOption;->mLatLng:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public setLatLng(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/building/BuildingSearchOption;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/baidu/mapapi/search/building/BuildingSearchOption;->mLatLng:Lcom/baidu/mapapi/model/LatLng;

    return-object p0
.end method
