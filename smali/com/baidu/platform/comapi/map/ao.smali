.class public Lcom/baidu/platform/comapi/map/ao;
.super Lcom/baidu/platform/comapi/map/InnerOverlay;
.source "StreetPopupOverlay.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x1e

    .line 14
    invoke-direct {p0, v0}, Lcom/baidu/platform/comapi/map/InnerOverlay;-><init>(I)V

    return-void
.end method


# virtual methods
.method public addedToMapView()Z
    .locals 6

    .line 22
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/ao;->mBaseMap:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/ao;->mBaseMap:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v2, 0x2

    const-string v3, "streetpopup"

    invoke-virtual {v0, v2, v1, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->AddLayer(IILjava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/platform/comapi/map/ao;->mLayerID:J

    .line 27
    iget-wide v2, p0, Lcom/baidu/platform/comapi/map/ao;->mLayerID:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/ao;->mBaseMap:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comapi/map/ao;->mLayerID:J

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetLayersClickable(JZ)V

    .line 29
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/ao;->mBaseMap:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comapi/map/ao;->mLayerID:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    return v4

    :cond_1
    return v1
.end method
