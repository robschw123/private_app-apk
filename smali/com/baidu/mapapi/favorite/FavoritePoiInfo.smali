.class public Lcom/baidu/mapapi/favorite/FavoritePoiInfo;
.super Ljava/lang/Object;
.source "FavoritePoiInfo.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/baidu/mapapi/model/LatLng;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addr(Ljava/lang/String;)Lcom/baidu/mapapi/favorite/FavoritePoiInfo;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->d:Ljava/lang/String;

    return-object p0
.end method

.method public cityName(Ljava/lang/String;)Lcom/baidu/mapapi/favorite/FavoritePoiInfo;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getAddr()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPoiName()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPt()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->c:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 127
    iget-wide v0, p0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->g:J

    return-wide v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public poiName(Ljava/lang/String;)Lcom/baidu/mapapi/favorite/FavoritePoiInfo;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->b:Ljava/lang/String;

    return-object p0
.end method

.method public pt(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/favorite/FavoritePoiInfo;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->c:Lcom/baidu/mapapi/model/LatLng;

    return-object p0
.end method

.method public uid(Ljava/lang/String;)Lcom/baidu/mapapi/favorite/FavoritePoiInfo;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->f:Ljava/lang/String;

    return-object p0
.end method
