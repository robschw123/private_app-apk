.class public Lcom/baidu/mapapi/navi/WayPoint;
.super Ljava/lang/Object;
.source "WayPoint.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/navi/WayPointInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/navi/WayPointInfo;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/navi/WayPoint;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getViaPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/navi/WayPointInfo;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/baidu/mapapi/navi/WayPoint;->a:Ljava/util/List;

    return-object v0
.end method
