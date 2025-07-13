.class Lcom/baidu/mapapi/favorite/a;
.super Ljava/lang/Object;
.source "TransUtil.java"


# direct methods
.method static a(Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;)Lcom/baidu/mapapi/favorite/FavoritePoiInfo;
    .locals 8

    if-eqz p0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->c:Lcom/baidu/platform/comapi/basestruct/Point;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;

    invoke-direct {v0}, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;-><init>()V

    .line 33
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->a:Ljava/lang/String;

    .line 34
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->b:Ljava/lang/String;

    .line 35
    new-instance v1, Lcom/baidu/mapapi/model/LatLng;

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->c:Lcom/baidu/platform/comapi/basestruct/Point;

    iget v2, v2, Lcom/baidu/platform/comapi/basestruct/Point;->y:I

    int-to-double v2, v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    iget-object v6, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->c:Lcom/baidu/platform/comapi/basestruct/Point;

    iget v6, v6, Lcom/baidu/platform/comapi/basestruct/Point;->x:I

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v4

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    iput-object v1, v0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->c:Lcom/baidu/mapapi/model/LatLng;

    .line 36
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->e:Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->f:Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->d:Ljava/lang/String;

    .line 41
    iget-object p0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->h:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->g:J

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Lorg/json/JSONObject;)Lcom/baidu/mapapi/favorite/FavoritePoiInfo;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 49
    :cond_0
    new-instance v0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;

    invoke-direct {v0}, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;-><init>()V

    const-string v1, "pt"

    .line 50
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "x"

    .line 52
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "y"

    .line 53
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 54
    new-instance v3, Lcom/baidu/mapapi/model/LatLng;

    int-to-double v4, v1

    const-wide v6, 0x412e848000000000L    # 1000000.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    int-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v6

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    iput-object v3, v0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->c:Lcom/baidu/mapapi/model/LatLng;

    :cond_1
    const-string v1, "uspoiname"

    .line 56
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->b:Ljava/lang/String;

    const-string v1, "addtimesec"

    .line 57
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->g:J

    const-string v1, "addr"

    .line 58
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->d:Ljava/lang/String;

    const-string v1, "uspoiuid"

    .line 59
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->f:Ljava/lang/String;

    const-string v1, "ncityid"

    .line 60
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->e:Ljava/lang/String;

    const-string v1, "key"

    .line 61
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method static a(Lcom/baidu/mapapi/favorite/FavoritePoiInfo;)Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;
    .locals 8

    if-eqz p0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->c:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;-><init>()V

    .line 16
    iget-object v1, p0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->b:Ljava/lang/String;

    .line 17
    new-instance v1, Lcom/baidu/platform/comapi/basestruct/Point;

    iget-object v2, p0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->c:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v2, v2, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    const-wide v4, 0x412e848000000000L    # 1000000.0

    mul-double v2, v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->c:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v6, v3, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    mul-double v6, v6, v4

    double-to-int v3, v6

    invoke-direct {v1, v2, v3}, Lcom/baidu/platform/comapi/basestruct/Point;-><init>(II)V

    iput-object v1, v0, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->c:Lcom/baidu/platform/comapi/basestruct/Point;

    .line 18
    iget-object v1, p0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->d:Ljava/lang/String;

    .line 19
    iget-object v1, p0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->e:Ljava/lang/String;

    .line 20
    iget-object p0, p0, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->f:Ljava/lang/String;

    iput-object p0, v0, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->f:Ljava/lang/String;

    const/4 p0, 0x0

    .line 22
    iput-boolean p0, v0, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->i:Z

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
