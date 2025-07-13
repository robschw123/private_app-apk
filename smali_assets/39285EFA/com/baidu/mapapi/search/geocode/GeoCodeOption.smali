.class public Lcom/baidu/mapapi/search/geocode/GeoCodeOption;
.super Ljava/lang/Object;
.source "GeoCodeOption.java"


# instance fields
.field public mAddress:Ljava/lang/String;

.field public mCity:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCodeOption;->mCity:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCodeOption;->mAddress:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public address(Ljava/lang/String;)Lcom/baidu/mapapi/search/geocode/GeoCodeOption;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/baidu/mapapi/search/geocode/GeoCodeOption;->mAddress:Ljava/lang/String;

    return-object p0
.end method

.method public city(Ljava/lang/String;)Lcom/baidu/mapapi/search/geocode/GeoCodeOption;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/baidu/mapapi/search/geocode/GeoCodeOption;->mCity:Ljava/lang/String;

    return-object p0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCodeOption;->mAddress:Ljava/lang/String;

    return-object v0
.end method
