.class public Lcom/baidu/mapapi/navi/NaviParaOption;
.super Ljava/lang/Object;
.source "NaviParaOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;
    }
.end annotation


# instance fields
.field a:Lcom/baidu/mapapi/model/LatLng;

.field b:Ljava/lang/String;

.field c:Lcom/baidu/mapapi/model/LatLng;

.field d:Ljava/lang/String;

.field e:Lcom/baidu/mapapi/navi/WayPoint;

.field f:Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;->DEFAULT:Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;

    iput-object v0, p0, Lcom/baidu/mapapi/navi/NaviParaOption;->f:Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;

    return-void
.end method


# virtual methods
.method public endName(Ljava/lang/String;)Lcom/baidu/mapapi/navi/NaviParaOption;
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/baidu/mapapi/navi/NaviParaOption;->d:Ljava/lang/String;

    return-object p0
.end method

.method public endPoint(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/navi/NaviParaOption;
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/baidu/mapapi/navi/NaviParaOption;->c:Lcom/baidu/mapapi/model/LatLng;

    return-object p0
.end method

.method public getEndName()Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/baidu/mapapi/navi/NaviParaOption;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getEndPoint()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/baidu/mapapi/navi/NaviParaOption;->c:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getNaviRoutePolicy()Ljava/lang/String;
    .locals 2

    .line 90
    sget-object v0, Lcom/baidu/mapapi/navi/a;->a:[I

    iget-object v1, p0, Lcom/baidu/mapapi/navi/NaviParaOption;->f:Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;

    invoke-virtual {v1}, Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string v0, "DEFAULT"

    return-object v0

    :cond_0
    const-string v0, "HIGHWAY"

    return-object v0

    :cond_1
    const-string v0, "FEE"

    return-object v0

    :cond_2
    const-string v0, "DIS"

    return-object v0

    :cond_3
    const-string v0, "TIME"

    return-object v0

    :cond_4
    const-string v0, "BLK"

    return-object v0
.end method

.method public getStartName()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/baidu/mapapi/navi/NaviParaOption;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getStartPoint()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/baidu/mapapi/navi/NaviParaOption;->a:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getWayPoint()Lorg/json/JSONArray;
    .locals 8

    .line 128
    iget-object v0, p0, Lcom/baidu/mapapi/navi/NaviParaOption;->e:Lcom/baidu/mapapi/navi/WayPoint;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 131
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapapi/navi/WayPoint;->getViaPoints()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 132
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 135
    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 136
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x0

    .line 137
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 138
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/navi/WayPointInfo;

    if-nez v4, :cond_2

    goto :goto_1

    .line 143
    :cond_2
    :try_start_0
    invoke-virtual {v4}, Lcom/baidu/mapapi/navi/WayPointInfo;->getWayPointName()Ljava/lang/String;

    move-result-object v5

    .line 144
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "name"

    .line 145
    invoke-virtual {v4}, Lcom/baidu/mapapi/navi/WayPointInfo;->getWayPointName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    :cond_3
    invoke-virtual {v4}, Lcom/baidu/mapapi/navi/WayPointInfo;->getLatLng()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_1

    .line 151
    :cond_4
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object v5

    sget-object v6, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne v5, v6, :cond_5

    .line 152
    invoke-static {v4}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->gcjToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v4

    :cond_5
    const-string v5, "lng"

    .line 154
    iget-wide v6, v4, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v5, "lat"

    .line 155
    iget-wide v6, v4, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 156
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 158
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return-object v1
.end method

.method public setNaviRoutePolicy(Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;)Lcom/baidu/mapapi/navi/NaviParaOption;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/baidu/mapapi/navi/NaviParaOption;->f:Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;

    return-object p0
.end method

.method public setWayPoint(Lcom/baidu/mapapi/navi/WayPoint;)Lcom/baidu/mapapi/navi/NaviParaOption;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 119
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/navi/NaviParaOption;->e:Lcom/baidu/mapapi/navi/WayPoint;

    return-object p0
.end method

.method public startName(Ljava/lang/String;)Lcom/baidu/mapapi/navi/NaviParaOption;
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/baidu/mapapi/navi/NaviParaOption;->b:Ljava/lang/String;

    return-object p0
.end method

.method public startPoint(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/navi/NaviParaOption;
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/baidu/mapapi/navi/NaviParaOption;->a:Lcom/baidu/mapapi/model/LatLng;

    return-object p0
.end method
