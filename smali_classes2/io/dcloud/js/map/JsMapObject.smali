.class public abstract Lio/dcloud/js/map/JsMapObject;
.super Ljava/lang/Object;
.source "JsMapObject.java"


# instance fields
.field mJsId:Ljava/lang/String;

.field protected mMapView:Lio/dcloud/js/map/adapter/DHMapView;

.field mUUID:Ljava/lang/String;

.field protected mWebview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method protected constructor <init>(Lio/dcloud/common/DHInterface/IWebview;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pWebview"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lio/dcloud/js/map/JsMapObject;->mMapView:Lio/dcloud/js/map/adapter/DHMapView;

    .line 24
    iput-object v0, p0, Lio/dcloud/js/map/JsMapObject;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    .line 25
    iput-object v0, p0, Lio/dcloud/js/map/JsMapObject;->mUUID:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lio/dcloud/js/map/JsMapObject;->mJsId:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lio/dcloud/js/map/JsMapObject;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    return-void
.end method


# virtual methods
.method protected abstract createObject(Lorg/json/JSONArray;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pJsArgs"
        }
    .end annotation
.end method

.method public onAddToMapView(Lio/dcloud/js/map/adapter/DHMapView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pMapView"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lio/dcloud/js/map/JsMapObject;->mMapView:Lio/dcloud/js/map/adapter/DHMapView;

    return-void
.end method

.method setJsId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lio/dcloud/js/map/JsMapObject;->mJsId:Ljava/lang/String;

    return-void
.end method

.method setUUID(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uuid"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lio/dcloud/js/map/JsMapObject;->mUUID:Ljava/lang/String;

    return-void
.end method

.method protected abstract updateObject(Ljava/lang/String;Lorg/json/JSONArray;)V
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
.end method

.method protected updateObjectSYNC(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;
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

    const/4 p1, 0x0

    return-object p1
.end method
