.class public Lcom/baidu/mapapi/search/recommendstop/RecommendStopSearchOption;
.super Ljava/lang/Object;
.source "RecommendStopSearchOption.java"


# instance fields
.field public mLocation:Lcom/baidu/mapapi/model/LatLng;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocation()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/baidu/mapapi/search/recommendstop/RecommendStopSearchOption;->mLocation:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public location(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/recommendstop/RecommendStopSearchOption;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/baidu/mapapi/search/recommendstop/RecommendStopSearchOption;->mLocation:Lcom/baidu/mapapi/model/LatLng;

    return-object p0
.end method
