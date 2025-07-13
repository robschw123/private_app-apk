.class Lcom/baidu/platform/comapi/map/MapController$a;
.super Ljava/lang/Object;
.source "MapController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platform/comapi/map/MapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field b:F

.field c:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

.field d:Lcom/baidu/platform/comapi/basestruct/Point;

.field final synthetic e:Lcom/baidu/platform/comapi/map/MapController;


# direct methods
.method constructor <init>(Lcom/baidu/platform/comapi/map/MapController;)V
    .locals 0

    .line 3379
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/MapController$a;->e:Lcom/baidu/platform/comapi/map/MapController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3386
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapController$a;->a:Z

    const/4 p1, 0x0

    .line 3387
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapController$a;->b:F

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 3381
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController$a;->a:Z

    const/4 v0, 0x0

    .line 3382
    iput v0, p0, Lcom/baidu/platform/comapi/map/MapController$a;->b:F

    const/4 v0, 0x0

    .line 3383
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapController$a;->c:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    .line 3384
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapController$a;->d:Lcom/baidu/platform/comapi/basestruct/Point;

    return-void
.end method
