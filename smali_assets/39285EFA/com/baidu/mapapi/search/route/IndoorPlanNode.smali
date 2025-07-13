.class public Lcom/baidu/mapapi/search/route/IndoorPlanNode;
.super Ljava/lang/Object;
.source "IndoorPlanNode.java"


# instance fields
.field private a:Lcom/baidu/mapapi/model/LatLng;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/model/LatLng;Ljava/lang/String;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/baidu/mapapi/search/route/IndoorPlanNode;->a:Lcom/baidu/mapapi/model/LatLng;

    .line 12
    iput-object v0, p0, Lcom/baidu/mapapi/search/route/IndoorPlanNode;->b:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/IndoorPlanNode;->a:Lcom/baidu/mapapi/model/LatLng;

    .line 16
    iput-object p2, p0, Lcom/baidu/mapapi/search/route/IndoorPlanNode;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFloor()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/IndoorPlanNode;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/IndoorPlanNode;->a:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method
