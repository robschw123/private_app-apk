.class Lcom/baidu/platform/comapi/map/q;
.super Ljava/lang/Object;
.source "MapRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/platform/comapi/map/MapSurfaceView;

.field final synthetic b:Lcom/baidu/platform/comapi/map/p;


# direct methods
.method constructor <init>(Lcom/baidu/platform/comapi/map/p;Lcom/baidu/platform/comapi/map/MapSurfaceView;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/q;->b:Lcom/baidu/platform/comapi/map/p;

    iput-object p2, p0, Lcom/baidu/platform/comapi/map/q;->a:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/q;->a:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 195
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method
