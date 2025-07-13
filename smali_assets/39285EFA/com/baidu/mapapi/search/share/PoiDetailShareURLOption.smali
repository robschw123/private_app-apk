.class public Lcom/baidu/mapapi/search/share/PoiDetailShareURLOption;
.super Ljava/lang/Object;
.source "PoiDetailShareURLOption.java"


# instance fields
.field public mUid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/baidu/mapapi/search/share/PoiDetailShareURLOption;->mUid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public poiUid(Ljava/lang/String;)Lcom/baidu/mapapi/search/share/PoiDetailShareURLOption;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/baidu/mapapi/search/share/PoiDetailShareURLOption;->mUid:Ljava/lang/String;

    return-object p0
.end method
