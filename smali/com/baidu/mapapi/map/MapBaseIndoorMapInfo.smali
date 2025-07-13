.class public final Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;
.super Ljava/lang/Object;
.source "MapBaseIndoorMapInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "MapBaseIndoorMapInfo"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iget-object v0, p1, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;->a:Ljava/lang/String;

    .line 80
    iget-object v0, p1, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;->b:Ljava/lang/String;

    .line 81
    iget-object p1, p1, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;->c:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;->a:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;->b:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCurFloor()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getFloors()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;->a:Ljava/lang/String;

    return-object v0
.end method
