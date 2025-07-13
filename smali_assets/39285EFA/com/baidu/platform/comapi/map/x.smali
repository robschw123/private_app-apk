.class Lcom/baidu/platform/comapi/map/x;
.super Ljava/lang/Object;
.source "MapSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/baidu/platform/comapi/map/MapSurfaceView;


# direct methods
.method constructor <init>(Lcom/baidu/platform/comapi/map/MapSurfaceView;Z)V
    .locals 0

    .line 1285
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/x;->b:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/x;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1288
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/x;->b:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 1289
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/x;->b:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1291
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/x;->a:Z

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowBaseIndoorMap(Z)V

    :cond_0
    return-void
.end method
