.class public Lcom/baidu/mapsdkplatform/comapi/map/x$a;
.super Ljava/lang/Object;
.source "MapStatusInner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapsdkplatform/comapi/map/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public e:Lcom/baidu/platform/comapi/basestruct/Point;

.field public f:Lcom/baidu/platform/comapi/basestruct/Point;

.field public g:Lcom/baidu/platform/comapi/basestruct/Point;

.field public h:Lcom/baidu/platform/comapi/basestruct/Point;

.field final synthetic i:Lcom/baidu/mapsdkplatform/comapi/map/x;


# direct methods
.method public constructor <init>(Lcom/baidu/mapsdkplatform/comapi/map/x;)V
    .locals 2

    .line 21
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->i:Lcom/baidu/mapsdkplatform/comapi/map/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->a:J

    .line 23
    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->b:J

    .line 24
    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->c:J

    .line 25
    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->d:J

    .line 26
    new-instance p1, Lcom/baidu/platform/comapi/basestruct/Point;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Lcom/baidu/platform/comapi/basestruct/Point;-><init>(II)V

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->e:Lcom/baidu/platform/comapi/basestruct/Point;

    .line 27
    new-instance p1, Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-direct {p1, v0, v0}, Lcom/baidu/platform/comapi/basestruct/Point;-><init>(II)V

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->f:Lcom/baidu/platform/comapi/basestruct/Point;

    .line 28
    new-instance p1, Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-direct {p1, v0, v0}, Lcom/baidu/platform/comapi/basestruct/Point;-><init>(II)V

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->g:Lcom/baidu/platform/comapi/basestruct/Point;

    .line 29
    new-instance p1, Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-direct {p1, v0, v0}, Lcom/baidu/platform/comapi/basestruct/Point;-><init>(II)V

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->h:Lcom/baidu/platform/comapi/basestruct/Point;

    return-void
.end method
