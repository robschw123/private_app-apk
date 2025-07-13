.class Lcom/baidu/platform/comapi/map/n;
.super Ljava/lang/Object;
.source "MapController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/platform/comapi/map/MapStatus;

.field final synthetic b:Lcom/baidu/platform/comapi/map/MapController$b;


# direct methods
.method constructor <init>(Lcom/baidu/platform/comapi/map/MapController$b;Lcom/baidu/platform/comapi/map/MapStatus;)V
    .locals 0

    .line 3121
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/n;->b:Lcom/baidu/platform/comapi/map/MapController$b;

    iput-object p2, p0, Lcom/baidu/platform/comapi/map/n;->a:Lcom/baidu/platform/comapi/map/MapStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3127
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/n;->b:Lcom/baidu/platform/comapi/map/MapController$b;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapController$b;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapView()Lcom/baidu/platform/comapi/map/MapViewInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/n;->b:Lcom/baidu/platform/comapi/map/MapController$b;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapController$b;->a:Lcom/baidu/platform/comapi/map/MapController;

    .line 3128
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapView()Lcom/baidu/platform/comapi/map/MapViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/MapViewInterface;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3129
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/n;->b:Lcom/baidu/platform/comapi/map/MapController$b;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapController$b;->a:Lcom/baidu/platform/comapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapController;->i:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/MapViewInterface;

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/MapViewInterface;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/n;->a:Lcom/baidu/platform/comapi/map/MapStatus;

    iget-object v1, v1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->left:I

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/n;->b:Lcom/baidu/platform/comapi/map/MapController$b;

    iget-object v2, v2, Lcom/baidu/platform/comapi/map/MapController$b;->a:Lcom/baidu/platform/comapi/map/MapController;

    .line 3130
    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/MapController;->getScreenWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/n;->a:Lcom/baidu/platform/comapi/map/MapStatus;

    iget-object v2, v2, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v2, v2, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->top:I

    iget-object v3, p0, Lcom/baidu/platform/comapi/map/n;->b:Lcom/baidu/platform/comapi/map/MapController$b;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/MapController$b;->a:Lcom/baidu/platform/comapi/map/MapController;

    .line 3131
    invoke-virtual {v3}, Lcom/baidu/platform/comapi/map/MapController;->getScreenHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 3129
    invoke-interface {v0, v1, v2}, Lcom/baidu/platform/comapi/map/Projection;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3135
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v1

    double-to-float v1, v1

    .line 3136
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v2

    double-to-float v0, v2

    .line 3138
    iget-object v2, p0, Lcom/baidu/platform/comapi/map/n;->b:Lcom/baidu/platform/comapi/map/MapController$b;

    iget-object v2, v2, Lcom/baidu/platform/comapi/map/MapController$b;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-static {v2}, Lcom/baidu/platform/comapi/map/MapController;->b(Lcom/baidu/platform/comapi/map/MapController;)J

    move-result-wide v2

    invoke-static {v2, v3, v1, v0}, Lcom/baidu/platform/comapi/map/MapController;->CleanAfterDBClick(JFF)I

    .line 3141
    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/n;->b:Lcom/baidu/platform/comapi/map/MapController$b;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapController$b;->a:Lcom/baidu/platform/comapi/map/MapController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/platform/comapi/map/MapController;->a(Lcom/baidu/platform/comapi/map/MapController;Z)Z

    return-void
.end method
