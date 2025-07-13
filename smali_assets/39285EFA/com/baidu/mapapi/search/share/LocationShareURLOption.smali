.class public Lcom/baidu/mapapi/search/share/LocationShareURLOption;
.super Ljava/lang/Object;
.source "LocationShareURLOption.java"


# instance fields
.field public mLocation:Lcom/baidu/mapapi/model/LatLng;

.field public mName:Ljava/lang/String;

.field public mSnippet:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/baidu/mapapi/search/share/LocationShareURLOption;->mLocation:Lcom/baidu/mapapi/model/LatLng;

    .line 11
    iput-object v0, p0, Lcom/baidu/mapapi/search/share/LocationShareURLOption;->mName:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/baidu/mapapi/search/share/LocationShareURLOption;->mSnippet:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public location(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/share/LocationShareURLOption;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/baidu/mapapi/search/share/LocationShareURLOption;->mLocation:Lcom/baidu/mapapi/model/LatLng;

    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/baidu/mapapi/search/share/LocationShareURLOption;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/baidu/mapapi/search/share/LocationShareURLOption;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public snippet(Ljava/lang/String;)Lcom/baidu/mapapi/search/share/LocationShareURLOption;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/baidu/mapapi/search/share/LocationShareURLOption;->mSnippet:Ljava/lang/String;

    return-object p0
.end method
