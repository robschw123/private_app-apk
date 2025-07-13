.class Lcom/baidu/mapapi/map/aj;
.super Ljava/lang/Object;
.source "WearMapView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/baidu/mapapi/map/WearMapView;


# direct methods
.method constructor <init>(Lcom/baidu/mapapi/map/WearMapView;)V
    .locals 0

    .line 832
    iput-object p1, p0, Lcom/baidu/mapapi/map/aj;->a:Lcom/baidu/mapapi/map/WearMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 834
    iget-object p1, p0, Lcom/baidu/mapapi/map/aj;->a:Lcom/baidu/mapapi/map/WearMapView;

    invoke-static {p1}, Lcom/baidu/mapapi/map/WearMapView;->b(Lcom/baidu/mapapi/map/WearMapView;)Lcom/baidu/platform/comapi/map/MapSurfaceView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->D()Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object p1

    .line 835
    iget v0, p1, Lcom/baidu/mapsdkplatform/comapi/map/x;->a:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p1, Lcom/baidu/mapsdkplatform/comapi/map/x;->a:F

    .line 836
    iget-object v0, p0, Lcom/baidu/mapapi/map/aj;->a:Lcom/baidu/mapapi/map/WearMapView;

    invoke-static {v0}, Lcom/baidu/mapapi/map/WearMapView;->b(Lcom/baidu/mapapi/map/WearMapView;)Lcom/baidu/platform/comapi/map/MapSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Lcom/baidu/mapsdkplatform/comapi/map/x;I)V

    return-void
.end method
