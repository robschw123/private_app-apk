.class public Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption;
.super Ljava/lang/Object;
.source "MassTransitRoutePlanOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;,
        Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;,
        Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;
    }
.end annotation


# instance fields
.field public mCoordType:Ljava/lang/String;

.field public mFrom:Lcom/baidu/mapapi/search/route/PlanNode;

.field public mPageIndex:I

.field public mPageSize:I

.field public mTacticsIncity:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;

.field public mTacticsIntercity:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;

.field public mTo:Lcom/baidu/mapapi/search/route/PlanNode;

.field public mTransTypeIntercity:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption;->mFrom:Lcom/baidu/mapapi/search/route/PlanNode;

    .line 11
    iput-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption;->mTo:Lcom/baidu/mapapi/search/route/PlanNode;

    const-string v0, "bd09ll"

    .line 12
    iput-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption;->mCoordType:Ljava/lang/String;

    .line 13
    sget-object v0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;->ETRANS_SUGGEST:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption;->mTacticsIncity:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;

    .line 14
    sget-object v0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;->ETRANS_LEAST_TIME:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption;->mTacticsIntercity:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;

    .line 15
    sget-object v0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;->ETRANS_TRAIN_FIRST:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption;->mTransTypeIntercity:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;

    const/16 v0, 0xa

    .line 16
    iput v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption;->mPageSize:I

    const/4 v0, 0x1

    .line 17
    iput v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption;->mPageIndex:I

    return-void
.end method


# virtual methods
.method public coordType(Ljava/lang/String;)Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption;->mCoordType:Ljava/lang/String;

    return-object p0
.end method

.method public from(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption;->mFrom:Lcom/baidu/mapapi/search/route/PlanNode;

    return-object p0
.end method

.method public pageIndex(I)Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption;
    .locals 1

    if-ltz p1, :cond_0

    const v0, 0x7ffffffe

    if-gt p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 92
    iput p1, p0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption;->mPageIndex:I

    :cond_0
    return-object p0
.end method

.method public pageSize(I)Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption;
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0xa

    if-gt p1, v0, :cond_0

    .line 82
    iput p1, p0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption;->mPageSize:I

    :cond_0
    return-object p0
.end method

.method public tacticsIncity(Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;)Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption;->mTacticsIncity:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;

    return-object p0
.end method

.method public tacticsIntercity(Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;)Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption;->mTacticsIntercity:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;

    return-object p0
.end method

.method public to(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption;->mTo:Lcom/baidu/mapapi/search/route/PlanNode;

    return-object p0
.end method

.method public transtypeintercity(Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;)Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption;->mTransTypeIntercity:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;

    return-object p0
.end method
