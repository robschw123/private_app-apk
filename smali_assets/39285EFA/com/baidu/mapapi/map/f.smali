.class Lcom/baidu/mapapi/map/f;
.super Ljava/lang/Object;
.source "BaiduMap.java"

# interfaces
.implements Lcom/baidu/mapsdkplatform/comapi/map/m;


# instance fields
.field final synthetic a:Lcom/baidu/mapapi/map/BaiduMap;


# direct methods
.method constructor <init>(Lcom/baidu/mapapi/map/BaiduMap;)V
    .locals 0

    .line 1065
    iput-object p1, p0, Lcom/baidu/mapapi/map/f;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)Landroid/os/Bundle;
    .locals 2

    .line 1068
    iget-object v0, p0, Lcom/baidu/mapapi/map/f;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BaiduMap;->w(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1070
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/f;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BaiduMap;->x(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/HeatMap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1071
    iget-object v0, p0, Lcom/baidu/mapapi/map/f;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BaiduMap;->B(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/BaiduMap$OnHeatMapDrawFrameCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/baidu/mapapi/map/f;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BaiduMap;->B(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/BaiduMap$OnHeatMapDrawFrameCallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/mapapi/map/BaiduMap$OnHeatMapDrawFrameCallBack;->frameIndex(I)V

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/f;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BaiduMap;->x(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/HeatMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapapi/map/HeatMap;->getData(II)Lcom/baidu/mapapi/map/HeatMapData;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 1082
    iget-object p1, p0, Lcom/baidu/mapapi/map/f;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {p1}, Lcom/baidu/mapapi/map/BaiduMap;->w(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 1078
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/HeatMapData;->toBundle()Landroid/os/Bundle;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1082
    iget-object p2, p0, Lcom/baidu/mapapi/map/f;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {p2}, Lcom/baidu/mapapi/map/BaiduMap;->w(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/baidu/mapapi/map/f;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {p1}, Lcom/baidu/mapapi/map/BaiduMap;->w(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/baidu/mapapi/map/f;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {p2}, Lcom/baidu/mapapi/map/BaiduMap;->w(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
