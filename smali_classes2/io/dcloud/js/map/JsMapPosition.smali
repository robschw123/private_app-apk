.class Lio/dcloud/js/map/JsMapPosition;
.super Lio/dcloud/js/map/JsMapObject;
.source "JsMapPosition.java"


# instance fields
.field private address:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private mJsId:Ljava/lang/String;

.field private mMapPoint:Lio/dcloud/js/map/JsMapPoint;

.field private name:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private postcode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/js/map/JsMapPoint;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pWebview",
            "pMapPoint",
            "pJsId"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1}, Lio/dcloud/js/map/JsMapObject;-><init>(Lio/dcloud/common/DHInterface/IWebview;)V

    .line 61
    iput-object p2, p0, Lio/dcloud/js/map/JsMapPosition;->mMapPoint:Lio/dcloud/js/map/JsMapPoint;

    .line 62
    iput-object p3, p0, Lio/dcloud/js/map/JsMapPosition;->mJsId:Ljava/lang/String;

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

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lio/dcloud/js/map/JsMapPosition;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lio/dcloud/js/map/JsMapPosition;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getMapPoint()Lio/dcloud/js/map/JsMapPoint;
    .locals 1

    .line 76
    iget-object v0, p0, Lio/dcloud/js/map/JsMapPosition;->mMapPoint:Lio/dcloud/js/map/JsMapPoint;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lio/dcloud/js/map/JsMapPosition;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lio/dcloud/js/map/JsMapPosition;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getPostcode()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lio/dcloud/js/map/JsMapPosition;->postcode:Ljava/lang/String;

    return-object v0
.end method

.method public getmJsId()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lio/dcloud/js/map/JsMapPosition;->mJsId:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lio/dcloud/js/map/JsMapPosition;->address:Ljava/lang/String;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "city"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lio/dcloud/js/map/JsMapPosition;->city:Ljava/lang/String;

    return-void
.end method

.method public setMapPoint(Lio/dcloud/js/map/JsMapPoint;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapPoint"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lio/dcloud/js/map/JsMapPosition;->mMapPoint:Lio/dcloud/js/map/JsMapPoint;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lio/dcloud/js/map/JsMapPosition;->name:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "phone"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lio/dcloud/js/map/JsMapPosition;->phone:Ljava/lang/String;

    return-void
.end method

.method public setPostcode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "postcode"
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lio/dcloud/js/map/JsMapPosition;->postcode:Ljava/lang/String;

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
