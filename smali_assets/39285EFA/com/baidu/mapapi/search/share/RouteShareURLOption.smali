.class public Lcom/baidu/mapapi/search/share/RouteShareURLOption;
.super Ljava/lang/Object;
.source "RouteShareURLOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;
    }
.end annotation


# instance fields
.field public mCityCode:I

.field public mFrom:Lcom/baidu/mapapi/search/route/PlanNode;

.field public mMode:Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;

.field public mPn:I

.field public mTo:Lcom/baidu/mapapi/search/route/PlanNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->mFrom:Lcom/baidu/mapapi/search/route/PlanNode;

    .line 15
    iput-object v0, p0, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->mTo:Lcom/baidu/mapapi/search/route/PlanNode;

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->mPn:I

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->mCityCode:I

    return-void
.end method


# virtual methods
.method public cityCode(I)Lcom/baidu/mapapi/search/share/RouteShareURLOption;
    .locals 0

    .line 62
    iput p1, p0, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->mCityCode:I

    return-object p0
.end method

.method public from(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/share/RouteShareURLOption;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->mFrom:Lcom/baidu/mapapi/search/route/PlanNode;

    return-object p0
.end method

.method public getmMode()Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->mMode:Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;

    return-object v0
.end method

.method public pn(I)Lcom/baidu/mapapi/search/share/RouteShareURLOption;
    .locals 0

    .line 52
    iput p1, p0, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->mPn:I

    return-object p0
.end method

.method public routMode(Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;)Lcom/baidu/mapapi/search/share/RouteShareURLOption;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->mMode:Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;

    return-object p0
.end method

.method public to(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/share/RouteShareURLOption;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/baidu/mapapi/search/share/RouteShareURLOption;->mTo:Lcom/baidu/mapapi/search/route/PlanNode;

    return-object p0
.end method
