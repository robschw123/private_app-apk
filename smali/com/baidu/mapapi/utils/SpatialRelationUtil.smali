.class public Lcom/baidu/mapapi/utils/SpatialRelationUtil;
.super Ljava/lang/Object;
.source "SpatialRelationUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;
    .locals 10

    .line 333
    invoke-static {p0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p0

    .line 334
    invoke-static {p1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p1

    .line 335
    invoke-static {p2}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p2

    .line 336
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 337
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v4

    sub-double/2addr v2, v4

    mul-double v0, v0, v2

    .line 338
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 339
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    .line 336
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 341
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 342
    invoke-virtual {p2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double v2, v2, v4

    .line 343
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v6

    sub-double/2addr v4, v6

    .line 344
    invoke-virtual {p2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v6

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double v4, v4, v6

    add-double/2addr v2, v4

    mul-double v0, v0, v0

    div-double/2addr v2, v0

    .line 348
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v0

    .line 349
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double v4, v4, v2

    add-double/2addr v0, v4

    .line 352
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v4

    .line 353
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide p1

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v6

    sub-double/2addr p1, v6

    mul-double p1, p1, v2

    add-double/2addr v4, p1

    .line 356
    new-instance p0, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(DD)V

    invoke-static {p0}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object p0

    return-object p0
.end method

.method private static a(DDDDDD)Lcom/baidu/platform/comapi/basestruct/Point;
    .locals 18

    move-wide/from16 v0, p4

    move-wide/from16 v2, p6

    move-wide/from16 v4, p8

    move-wide/from16 v6, p10

    sub-double v8, v4, v0

    sub-double v10, p0, v0

    mul-double v10, v10, v8

    sub-double v12, v6, v2

    sub-double v14, p2, v2

    mul-double v14, v14, v12

    add-double/2addr v10, v14

    const-wide/16 v14, 0x0

    cmpg-double v16, v10, v14

    if-gtz v16, :cond_0

    .line 270
    new-instance v4, Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/baidu/platform/comapi/basestruct/Point;-><init>(DD)V

    return-object v4

    :cond_0
    mul-double v14, v8, v8

    mul-double v16, v12, v12

    add-double v14, v14, v16

    cmpl-double v16, v10, v14

    if-ltz v16, :cond_1

    .line 274
    new-instance v0, Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/baidu/platform/comapi/basestruct/Point;-><init>(DD)V

    return-object v0

    :cond_1
    div-double/2addr v10, v14

    mul-double v8, v8, v10

    add-double/2addr v0, v8

    mul-double v12, v12, v10

    add-double/2addr v2, v12

    .line 279
    new-instance v4, Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/baidu/platform/comapi/basestruct/Point;-><init>(DD)V

    return-object v4
.end method

.method private static a(Ljava/util/List;Lcom/baidu/platform/comapi/basestruct/Point;)Lcom/baidu/platform/comapi/basestruct/Point;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/basestruct/Point;",
            ">;",
            "Lcom/baidu/platform/comapi/basestruct/Point;",
            ")",
            "Lcom/baidu/platform/comapi/basestruct/Point;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 222
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_3

    .line 223
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    return-object v2

    :cond_0
    const/4 v3, 0x0

    .line 228
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/platform/comapi/basestruct/Point;

    .line 229
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    :goto_0
    add-int/lit8 v7, v4, -0x1

    if-gt v6, v7, :cond_3

    .line 232
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/platform/comapi/basestruct/Point;

    if-ne v6, v7, :cond_1

    .line 233
    invoke-virtual {v2, v1}, Lcom/baidu/platform/comapi/basestruct/Point;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    return-object v1

    .line 237
    :cond_1
    invoke-virtual {v3, v1}, Lcom/baidu/platform/comapi/basestruct/Point;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    return-object v1

    .line 241
    :cond_2
    iget-wide v8, v1, Lcom/baidu/platform/comapi/basestruct/Point;->doubleX:D

    iget-wide v10, v1, Lcom/baidu/platform/comapi/basestruct/Point;->doubleY:D

    iget-wide v12, v3, Lcom/baidu/platform/comapi/basestruct/Point;->doubleX:D

    iget-wide v14, v3, Lcom/baidu/platform/comapi/basestruct/Point;->doubleY:D

    move v7, v6

    iget-wide v5, v2, Lcom/baidu/platform/comapi/basestruct/Point;->doubleX:D

    move/from16 v20, v4

    iget-wide v3, v2, Lcom/baidu/platform/comapi/basestruct/Point;->doubleY:D

    move-wide/from16 v16, v5

    move-wide/from16 v18, v3

    invoke-static/range {v8 .. v19}, Lcom/baidu/mapapi/utils/SpatialRelationUtil;->a(DDDDDD)Lcom/baidu/platform/comapi/basestruct/Point;

    move-result-object v3

    add-int/lit8 v6, v7, 0x1

    move/from16 v4, v20

    const/4 v5, 0x1

    move-object/from16 v21, v3

    move-object v3, v2

    move-object/from16 v2, v21

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public static getNearestDistancePointFromLine(Ljava/util/List;Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;",
            "Lcom/baidu/mapapi/model/LatLng;",
            ")",
            "Lcom/baidu/mapapi/model/LatLng;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 191
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 197
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    if-eqz p0, :cond_2

    .line 198
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 199
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/model/LatLng;

    .line 200
    new-instance v3, Lcom/baidu/platform/comapi/basestruct/Point;

    iget-wide v4, v2, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iget-wide v6, v2, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/baidu/platform/comapi/basestruct/Point;-><init>(DD)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 206
    :cond_2
    new-instance p0, Lcom/baidu/platform/comapi/basestruct/Point;

    iget-wide v2, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iget-wide v4, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/baidu/platform/comapi/basestruct/Point;-><init>(DD)V

    .line 208
    invoke-static {v1, p0}, Lcom/baidu/mapapi/utils/SpatialRelationUtil;->a(Ljava/util/List;Lcom/baidu/platform/comapi/basestruct/Point;)Lcom/baidu/platform/comapi/basestruct/Point;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 209
    new-instance p1, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v0, p0, Lcom/baidu/platform/comapi/basestruct/Point;->doubleY:D

    iget-wide v2, p0, Lcom/baidu/platform/comapi/basestruct/Point;->doubleX:D

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static getNearestPointFromLine(Ljava/util/List;Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;",
            "Lcom/baidu/mapapi/model/LatLng;",
            ")",
            "Lcom/baidu/mapapi/model/LatLng;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 154
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    .line 159
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_5

    .line 161
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/model/LatLng;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v2, v4, p1}, Lcom/baidu/mapapi/utils/SpatialRelationUtil;->a(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    .line 164
    iget-wide v4, v2, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v6, v6, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    sub-double/2addr v4, v6

    iget-wide v6, v2, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v8, v8, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    sub-double/2addr v6, v8

    mul-double v4, v4, v6

    const-wide/16 v6, 0x0

    cmpg-double v8, v4, v6

    if-gtz v8, :cond_1

    iget-wide v4, v2, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    .line 165
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v8, v8, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    sub-double/2addr v4, v8

    iget-wide v8, v2, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v10, v10, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    sub-double/2addr v8, v10

    mul-double v4, v4, v8

    cmpg-double v8, v4, v6

    if-gtz v8, :cond_1

    goto :goto_2

    .line 168
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {p1, v2}, Lcom/baidu/mapapi/utils/DistanceUtil;->getDistance(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v4

    .line 169
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/model/LatLng;

    .line 168
    invoke-static {p1, v2}, Lcom/baidu/mapapi/utils/DistanceUtil;->getDistance(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v6

    cmpg-double v2, v4, v6

    if-gez v2, :cond_2

    .line 169
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    check-cast v1, Lcom/baidu/mapapi/model/LatLng;

    move-object v2, v1

    :goto_2
    if-eqz v0, :cond_3

    .line 172
    invoke-static {p1, v2}, Lcom/baidu/mapapi/utils/DistanceUtil;->getDistance(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v4

    invoke-static {p1, v0}, Lcom/baidu/mapapi/utils/DistanceUtil;->getDistance(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v6

    cmpg-double v1, v4, v6

    if-gez v1, :cond_4

    :cond_3
    move-object v0, v2

    :cond_4
    move v1, v3

    goto/16 :goto_0

    :cond_5
    :goto_3
    return-object v0
.end method

.method public static isCircleContainsPoint(Lcom/baidu/mapapi/model/LatLng;ILcom/baidu/mapapi/model/LatLng;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {p0, p2}, Lcom/baidu/mapapi/utils/DistanceUtil;->getDistance(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v1

    int-to-double p0, p1

    cmpl-double p2, v1, p0

    if-lez p2, :cond_1

    return v0

    :cond_1
    const/4 p2, 0x1

    cmpl-double v0, v1, p0

    if-nez v0, :cond_2

    :cond_2
    return p2

    :cond_3
    :goto_0
    return v0
.end method

.method public static isPolygonContainsPoint(Ljava/util/List;Lcom/baidu/mapapi/model/LatLng;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;",
            "Lcom/baidu/mapapi/model/LatLng;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    .line 27
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 30
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 31
    iget-wide v4, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v6, v2, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    cmpl-double v2, v4, v6

    if-nez v2, :cond_1

    iget-wide v4, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v6, v2, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    cmpl-double v2, v4, v6

    if-nez v2, :cond_1

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :cond_3
    :goto_1
    if-ge v2, v1, :cond_8

    .line 43
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/mapapi/model/LatLng;

    add-int/lit8 v2, v2, 0x1

    .line 44
    rem-int v6, v2, v1

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/mapapi/model/LatLng;

    .line 47
    iget-wide v7, v5, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v9, v6, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    cmpl-double v11, v7, v9

    if-nez v11, :cond_4

    goto :goto_1

    .line 50
    :cond_4
    iget-wide v7, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v9, v5, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v11, v6, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v9

    cmpg-double v11, v7, v9

    if-gez v11, :cond_5

    goto :goto_1

    .line 53
    :cond_5
    iget-wide v7, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v9, v5, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v11, v6, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    cmpl-double v11, v7, v9

    if-ltz v11, :cond_6

    goto :goto_1

    .line 57
    :cond_6
    iget-wide v7, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v9, v5, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    sub-double/2addr v7, v9

    iget-wide v9, v6, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iget-wide v11, v5, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    sub-double/2addr v9, v11

    mul-double v7, v7, v9

    iget-wide v9, v6, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v11, v5, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    sub-double/2addr v9, v11

    div-double/2addr v7, v9

    iget-wide v5, v5, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    add-double/2addr v7, v5

    .line 59
    iget-wide v5, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    cmpl-double v9, v7, v5

    if-nez v9, :cond_7

    return v3

    .line 62
    :cond_7
    iget-wide v5, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    cmpg-double v9, v7, v5

    if-gez v9, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 66
    :cond_8
    rem-int/lit8 v4, v4, 0x2

    if-ne v4, v3, :cond_9

    const/4 v0, 0x1

    :cond_9
    :goto_2
    return v0
.end method
