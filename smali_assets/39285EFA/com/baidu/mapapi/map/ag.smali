.class Lcom/baidu/mapapi/map/ag;
.super Ljava/lang/Object;
.source "WearMapView.java"

# interfaces
.implements Lcom/baidu/mapsdkplatform/comapi/map/f$a;


# instance fields
.field final synthetic a:Lcom/baidu/mapapi/map/CustomMapStyleCallBack;

.field final synthetic b:Lcom/baidu/mapapi/map/MapCustomStyleOptions;

.field final synthetic c:Lcom/baidu/mapapi/map/WearMapView;


# direct methods
.method constructor <init>(Lcom/baidu/mapapi/map/WearMapView;Lcom/baidu/mapapi/map/CustomMapStyleCallBack;Lcom/baidu/mapapi/map/MapCustomStyleOptions;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/baidu/mapapi/map/ag;->c:Lcom/baidu/mapapi/map/WearMapView;

    iput-object p2, p0, Lcom/baidu/mapapi/map/ag;->a:Lcom/baidu/mapapi/map/CustomMapStyleCallBack;

    iput-object p3, p0, Lcom/baidu/mapapi/map/ag;->b:Lcom/baidu/mapapi/map/MapCustomStyleOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/baidu/mapapi/map/ag;->a:Lcom/baidu/mapapi/map/CustomMapStyleCallBack;

    if-eqz v0, :cond_0

    .line 435
    invoke-interface {v0, p1, p2, p3}, Lcom/baidu/mapapi/map/CustomMapStyleCallBack;->onCustomMapStyleLoadFailed(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 443
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/ag;->c:Lcom/baidu/mapapi/map/WearMapView;

    invoke-static {p1}, Lcom/baidu/mapapi/map/WearMapView;->a(Lcom/baidu/mapapi/map/WearMapView;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 447
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapapi/map/ag;->c:Lcom/baidu/mapapi/map/WearMapView;

    iget-object p2, p0, Lcom/baidu/mapapi/map/ag;->b:Lcom/baidu/mapapi/map/MapCustomStyleOptions;

    invoke-static {p1, p3, p2}, Lcom/baidu/mapapi/map/WearMapView;->a(Lcom/baidu/mapapi/map/WearMapView;Ljava/lang/String;Lcom/baidu/mapapi/map/MapCustomStyleOptions;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/baidu/mapapi/map/ag;->a:Lcom/baidu/mapapi/map/CustomMapStyleCallBack;

    if-eqz v0, :cond_0

    .line 402
    invoke-interface {v0, p1}, Lcom/baidu/mapapi/map/CustomMapStyleCallBack;->onPreLoadLastCustomMapStyle(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/ag;->c:Lcom/baidu/mapapi/map/WearMapView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/mapapi/map/WearMapView;->a(Lcom/baidu/mapapi/map/WearMapView;Z)Z

    .line 411
    iget-object v0, p0, Lcom/baidu/mapapi/map/ag;->c:Lcom/baidu/mapapi/map/WearMapView;

    iget-object v1, p0, Lcom/baidu/mapapi/map/ag;->b:Lcom/baidu/mapapi/map/MapCustomStyleOptions;

    invoke-static {v0, p1, v1}, Lcom/baidu/mapapi/map/WearMapView;->a(Lcom/baidu/mapapi/map/WearMapView;Ljava/lang/String;Lcom/baidu/mapapi/map/MapCustomStyleOptions;)V

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/baidu/mapapi/map/ag;->a:Lcom/baidu/mapapi/map/CustomMapStyleCallBack;

    if-eqz v0, :cond_0

    .line 418
    invoke-interface {v0, p1, p2}, Lcom/baidu/mapapi/map/CustomMapStyleCallBack;->onCustomMapStyleLoadSuccess(ZLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 425
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 426
    iget-object p1, p0, Lcom/baidu/mapapi/map/ag;->c:Lcom/baidu/mapapi/map/WearMapView;

    const-string v0, ""

    invoke-static {p1, p2, v0}, Lcom/baidu/mapapi/map/WearMapView;->a(Lcom/baidu/mapapi/map/WearMapView;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object p1, p0, Lcom/baidu/mapapi/map/ag;->c:Lcom/baidu/mapapi/map/WearMapView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/map/WearMapView;->setMapCustomStyleEnable(Z)V

    :cond_1
    return-void
.end method
