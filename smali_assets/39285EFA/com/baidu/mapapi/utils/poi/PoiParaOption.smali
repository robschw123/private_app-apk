.class public Lcom/baidu/mapapi/utils/poi/PoiParaOption;
.super Ljava/lang/Object;
.source "PoiParaOption.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/baidu/mapapi/model/LatLng;

.field d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public center(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/utils/poi/PoiParaOption;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->c:Lcom/baidu/mapapi/model/LatLng;

    return-object p0
.end method

.method public getCenter()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->c:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getRadius()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->d:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->a:Ljava/lang/String;

    return-object v0
.end method

.method public key(Ljava/lang/String;)Lcom/baidu/mapapi/utils/poi/PoiParaOption;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->b:Ljava/lang/String;

    return-object p0
.end method

.method public radius(I)Lcom/baidu/mapapi/utils/poi/PoiParaOption;
    .locals 0

    .line 102
    iput p1, p0, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->d:I

    return-object p0
.end method

.method public uid(Ljava/lang/String;)Lcom/baidu/mapapi/utils/poi/PoiParaOption;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->a:Ljava/lang/String;

    return-object p0
.end method
