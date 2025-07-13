.class public Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;
.super Ljava/lang/Object;
.source "ReverseGeoCodeOption.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/baidu/mapapi/model/LatLng;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Lcom/baidu/mapapi/search/base/LanguageType;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 14
    iput v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->a:I

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->b:I

    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->c:Lcom/baidu/mapapi/model/LatLng;

    const/4 v2, 0x1

    .line 30
    iput v2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->d:I

    const/16 v2, 0x3e8

    .line 36
    iput v2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->e:I

    .line 43
    iput-object v1, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->f:Ljava/lang/String;

    .line 49
    iput-boolean v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->g:Z

    .line 55
    sget-object v0, Lcom/baidu/mapapi/search/base/LanguageType;->LanguageTypeChinese:Lcom/baidu/mapapi/search/base/LanguageType;

    iput-object v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->h:Lcom/baidu/mapapi/search/base/LanguageType;

    return-void
.end method


# virtual methods
.method public extensionsRoad(Z)Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->g:Z

    return-object p0
.end method

.method public getExtensionsRoad()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->g:Z

    return v0
.end method

.method public getLanguage()Lcom/baidu/mapapi/search/base/LanguageType;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->h:Lcom/baidu/mapapi/search/base/LanguageType;

    return-object v0
.end method

.method public getLatestAdmin()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->d:I

    return v0
.end method

.method public getLocation()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->c:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getPageNum()I
    .locals 1

    .line 184
    iget v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->b:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->a:I

    return v0
.end method

.method public getPoiType()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getRadius()I
    .locals 1

    .line 212
    iget v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->e:I

    return v0
.end method

.method public language(Lcom/baidu/mapapi/search/base/LanguageType;)Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->h:Lcom/baidu/mapapi/search/base/LanguageType;

    return-object p0
.end method

.method public location(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->c:Lcom/baidu/mapapi/model/LatLng;

    return-object p0
.end method

.method public newVersion(I)Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;
    .locals 0

    .line 77
    iput p1, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->d:I

    return-object p0
.end method

.method public pageNum(I)Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 112
    :cond_0
    iput p1, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->b:I

    return-object p0
.end method

.method public pageSize(I)Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;
    .locals 1

    if-gtz p1, :cond_0

    const/16 p1, 0xa

    .line 90
    iput p1, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->a:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 92
    iput v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->a:I

    goto :goto_0

    .line 94
    :cond_1
    iput p1, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->a:I

    :goto_0
    return-object p0
.end method

.method public poiType(Ljava/lang/String;)Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->f:Ljava/lang/String;

    return-object p0
.end method

.method public radius(I)Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 125
    iput p1, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->e:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e8

    if-le p1, v0, :cond_1

    .line 127
    iput v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->e:I

    goto :goto_0

    .line 129
    :cond_1
    iput p1, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->e:I

    :goto_0
    return-object p0
.end method
