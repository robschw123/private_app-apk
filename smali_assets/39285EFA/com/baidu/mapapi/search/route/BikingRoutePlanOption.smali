.class public Lcom/baidu/mapapi/search/route/BikingRoutePlanOption;
.super Ljava/lang/Object;
.source "BikingRoutePlanOption.java"


# instance fields
.field public mFrom:Lcom/baidu/mapapi/search/route/PlanNode;

.field public mRidingType:I

.field public mTo:Lcom/baidu/mapapi/search/route/PlanNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/baidu/mapapi/search/route/BikingRoutePlanOption;->mFrom:Lcom/baidu/mapapi/search/route/PlanNode;

    .line 12
    iput-object v0, p0, Lcom/baidu/mapapi/search/route/BikingRoutePlanOption;->mTo:Lcom/baidu/mapapi/search/route/PlanNode;

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/baidu/mapapi/search/route/BikingRoutePlanOption;->mRidingType:I

    return-void
.end method


# virtual methods
.method public from(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/route/BikingRoutePlanOption;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/BikingRoutePlanOption;->mFrom:Lcom/baidu/mapapi/search/route/PlanNode;

    return-object p0
.end method

.method public ridingType(I)Lcom/baidu/mapapi/search/route/BikingRoutePlanOption;
    .locals 0

    .line 50
    iput p1, p0, Lcom/baidu/mapapi/search/route/BikingRoutePlanOption;->mRidingType:I

    return-object p0
.end method

.method public to(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/route/BikingRoutePlanOption;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/BikingRoutePlanOption;->mTo:Lcom/baidu/mapapi/search/route/PlanNode;

    return-object p0
.end method
