.class public Lcom/baidu/mapapi/utils/route/RouteParaOption;
.super Ljava/lang/Object;
.source "RouteParaOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;
    }
.end annotation


# instance fields
.field a:Lcom/baidu/mapapi/model/LatLng;

.field b:Lcom/baidu/mapapi/model/LatLng;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;->bus_recommend_way:Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;

    iput-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->f:Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;

    return-void
.end method


# virtual methods
.method public busStrategyType(Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;)Lcom/baidu/mapapi/utils/route/RouteParaOption;
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->f:Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;

    return-object p0
.end method

.method public cityName(Ljava/lang/String;)Lcom/baidu/mapapi/utils/route/RouteParaOption;
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->e:Ljava/lang/String;

    return-object p0
.end method

.method public endName(Ljava/lang/String;)Lcom/baidu/mapapi/utils/route/RouteParaOption;
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->d:Ljava/lang/String;

    return-object p0
.end method

.method public endPoint(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/utils/route/RouteParaOption;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->b:Lcom/baidu/mapapi/model/LatLng;

    return-object p0
.end method

.method public getBusStrategyType()Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->f:Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;

    return-object v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getEndName()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getEndPoint()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->b:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getStartName()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getStartPoint()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->a:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public startName(Ljava/lang/String;)Lcom/baidu/mapapi/utils/route/RouteParaOption;
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->c:Ljava/lang/String;

    return-object p0
.end method

.method public startPoint(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/utils/route/RouteParaOption;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->a:Lcom/baidu/mapapi/model/LatLng;

    return-object p0
.end method
