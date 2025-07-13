.class public Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;
.super Ljava/lang/Object;
.source "PoiDetailSearchOption.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;->a:Ljava/lang/String;

    const/4 v1, 0x1

    .line 19
    iput-boolean v1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;->b:Z

    .line 25
    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;->d:Z

    return-void
.end method


# virtual methods
.method public extendAdcode(Z)Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;->b:Z

    return-object p0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getUids()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isExtendAdcode()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;->b:Z

    return v0
.end method

.method public isSearchByUids()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;->d:Z

    return v0
.end method

.method public poiUid(Ljava/lang/String;)Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;
    .locals 1

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;->d:Z

    .line 45
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;->a:Ljava/lang/String;

    return-object p0
.end method

.method public poiUids(Ljava/lang/String;)Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;
    .locals 1

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;->d:Z

    .line 58
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;->c:Ljava/lang/String;

    return-object p0
.end method
