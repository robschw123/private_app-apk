.class public Lcom/baidu/mapapi/map/MapCustomStyleOptions;
.super Ljava/lang/Object;
.source "MapCustomStyleOptions.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customStyleId(Ljava/lang/String;)Lcom/baidu/mapapi/map/MapCustomStyleOptions;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/baidu/mapapi/map/MapCustomStyleOptions;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getCustomMapStyleId()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapCustomStyleOptions;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalCustomStyleFilePath()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapCustomStyleOptions;->a:Ljava/lang/String;

    return-object v0
.end method

.method public localCustomStylePath(Ljava/lang/String;)Lcom/baidu/mapapi/map/MapCustomStyleOptions;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/baidu/mapapi/map/MapCustomStyleOptions;->a:Ljava/lang/String;

    return-object p0
.end method
