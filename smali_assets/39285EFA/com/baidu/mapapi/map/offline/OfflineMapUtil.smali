.class public Lcom/baidu/mapapi/map/offline/OfflineMapUtil;
.super Ljava/lang/Object;
.source "OfflineMapUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSearchRecordFromLocalCityInfo(Lcom/baidu/mapsdkplatform/comapi/map/n;)Lcom/baidu/mapapi/map/offline/MKOLSearchRecord;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 26
    :cond_0
    new-instance v0, Lcom/baidu/mapapi/map/offline/MKOLSearchRecord;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/offline/MKOLSearchRecord;-><init>()V

    .line 27
    iget v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/n;->a:I

    iput v1, v0, Lcom/baidu/mapapi/map/offline/MKOLSearchRecord;->cityID:I

    .line 28
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/n;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mapapi/map/offline/MKOLSearchRecord;->cityName:Ljava/lang/String;

    .line 29
    iget v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/n;->d:I

    iput v1, v0, Lcom/baidu/mapapi/map/offline/MKOLSearchRecord;->cityType:I

    const-wide/16 v1, 0x0

    .line 32
    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/n;->a()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 33
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/n;->a()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/mapsdkplatform/comapi/map/n;

    .line 35
    invoke-static {v5}, Lcom/baidu/mapapi/map/offline/OfflineMapUtil;->getSearchRecordFromLocalCityInfo(Lcom/baidu/mapsdkplatform/comapi/map/n;)Lcom/baidu/mapapi/map/offline/MKOLSearchRecord;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    iget v5, v5, Lcom/baidu/mapsdkplatform/comapi/map/n;->c:I

    int-to-long v5, v5

    add-long/2addr v1, v5

    .line 37
    iput-object v3, v0, Lcom/baidu/mapapi/map/offline/MKOLSearchRecord;->childCities:Ljava/util/ArrayList;

    goto :goto_0

    .line 41
    :cond_1
    iget v3, v0, Lcom/baidu/mapapi/map/offline/MKOLSearchRecord;->cityType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 42
    iput-wide v1, v0, Lcom/baidu/mapapi/map/offline/MKOLSearchRecord;->dataSize:J

    goto :goto_1

    .line 45
    :cond_2
    iget p0, p0, Lcom/baidu/mapsdkplatform/comapi/map/n;->c:I

    int-to-long v1, p0

    iput-wide v1, v0, Lcom/baidu/mapapi/map/offline/MKOLSearchRecord;->dataSize:J

    :goto_1
    return-object v0
.end method

.method public static getUpdatElementFromLocalMapElement(Lcom/baidu/mapsdkplatform/comapi/map/q;)Lcom/baidu/mapapi/map/offline/MKOLUpdateElement;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 60
    :cond_0
    new-instance v0, Lcom/baidu/mapapi/map/offline/MKOLUpdateElement;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/offline/MKOLUpdateElement;-><init>()V

    .line 61
    iget v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/q;->a:I

    iput v1, v0, Lcom/baidu/mapapi/map/offline/MKOLUpdateElement;->cityID:I

    .line 62
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/q;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mapapi/map/offline/MKOLUpdateElement;->cityName:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/q;->g:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    if-eqz v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/q;->g:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-static {v1}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    .line 66
    iput-object v1, v0, Lcom/baidu/mapapi/map/offline/MKOLUpdateElement;->geoPt:Lcom/baidu/mapapi/model/LatLng;

    .line 68
    :cond_1
    iget v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/q;->e:I

    iput v1, v0, Lcom/baidu/mapapi/map/offline/MKOLUpdateElement;->level:I

    .line 69
    iget v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/q;->i:I

    iput v1, v0, Lcom/baidu/mapapi/map/offline/MKOLUpdateElement;->ratio:I

    .line 70
    iget v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/q;->h:I

    iput v1, v0, Lcom/baidu/mapapi/map/offline/MKOLUpdateElement;->serversize:I

    .line 72
    iget v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/q;->i:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_2

    .line 73
    iget v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/q;->h:I

    iput v1, v0, Lcom/baidu/mapapi/map/offline/MKOLUpdateElement;->size:I

    goto :goto_0

    .line 76
    :cond_2
    iget v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/q;->h:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/q;->i:I

    mul-int v1, v1, v2

    iput v1, v0, Lcom/baidu/mapapi/map/offline/MKOLUpdateElement;->size:I

    .line 78
    :goto_0
    iget v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/q;->l:I

    iput v1, v0, Lcom/baidu/mapapi/map/offline/MKOLUpdateElement;->status:I

    .line 79
    iget-boolean p0, p0, Lcom/baidu/mapsdkplatform/comapi/map/q;->j:Z

    iput-boolean p0, v0, Lcom/baidu/mapapi/map/offline/MKOLUpdateElement;->update:Z

    return-object v0
.end method
