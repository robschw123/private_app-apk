.class Lio/dcloud/js/map/JsMapPoint;
.super Lio/dcloud/js/map/JsMapObject;
.source "JsMapPoint.java"


# instance fields
.field private mMapPoint:Lio/dcloud/js/map/adapter/MapPoint;


# direct methods
.method public constructor <init>(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pWebview",
            "pLongitude",
            "pLatitude"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Lio/dcloud/js/map/JsMapObject;-><init>(Lio/dcloud/common/DHInterface/IWebview;)V

    .line 47
    new-instance p1, Lio/dcloud/js/map/adapter/MapPoint;

    invoke-direct {p1, p2, p3}, Lio/dcloud/js/map/adapter/MapPoint;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lio/dcloud/js/map/JsMapPoint;->mMapPoint:Lio/dcloud/js/map/adapter/MapPoint;

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

.method public getMapPoint()Lio/dcloud/js/map/adapter/MapPoint;
    .locals 1

    .line 51
    iget-object v0, p0, Lio/dcloud/js/map/JsMapPoint;->mMapPoint:Lio/dcloud/js/map/adapter/MapPoint;

    return-object v0
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
