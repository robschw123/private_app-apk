.class public Lcom/baidu/mapapi/map/ItemizedOverlay;
.super Lcom/baidu/mapapi/map/Overlay;
.source "ItemizedOverlay.java"


# instance fields
.field a:Lcom/baidu/mapapi/map/MapView;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/baidu/mapapi/map/MapView;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Overlay;-><init>()V

    .line 18
    sget-object p1, Lcom/baidu/mapsdkplatform/comapi/map/i;->c:Lcom/baidu/mapsdkplatform/comapi/map/i;

    iput-object p1, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->type:Lcom/baidu/mapsdkplatform/comapi/map/i;

    .line 19
    iput-object p2, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->a:Lcom/baidu/mapapi/map/MapView;

    return-void
.end method


# virtual methods
.method public addItem(Lcom/baidu/mapapi/map/OverlayOptions;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p1, :cond_0

    .line 28
    iget-object v0, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    :cond_0
    return-void
.end method

.method public reAddAll()V
    .locals 0

    return-void
.end method

.method public removeAll()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/baidu/mapapi/map/ItemizedOverlay;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->clear()V

    return-void
.end method
