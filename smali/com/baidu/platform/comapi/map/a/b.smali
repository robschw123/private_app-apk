.class public Lcom/baidu/platform/comapi/map/a/b;
.super Ljava/lang/Object;
.source "MapMoveEvent.java"


# instance fields
.field public a:Z

.field public b:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/a/b;->a:Z

    .line 11
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/a/b;->b:Z

    .line 18
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/a/b;->a:Z

    .line 19
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/a/b;->b:Z

    return-void
.end method
