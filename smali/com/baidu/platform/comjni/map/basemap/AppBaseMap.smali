.class public Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;
.super Ljava/lang/Object;
.source "AppBaseMap.java"


# instance fields
.field private a:J

.field private b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

.field private final c:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    .line 21
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 24
    new-instance v0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-direct {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    return-void
.end method

.method public static renderClearShaderCache(Ljava/lang/String;)V
    .locals 0

    .line 790
    invoke-static {p0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->renderClearShaderCache(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public AddItemData(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 364
    invoke-virtual {p0, p1, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->AddItemData(Landroid/os/Bundle;Z)V

    return-void
.end method

.method public AddItemData(Landroid/os/Bundle;Z)V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->addItemData(Landroid/os/Bundle;Z)V

    return-void
.end method

.method public AddLayer(IILjava/lang/String;)J
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->addLayer(IILjava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public AddPopupData(Landroid/os/Bundle;)V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->addPopupData(Landroid/os/Bundle;)V

    return-void
.end method

.method public AddRtPopData(Landroid/os/Bundle;)V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->addRtPopData(Landroid/os/Bundle;)V

    return-void
.end method

.method public AddStreetCustomMarker(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V
    .locals 5

    .line 521
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 522
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->addStreetCustomMarker(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public BeginLocationLayerAnimation()V
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->beginLocationLayerAnimation()V

    return-void
.end method

.method public CleanCache(I)Z
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->cleanCache(I)Z

    move-result p1

    return p1
.end method

.method public ClearLayer(J)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->clearLayer(J)V

    return-void
.end method

.method public ClearLocationLayerData(Landroid/os/Bundle;)V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->clearLocationLayerData(Landroid/os/Bundle;)V

    return-void
.end method

.method public ClearMistmapLayer()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->clearMistmapLayer()V

    return-void
.end method

.method public ClearSDKLayer(J)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->clearSDKLayer(J)V

    return-void
.end method

.method public CloseCache()Z
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->closeCache()Z

    move-result v0

    return v0
.end method

.method public Create()Z
    .locals 2

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 38
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 41
    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public CreateByDuplicate(J)Z
    .locals 3

    .line 413
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->createByDuplicate(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public CreateDuplicate()J
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->createDuplicate()J

    move-result-wide v0

    return-wide v0
.end method

.method public Draw()I
    .locals 5

    .line 89
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 90
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->draw()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public GeoPtToScrPoint(II)Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->geoPtToScrPoint(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public GetAdapterZoomUnitsEx()F
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getAdapterZoomUnitsEx()F

    move-result v0

    return v0
.end method

.method public GetCacheSize(I)I
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getCacheSize(I)I

    move-result p1

    return p1
.end method

.method public GetCityInfoByID(I)Ljava/lang/String;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getCityInfoByID(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public GetDrawingMapStatus()Landroid/os/Bundle;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getDrawingMapStatus()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public GetFZoomToBoundF(Landroid/os/Bundle;Landroid/os/Bundle;)F
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getFZoomToBoundF(Landroid/os/Bundle;Landroid/os/Bundle;)F

    move-result p1

    return p1
.end method

.method public GetFocusedBaseIndoorMapInfo()Ljava/lang/String;
    .locals 5

    .line 471
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 472
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getFocusedBaseIndoorMapInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public GetId()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    return-wide v0
.end method

.method public GetMapRenderType()I
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getMapRenderType()I

    move-result v0

    return v0
.end method

.method public GetMapStatus()Landroid/os/Bundle;
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getMapStatus(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public GetMapStatus(Z)Landroid/os/Bundle;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getMapStatus(Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public GetNearlyObjID(JIII)Ljava/lang/String;
    .locals 6

    .line 256
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getNearlyObjID(JIII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public GetVMPMapCityInfo(Landroid/os/Bundle;)I
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getVMPMapCityInfo(Landroid/os/Bundle;)I

    move-result p1

    return p1
.end method

.method public GetZoomToBound(Landroid/os/Bundle;II)F
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getZoomToBound(Landroid/os/Bundle;II)F

    move-result p1

    return p1
.end method

.method public GetZoomToBoundF(Landroid/os/Bundle;)F
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getZoomToBoundF(Landroid/os/Bundle;)F

    move-result p1

    return p1
.end method

.method public Init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIZZ)Z
    .locals 23
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    .line 72
    iget-wide v1, v0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-object v6, v0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    move/from16 v16, p10

    move/from16 v17, p11

    move/from16 v18, p12

    move/from16 v19, p13

    move/from16 v20, p14

    move/from16 v21, p15

    move/from16 v22, p16

    .line 73
    invoke-virtual/range {v6 .. v22}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public IsBaseIndoorMapMode()Z
    .locals 5

    .line 483
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->isBaseIndoorMapMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public IsPointInFocusBarBorder(DDD)Z
    .locals 13

    move-object v0, p0

    .line 491
    iget-wide v1, v0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-object v6, v0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    move-wide v7, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    invoke-virtual/range {v6 .. v12}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->isPointInFocusBarBorder(DDD)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public IsPointInFocusIDRBorder(DD)Z
    .locals 5

    .line 487
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->isPointInFocusIDRBorder(DD)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public IsStreetArrowShown()Z
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->isStreetArrowShown()Z

    move-result v0

    return v0
.end method

.method public IsStreetCustomMarkerShown()Z
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->isStreetCustomMarkerShown()Z

    move-result v0

    return v0
.end method

.method public IsStreetPOIMarkerShown()Z
    .locals 5

    .line 499
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->isStreetPOIMarkerShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public IsStreetRoadClickable()Z
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->isStreetRoadClickable()Z

    move-result v0

    return v0
.end method

.method public LayersIsShow(J)Z
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->layersIsShow(J)Z

    move-result p1

    return p1
.end method

.method public MoveToScrPoint(II)V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->moveToScrPoint(II)V

    return-void
.end method

.method public OnBackground()V
    .locals 5

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 120
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 121
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->onBackground()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public OnForeground()V
    .locals 5

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 131
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 132
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->onForeground()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public OnHotcityGet()Ljava/lang/String;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->onHotcityGet()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OnPause()V
    .locals 5

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 98
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 99
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public OnRecordAdd(I)Z
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->onRecordAdd(I)Z

    move-result p1

    return p1
.end method

.method public OnRecordGetAll()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->onRecordGetAll()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OnRecordGetAt(I)Ljava/lang/String;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->onRecordGetAt(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public OnRecordImport(ZZ)Z
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->onRecordImport(ZZ)Z

    move-result p1

    return p1
.end method

.method public OnRecordReload(IZ)Z
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->onRecordReload(IZ)Z

    move-result p1

    return p1
.end method

.method public OnRecordRemove(IZ)Z
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->onRecordRemove(IZ)Z

    move-result p1

    return p1
.end method

.method public OnRecordStart(IZI)Z
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->onRecordStart(IZI)Z

    move-result p1

    return p1
.end method

.method public OnRecordSuspend(IZI)Z
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->onRecordSuspend(IZI)Z

    move-result p1

    return p1
.end method

.method public OnResume()V
    .locals 5

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 109
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 110
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public OnSchcityGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->onSchcityGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public OnUsrcityMsgInterval(I)Z
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->onUsrcityMsgInterval(I)Z

    move-result p1

    return p1
.end method

.method public OnWifiRecordAdd(I)I
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->onWifiRecordAdd(I)I

    move-result p1

    return p1
.end method

.method public Release()Z
    .locals 5

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 49
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 50
    invoke-static {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;->release(J)V

    .line 51
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->dispose()I

    .line 52
    iput-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 57
    :goto_0
    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public Remo()V
    .locals 0

    return-void
.end method

.method public RemoveItemData(Landroid/os/Bundle;)Z
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->removeItemData(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public RemoveLayer(J)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->removeLayer(J)V

    return-void
.end method

.method public RemoveStreetAllCustomMarker()V
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->removeStreetAllCustomMarker()V

    return-void
.end method

.method public RemoveStreetCustomMaker(Ljava/lang/String;)V
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->removeStreetCustomMaker(Ljava/lang/String;)V

    return-void
.end method

.method public ResetImageRes()V
    .locals 5

    .line 140
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 141
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->resetImageRes()V

    :cond_0
    return-void
.end method

.method public ResumeCache()Z
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->resumeCache()Z

    move-result v0

    return v0
.end method

.method public SaveCache()Z
    .locals 1

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->saveCache()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method public SaveScreenToLocal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->saveScreenToLocal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ScrPtToGeoPoint(II)Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->scrPtToGeoPoint(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public SetAllStreetCustomMarkerVisibility(Z)V
    .locals 5

    .line 509
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 510
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setAllStreetCustomMarkerVisibility(Z)V

    :cond_0
    return-void
.end method

.method public SetCallback(Lcom/baidu/platform/comjni/map/basemap/a;)Z
    .locals 5

    if-eqz p1, :cond_0

    .line 28
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;->setMapCallback(JLcom/baidu/platform/comjni/map/basemap/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public SetFocus(JJZLandroid/os/Bundle;)V
    .locals 7

    .line 260
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setFocus(JJZLandroid/os/Bundle;)V

    return-void
.end method

.method public SetItsPreTime(III)Z
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setItsPreTime(III)Z

    move-result p1

    return p1
.end method

.method public SetLayerSceneMode(JI)Z
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setLayerSceneMode(JI)Z

    move-result p1

    return p1
.end method

.method public SetLayersClickable(JZ)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setLayersClickable(JZ)V

    return-void
.end method

.method public SetLocationLayerData(Landroid/os/Bundle;)V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setLocationLayerData(Landroid/os/Bundle;)V

    return-void
.end method

.method public SetMapControlMode(I)I
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setMapControlMode(I)I

    move-result p1

    return p1
.end method

.method public SetMapStatus(Landroid/os/Bundle;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setMapStatus(Landroid/os/Bundle;)V

    return-void
.end method

.method public SetNewMapStatus(Landroid/os/Bundle;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setNewMapStatus(Landroid/os/Bundle;)V

    return-void
.end method

.method public SetSDKLayerCallback(Lcom/baidu/mapsdkplatform/comjni/a/a/a;)Z
    .locals 5

    if-eqz p1, :cond_0

    .line 32
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;->setMapSDKCallback(JLcom/baidu/mapsdkplatform/comjni/a/a/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public SetStreetArrowShow(Z)V
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setStreetArrowShow(Z)V

    return-void
.end method

.method public SetStreetMarkerClickable(Ljava/lang/String;Z)V
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setStreetMarkerClickable(Ljava/lang/String;Z)V

    return-void
.end method

.method public SetStreetRoadClickable(Z)V
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setStreetRoadClickable(Z)V

    return-void
.end method

.method public SetStyleMode(I)V
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setStyleMode(I)V

    return-void
.end method

.method public SetTargetStreetCustomMarkerVisibility(ZLjava/lang/String;)V
    .locals 5

    .line 515
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 516
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setTargetStreetCustomMarkerVisibility(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public ShowBaseIndoorMap(Z)V
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showBaseIndoorMap(Z)V

    return-void
.end method

.method public ShowHotMap(ZI)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showHotMap(ZI)V

    return-void
.end method

.method public ShowHotMap(ZILjava/lang/String;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showHotMap(ZILjava/lang/String;)V

    return-void
.end method

.method public ShowLayers(JZ)V
    .locals 5

    .line 218
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 219
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showLayers(JZ)V

    :cond_0
    return-void
.end method

.method public ShowMistMap(ZLjava/lang/String;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showMistMap(ZLjava/lang/String;)V

    return-void
.end method

.method public ShowSatelliteMap(Z)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showSatelliteMap(Z)V

    return-void
.end method

.method public ShowStreetPOIMarker(Z)V
    .locals 5

    .line 503
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 504
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showStreetPOIMarker(Z)V

    :cond_0
    return-void
.end method

.method public ShowStreetRoadMap(Z)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showStreetRoadMap(Z)V

    return-void
.end method

.method public ShowTrafficMap(Z)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showTrafficMap(Z)V

    return-void
.end method

.method public StartIndoorAnimation()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->startIndoorAnimation()V

    return-void
.end method

.method public SwitchBaseIndoorMapFloor(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->switchBaseIndoorMapFloor(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public SwitchLayer(JJ)Z
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->switchLayer(JJ)Z

    move-result p1

    return p1
.end method

.method public UpdateLayers(J)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->updateLayers(J)V

    return-void
.end method

.method public addBmLayerBelow(JJII)Z
    .locals 7

    .line 842
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->addBmLayerBelow(JJII)Z

    move-result p1

    return p1
.end method

.method public addOneOverlayItem(Landroid/os/Bundle;)V
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->addOneOverlayItem(Landroid/os/Bundle;)V

    return-void
.end method

.method public addOverlayItems([Landroid/os/Bundle;I)V
    .locals 1

    .line 644
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->addOverlayItems([Landroid/os/Bundle;I)V

    return-void
.end method

.method public addSDKTileData(Landroid/os/Bundle;)Z
    .locals 3

    .line 667
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeAddTileOverlay(JLandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public cleanSDKTileDataCache(J)Z
    .locals 3

    .line 663
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeCleanSDKTileDataCache(JJ)Z

    move-result p1

    return p1
.end method

.method public clearHeatMapLayerCache(J)V
    .locals 1

    .line 941
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    return-void

    .line 945
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->clearHeatMapLayerCache(J)V

    return-void
.end method

.method public clearUniversalLayer()V
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->clearUniversalLayer()V

    return-void
.end method

.method public closeParticleEffect(Ljava/lang/String;)V
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->closeParticleEffect(Ljava/lang/String;)V

    return-void
.end method

.method public enablePOIAnimation(Z)V
    .locals 1

    .line 744
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 745
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->enablePOIAnimation(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    iget-object p1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public entryFeedTopic(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->entrySearchTopic(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public entrySearchTopic(I)V
    .locals 2

    .line 794
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    const-string v1, ""

    invoke-virtual {v0, p1, v1, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->entrySearchTopic(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public exitSearchTopic()V
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->exitSearchTopic()V

    return-void
.end method

.method public focusTrafficUGCLabel()V
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->focusTrafficUGCLabel()V

    return-void
.end method

.method public geoPt3ToScrPoint(III)Ljava/lang/String;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->geoPt3ToScrPoint(III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get3DModelEnable()Z
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->get3DModelEnable()Z

    move-result v0

    return v0
.end method

.method public getDEMEnable()Z
    .locals 1

    .line 770
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getDEMEnable()Z

    move-result v0

    return v0
.end method

.method public getDrawHouseHeightEnable()Z
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 762
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getDrawHouseHeightEnable()Z

    move-result v0

    return v0
.end method

.method public getFontSizeLevel()I
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getFontSizeLevel()I

    move-result v0

    return v0
.end method

.method public getLayerIDByTag(Ljava/lang/String;)J
    .locals 2

    .line 917
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 921
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getLayerIDByTag(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMapBarData(Landroid/os/Bundle;)Z
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getMapBarData(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public getMapLanguage()I
    .locals 1

    .line 999
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1003
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getMapLanguage()I

    move-result v0

    return v0
.end method

.method public getMapScene()I
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getMapScene()I

    move-result v0

    return v0
.end method

.method public getMapStatusLimits()Landroid/os/Bundle;
    .locals 1

    .line 886
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 889
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getMapStatusLimits()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getMapStatusLimitsLevel([I)Z
    .locals 1

    .line 815
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getMapStatusLimitsLevel([I)Z

    move-result p1

    return p1
.end method

.method public getMapTheme()I
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getMapTheme()I

    move-result v0

    return v0
.end method

.method public getProjectionMatrix()[F
    .locals 2

    .line 893
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/16 v1, 0x10

    new-array v1, v1, [F

    .line 899
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getProjectMatrix([F)V

    return-object v1
.end method

.method public getProjectionPt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getProjectionPt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScaleLevel(II)I
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getScaleLevel(II)I

    move-result p1

    return p1
.end method

.method public getSkyboxStyle()I
    .locals 1

    .line 786
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getSkyboxStyle()I

    move-result v0

    return v0
.end method

.method public getViewMatrix()[F
    .locals 2

    .line 905
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/16 v1, 0x10

    new-array v1, v1, [F

    .line 911
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getViewMatrix([F)V

    return-object v1
.end method

.method public importMapTheme(I)Z
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->importMapTheme(I)Z

    move-result p1

    return p1
.end method

.method public initCustomStyle(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 925
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 929
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->initCustomStyle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public initHeatMapData(JLandroid/os/Bundle;)V
    .locals 1

    .line 970
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    return-void

    .line 973
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->initHeatMapData(JLandroid/os/Bundle;)V

    return-void
.end method

.method public initWithOptions(Landroid/os/Bundle;Z)Z
    .locals 5

    .line 79
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->initWithOptions(Landroid/os/Bundle;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isAnimationRunning()Z
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->isAnimationRunning()Z

    move-result v0

    return v0
.end method

.method public isEnableIndoor3D()Z
    .locals 1

    .line 863
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->isEnableIndoor3D()Z

    move-result v0

    return v0
.end method

.method public isNaviMode()Z
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->isNaviMode()Z

    move-result v0

    return v0
.end method

.method public moveLayerBelowTo(JI)Z
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->moveLayerBelowTo(JI)Z

    move-result p1

    return p1
.end method

.method public performAction(Ljava/lang/String;)Z
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->performAction(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public recycleMemory(I)V
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->recycleMemory(I)V

    return-void
.end method

.method public releaseFromOfflineMap()Z
    .locals 5

    .line 978
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 979
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 980
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->dispose()I

    .line 981
    iput-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 986
    :goto_0
    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public removeBmLayer(J)V
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->removeBmLayer(J)V

    return-void
.end method

.method public removeOneOverlayItem(Landroid/os/Bundle;)V
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->removeOneOverlayItem(Landroid/os/Bundle;)V

    return-void
.end method

.method public removeOverlayItems([Landroid/os/Bundle;)V
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->removeOneOverlayItems([Landroid/os/Bundle;)V

    return-void
.end method

.method public renderDone()V
    .locals 2

    .line 735
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 736
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->renderDone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public renderInit(IILandroid/view/Surface;I)V
    .locals 1

    .line 699
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 700
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->renderInit(IILandroid/view/Surface;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    iget-object p1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public renderRender()I
    .locals 2

    .line 726
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 727
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->renderRender()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public renderResize(II)V
    .locals 1

    .line 708
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 709
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->renderResize(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    iget-object p1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public resize(II)V
    .locals 5

    .line 83
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 84
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->renderResize(II)V

    :cond_0
    return-void
.end method

.method public set3DModelEnable(Z)V
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->set3DModelEnable(Z)V

    return-void
.end method

.method public setCustomStyleEnable(Z)V
    .locals 1

    .line 933
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    return-void

    .line 937
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setCustomStyleEnable(Z)V

    return-void
.end method

.method public setDEMEnable(Z)V
    .locals 1

    .line 766
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setDEMEnable(Z)V

    return-void
.end method

.method public setDpiScale(F)V
    .locals 1

    .line 867
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setDpiScale(F)V

    return-void
.end method

.method public setDrawHouseHeightEnable(Z)V
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    return-void

    .line 755
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setDrawHouseHeightEnable(Z)V

    return-void
.end method

.method public setEnableIndoor3D(Z)V
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setEnableIndoor3D(Z)V

    return-void
.end method

.method public setFontSizeLevel(I)V
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setFontSizeLevel(I)V

    return-void
.end method

.method public setHeatMapFrameAnimationIndex(JI)V
    .locals 1

    .line 963
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    return-void

    .line 966
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setHeatMapFrameAnimationIndex(JI)V

    return-void
.end method

.method public setMapLanguage(I)V
    .locals 1

    .line 991
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    return-void

    .line 995
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setMapLanguage(I)V

    return-void
.end method

.method public setMapScene(I)V
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setMapScene(I)V

    return-void
.end method

.method public setMapStatusLimits(Landroid/os/Bundle;)V
    .locals 1

    .line 872
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    return-void

    .line 875
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setMapStatusLimits(Landroid/os/Bundle;)V

    return-void
.end method

.method public setMapStatusLimitsLevel(II)Z
    .locals 1

    .line 819
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setMapStatusLimitsLevel(II)Z

    move-result p1

    return p1
.end method

.method public setMapTheme(ILandroid/os/Bundle;)Z
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setMapTheme(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public setMapThemeScene(IILandroid/os/Bundle;)Z
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setMapThemeScene(IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public setMaxAndMinZoomLevel(Landroid/os/Bundle;)V
    .locals 1

    .line 879
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    return-void

    .line 882
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setMaxAndMinZoomLevel(Landroid/os/Bundle;)V

    return-void
.end method

.method public setRecommendPOIScene(I)V
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setRecommendPOIScene(I)V

    return-void
.end method

.method public setSkyboxStyle(I)V
    .locals 1

    .line 782
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setSkyboxStyle(I)V

    return-void
.end method

.method public setTestSwitch(Z)Z
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setTestSwitch(Z)Z

    move-result p1

    return p1
.end method

.method public setTrafficUGCData(Ljava/lang/String;)V
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setTrafficUGCData(Ljava/lang/String;)V

    return-void
.end method

.method public setUniversalFilter(Ljava/lang/String;)V
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setUniversalFilter(Ljava/lang/String;)V

    return-void
.end method

.method public showFootMarkGrid(ZLjava/lang/String;)V
    .locals 1

    .line 807
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showFootMarkGrid(ZLjava/lang/String;)V

    return-void
.end method

.method public showParticleEffect(I)Z
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showParticleEffect(I)Z

    move-result p1

    return p1
.end method

.method public showParticleEffectByName(Ljava/lang/String;Z)Z
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showParticleEffectByName(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public showParticleEffectByType(I)Z
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showParticleEffectByType(I)Z

    move-result p1

    return p1
.end method

.method public showTrafficUGCMap(Z)V
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showTrafficUGCMap(Z)V

    return-void
.end method

.method public showUniversalLayer(Landroid/os/Bundle;)V
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showUniversalLayer(Landroid/os/Bundle;)V

    return-void
.end method

.method public startHeatMapFrameAnimation(J)V
    .locals 1

    .line 949
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    return-void

    .line 952
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->startHeatMapFrameAnimation(J)V

    return-void
.end method

.method public stopHeatMapFrameAnimation(J)V
    .locals 1

    .line 956
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    return-void

    .line 959
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->stopHeatMapFrameAnimation(J)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/Surface;)V
    .locals 1

    .line 717
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 718
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->surfaceDestroyed(Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 720
    iget-object p1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public unFocusTrafficUGCLabel()V
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->unFocusTrafficUGCLabel()V

    return-void
.end method

.method public updateBaseLayers()V
    .locals 1

    .line 826
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->updateBaseLayers()V

    return-void
.end method

.method public updateDrawFPS()V
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->updateDrawFPS()V

    return-void
.end method

.method public updateFootMarkGrid()V
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->updateFootMarkGrid()V

    return-void
.end method

.method public updateOneOverlayItem(Landroid/os/Bundle;)V
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->updateOneOverlayItem(Landroid/os/Bundle;)V

    return-void
.end method

.method public updateSDKTile(Landroid/os/Bundle;)Z
    .locals 3

    .line 659
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeUpdateSDKTile(JLandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public worldPointToScreenPoint(FFF)Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->worldPointToScreenPoint(FFF)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
