.class public Lcom/baidu/mapapi/search/poi/PoiIndoorOption;
.super Ljava/lang/Object;
.source "PoiIndoorOption.java"


# instance fields
.field public bid:Ljava/lang/String;

.field public currentPage:I

.field public floor:Ljava/lang/String;

.field public pageSize:I

.field public wd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiIndoorOption;->currentPage:I

    const/16 v0, 0xa

    .line 12
    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiIndoorOption;->pageSize:I

    return-void
.end method


# virtual methods
.method public poiCurrentPage(I)Lcom/baidu/mapapi/search/poi/PoiIndoorOption;
    .locals 0

    .line 43
    iput p1, p0, Lcom/baidu/mapapi/search/poi/PoiIndoorOption;->currentPage:I

    return-object p0
.end method

.method public poiFloor(Ljava/lang/String;)Lcom/baidu/mapapi/search/poi/PoiIndoorOption;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiIndoorOption;->floor:Ljava/lang/String;

    return-object p0
.end method

.method public poiIndoorBid(Ljava/lang/String;)Lcom/baidu/mapapi/search/poi/PoiIndoorOption;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiIndoorOption;->bid:Ljava/lang/String;

    return-object p0
.end method

.method public poiIndoorWd(Ljava/lang/String;)Lcom/baidu/mapapi/search/poi/PoiIndoorOption;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiIndoorOption;->wd:Ljava/lang/String;

    return-object p0
.end method

.method public poiPageSize(I)Lcom/baidu/mapapi/search/poi/PoiIndoorOption;
    .locals 0

    .line 54
    iput p1, p0, Lcom/baidu/mapapi/search/poi/PoiIndoorOption;->pageSize:I

    return-object p0
.end method
