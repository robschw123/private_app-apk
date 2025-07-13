.class public Lio/dcloud/js/map/JsMapRoute;
.super Lio/dcloud/js/map/JsMapObject;
.source "JsMapRoute.java"

# interfaces
.implements Lio/dcloud/js/map/adapter/IFJsOverlay;


# instance fields
.field private mMapRoute:Lio/dcloud/js/map/adapter/MapRoute;


# direct methods
.method public constructor <init>(Lio/dcloud/common/DHInterface/IWebview;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pWebview"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lio/dcloud/js/map/JsMapObject;-><init>(Lio/dcloud/common/DHInterface/IWebview;)V

    .line 44
    new-instance p1, Lio/dcloud/js/map/adapter/MapRoute;

    invoke-direct {p1}, Lio/dcloud/js/map/adapter/MapRoute;-><init>()V

    iput-object p1, p0, Lio/dcloud/js/map/JsMapRoute;->mMapRoute:Lio/dcloud/js/map/adapter/MapRoute;

    return-void
.end method


# virtual methods
.method protected createObject(Lorg/json/JSONArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pJsArgs"
        }
    .end annotation

    return-void
.end method

.method public getMapOverlay()Ljava/lang/Object;
    .locals 1

    .line 84
    iget-object v0, p0, Lio/dcloud/js/map/JsMapRoute;->mMapRoute:Lio/dcloud/js/map/adapter/MapRoute;

    return-object v0
.end method

.method public onAddToMapView(Lio/dcloud/js/map/adapter/DHMapView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pMapView"
        }
    .end annotation

    .line 88
    invoke-super {p0, p1}, Lio/dcloud/js/map/JsMapObject;->onAddToMapView(Lio/dcloud/js/map/adapter/DHMapView;)V

    .line 89
    iget-object v0, p0, Lio/dcloud/js/map/JsMapRoute;->mMapRoute:Lio/dcloud/js/map/adapter/MapRoute;

    iget-object v1, p0, Lio/dcloud/js/map/JsMapRoute;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-virtual {v0, v1, p1}, Lio/dcloud/js/map/adapter/MapRoute;->initMapRoute(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/js/map/adapter/DHMapView;)V

    return-void
.end method

.method public setRoute(Lio/dcloud/js/map/JsMapPoint;Lio/dcloud/js/map/JsMapPoint;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pStart",
            "pEnd"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lio/dcloud/js/map/JsMapRoute;->mMapRoute:Lio/dcloud/js/map/adapter/MapRoute;

    invoke-virtual {p1}, Lio/dcloud/js/map/JsMapPoint;->getMapPoint()Lio/dcloud/js/map/adapter/MapPoint;

    move-result-object p1

    invoke-virtual {p2}, Lio/dcloud/js/map/JsMapPoint;->getMapPoint()Lio/dcloud/js/map/adapter/MapPoint;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lio/dcloud/js/map/adapter/MapRoute;->setRoute(Lio/dcloud/js/map/adapter/MapPoint;Lio/dcloud/js/map/adapter/MapPoint;)V

    return-void
.end method

.method public setRoute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bdRoute"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lio/dcloud/js/map/JsMapRoute;->mMapRoute:Lio/dcloud/js/map/adapter/MapRoute;

    invoke-virtual {v0, p1}, Lio/dcloud/js/map/adapter/MapRoute;->setRoute(Ljava/lang/Object;)V

    return-void
.end method

.method protected updateObject(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pStrEvent",
            "pJsArgs"
        }
    .end annotation

    return-void
.end method
