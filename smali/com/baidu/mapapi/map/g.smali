.class Lcom/baidu/mapapi/map/g;
.super Ljava/lang/Object;
.source "BaiduMap.java"

# interfaces
.implements Lcom/baidu/mapsdkplatform/comapi/map/ab;


# instance fields
.field final synthetic a:Lcom/baidu/mapapi/map/BaiduMap;


# direct methods
.method constructor <init>(Lcom/baidu/mapapi/map/BaiduMap;)V
    .locals 0

    .line 1093
    iput-object p1, p0, Lcom/baidu/mapapi/map/g;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIILandroid/content/Context;)Landroid/os/Bundle;
    .locals 0

    .line 1096
    iget-object p4, p0, Lcom/baidu/mapapi/map/g;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {p4}, Lcom/baidu/mapapi/map/BaiduMap;->C(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/locks/Lock;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1098
    :try_start_0
    iget-object p4, p0, Lcom/baidu/mapapi/map/g;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {p4}, Lcom/baidu/mapapi/map/BaiduMap;->D(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/TileOverlay;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 1099
    iget-object p4, p0, Lcom/baidu/mapapi/map/g;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {p4}, Lcom/baidu/mapapi/map/BaiduMap;->D(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/TileOverlay;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3}, Lcom/baidu/mapapi/map/TileOverlay;->a(III)Lcom/baidu/mapapi/map/Tile;

    move-result-object p1

    const-string p2, "SDKTileLayer"

    .line 1100
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "mapLayerDataReq tile t == null = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 1103
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Tile;->toBundle()Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1107
    iget-object p2, p0, Lcom/baidu/mapapi/map/g;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {p2}, Lcom/baidu/mapapi/map/BaiduMap;->C(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/baidu/mapapi/map/g;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {p1}, Lcom/baidu/mapapi/map/BaiduMap;->C(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/baidu/mapapi/map/g;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {p2}, Lcom/baidu/mapapi/map/BaiduMap;->C(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
