.class public Lcom/baidu/mapapi/search/geocode/GeoCoder;
.super Lcom/baidu/mapapi/search/core/n;
.source "GeoCoder.java"


# instance fields
.field private a:Lcom/baidu/platform/core/c/d;

.field private b:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/n;-><init>()V

    .line 17
    new-instance v0, Lcom/baidu/platform/core/c/a;

    invoke-direct {v0}, Lcom/baidu/platform/core/c/a;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCoder;->a:Lcom/baidu/platform/core/c/d;

    return-void
.end method

.method public static newInstance()Lcom/baidu/mapapi/search/geocode/GeoCoder;
    .locals 1

    .line 26
    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->init()V

    .line 27
    new-instance v0, Lcom/baidu/mapapi/search/geocode/GeoCoder;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/geocode/GeoCoder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCoder;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCoder;->b:Z

    .line 107
    iget-object v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCoder;->a:Lcom/baidu/platform/core/c/d;

    invoke-interface {v0}, Lcom/baidu/platform/core/c/d;->a()V

    .line 108
    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->destroy()V

    return-void
.end method

.method public geocode(Lcom/baidu/mapapi/search/geocode/GeoCodeOption;)Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCoder;->a:Lcom/baidu/platform/core/c/d;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 48
    iget-object v0, p1, Lcom/baidu/mapapi/search/geocode/GeoCodeOption;->mAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/baidu/mapapi/search/geocode/GeoCodeOption;->mCity:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCoder;->a:Lcom/baidu/platform/core/c/d;

    invoke-interface {v0, p1}, Lcom/baidu/platform/core/c/d;->a(Lcom/baidu/mapapi/search/geocode/GeoCodeOption;)Z

    move-result p1

    return p1

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: option or address or city can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: GeoCoder is null, please call newInstance() first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reverseGeoCode(Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;)Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCoder;->a:Lcom/baidu/platform/core/c/d;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCoder;->a:Lcom/baidu/platform/core/c/d;

    invoke-interface {v0, p1}, Lcom/baidu/platform/core/c/d;->a(Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;)Z

    move-result p1

    return p1

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: option or mLocation can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: GeoCoder is null, please call newInstance() first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnGetGeoCodeResultListener(Lcom/baidu/mapapi/search/geocode/OnGetGeoCoderResultListener;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCoder;->a:Lcom/baidu/platform/core/c/d;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 96
    invoke-interface {v0, p1}, Lcom/baidu/platform/core/c/d;->a(Lcom/baidu/mapapi/search/geocode/OnGetGeoCoderResultListener;)V

    return-void

    .line 94
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: listener can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: GeoCoder is null, please call newInstance() first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
