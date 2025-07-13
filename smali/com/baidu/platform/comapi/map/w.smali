.class Lcom/baidu/platform/comapi/map/w;
.super Ljava/lang/Object;
.source "MapSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/platform/comapi/map/MapSurfaceView;


# direct methods
.method constructor <init>(Lcom/baidu/platform/comapi/map/MapSurfaceView;)V
    .locals 0

    .line 1257
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/w;->a:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1260
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/w;->a:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 1261
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/w;->a:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1263
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/w;->a:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-static {v1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->c(Lcom/baidu/platform/comapi/map/MapSurfaceView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowStreetRoadMap(Z)V

    :cond_0
    return-void
.end method
