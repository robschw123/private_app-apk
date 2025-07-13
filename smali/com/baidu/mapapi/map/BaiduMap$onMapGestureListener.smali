.class public interface abstract Lcom/baidu/mapapi/map/BaiduMap$onMapGestureListener;
.super Ljava/lang/Object;
.source "BaiduMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/map/BaiduMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "onMapGestureListener"
.end annotation


# virtual methods
.method public abstract onMapDoubleTouch(Landroid/graphics/Point;Lcom/baidu/mapapi/map/MapStatus;)Z
.end method

.method public abstract onMapFling(Landroid/view/MotionEvent;FFLcom/baidu/mapapi/map/MapStatus;)Z
.end method

.method public abstract onMapKneading(Landroid/graphics/Point;Landroid/graphics/Point;Lcom/baidu/mapapi/map/MapStatus;)Z
.end method

.method public abstract onMapOverLooking(Landroid/graphics/Point;Landroid/graphics/Point;Lcom/baidu/mapapi/map/MapStatus;)Z
.end method

.method public abstract onMapScroll(Landroid/graphics/Point;Landroid/graphics/Point;Lcom/baidu/mapapi/map/MapStatus;)Z
.end method

.method public abstract onMapStatusChangeFinish(Lcom/baidu/mapapi/map/MapStatus;)V
.end method

.method public abstract onMapTwoClick(Landroid/graphics/Point;Landroid/graphics/Point;Lcom/baidu/mapapi/map/MapStatus;)Z
.end method
