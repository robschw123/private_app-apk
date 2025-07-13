.class public Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;
.super Ljava/lang/Object;
.source "TransitRoutePlanOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;
    }
.end annotation


# instance fields
.field public mCityName:Ljava/lang/String;

.field public mFrom:Lcom/baidu/mapapi/search/route/PlanNode;

.field public mPolicy:Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

.field public mTo:Lcom/baidu/mapapi/search/route/PlanNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->mFrom:Lcom/baidu/mapapi/search/route/PlanNode;

    .line 9
    iput-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->mTo:Lcom/baidu/mapapi/search/route/PlanNode;

    .line 10
    iput-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->mCityName:Ljava/lang/String;

    .line 11
    sget-object v0, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;->EBUS_TIME_FIRST:Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->mPolicy:Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    return-void
.end method


# virtual methods
.method public city(Ljava/lang/String;)Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->mCityName:Ljava/lang/String;

    return-object p0
.end method

.method public from(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->mFrom:Lcom/baidu/mapapi/search/route/PlanNode;

    return-object p0
.end method

.method public policy(Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;)Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->mPolicy:Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    return-object p0
.end method

.method public to(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->mTo:Lcom/baidu/mapapi/search/route/PlanNode;

    return-object p0
.end method
