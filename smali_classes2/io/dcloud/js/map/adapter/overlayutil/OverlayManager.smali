.class public abstract Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;
.super Ljava/lang/Object;
.source "OverlayManager.java"

# interfaces
.implements Lcom/baidu/mapapi/map/BaiduMap$OnMarkerClickListener;
.implements Lcom/baidu/mapapi/map/BaiduMap$OnPolylineClickListener;


# instance fields
.field mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

.field mOverlayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/Overlay;",
            ">;"
        }
    .end annotation
.end field

.field private mOverlayOptionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/OverlayOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/map/BaiduMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baiduMap"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    .line 32
    iput-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;->mOverlayOptionList:Ljava/util/List;

    .line 34
    iput-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;->mOverlayList:Ljava/util/List;

    .line 42
    iput-object p1, p0, Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;->mOverlayOptionList:Ljava/util/List;

    .line 47
    iget-object p1, p0, Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;->mOverlayList:Ljava/util/List;

    if-nez p1, :cond_0

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;->mOverlayList:Ljava/util/List;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addToMap()V
    .locals 4

    .line 63
    iget-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;->removeFromMap()V

    .line 68
    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;->getOverlayOptions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;->mOverlayOptionList:Ljava/util/List;

    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;->getOverlayOptions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    :cond_1
    iget-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;->mOverlayOptionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/OverlayOptions;

    .line 74
    iget-object v2, p0, Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;->mOverlayList:Ljava/util/List;

    iget-object v3, p0, Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v3, v1}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public abstract getOverlayOptions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/OverlayOptions;",
            ">;"
        }
    .end annotation
.end method

.method public final removeFromMap()V
    .locals 2

    .line 82
    iget-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;->mOverlayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/Overlay;

    .line 86
    invoke-virtual {v1}, Lcom/baidu/mapapi/map/Overlay;->remove()V

    goto :goto_0

    .line 88
    :cond_1
    iget-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;->mOverlayOptionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 89
    iget-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;->mOverlayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public zoomToSpan()V
    .locals 4

    .line 101
    iget-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;->mOverlayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 105
    new-instance v0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;-><init>()V

    .line 106
    iget-object v1, p0, Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;->mOverlayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/map/Overlay;

    .line 108
    instance-of v3, v2, Lcom/baidu/mapapi/map/Marker;

    if-eqz v3, :cond_1

    .line 109
    check-cast v2, Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v2}, Lcom/baidu/mapapi/map/Marker;->getPosition()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    goto :goto_0

    .line 112
    :cond_2
    iget-object v1, p0, Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    .line 113
    invoke-virtual {v0}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->build()Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newLatLngBounds(Lcom/baidu/mapapi/model/LatLngBounds;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v0

    .line 112
    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->setMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    :cond_3
    return-void
.end method
