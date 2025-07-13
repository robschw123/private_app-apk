.class public Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;
.super Lcom/baidu/mapapi/search/core/RouteStep;
.source "IndoorRouteLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/search/route/IndoorRouteLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndoorRouteStep"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep$IndoorStepNode;
    }
.end annotation


# instance fields
.field private d:Lcom/baidu/mapapi/search/core/RouteNode;

.field private e:Lcom/baidu/mapapi/search/core/RouteNode;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep$IndoorStepNode;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/RouteStep;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 50
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 51
    new-instance v2, Lcom/baidu/mapapi/model/LatLng;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    add-int/lit8 v5, v1, 0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 52
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getBuildingId()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getEntrace()Lcom/baidu/mapapi/search/core/RouteNode;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->d:Lcom/baidu/mapapi/search/core/RouteNode;

    return-object v0
.end method

.method public getExit()Lcom/baidu/mapapi/search/core/RouteNode;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->e:Lcom/baidu/mapapi/search/core/RouteNode;

    return-object v0
.end method

.method public getFloorId()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getInstructions()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getStepNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep$IndoorStepNode;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->i:Ljava/util/List;

    return-object v0
.end method

.method public getWayPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->mWayPoints:Ljava/util/List;

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->j:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->mWayPoints:Ljava/util/List;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->mWayPoints:Ljava/util/List;

    return-object v0
.end method

.method public setBuildingId(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->h:Ljava/lang/String;

    return-void
.end method

.method public setEntrace(Lcom/baidu/mapapi/search/core/RouteNode;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->d:Lcom/baidu/mapapi/search/core/RouteNode;

    return-void
.end method

.method public setExit(Lcom/baidu/mapapi/search/core/RouteNode;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->e:Lcom/baidu/mapapi/search/core/RouteNode;

    return-void
.end method

.method public setFloorId(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->g:Ljava/lang/String;

    return-void
.end method

.method public setInstructions(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->f:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->j:Ljava/util/List;

    return-void
.end method

.method public setStepNodes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep$IndoorStepNode;",
            ">;)V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->i:Ljava/util/List;

    return-void
.end method
