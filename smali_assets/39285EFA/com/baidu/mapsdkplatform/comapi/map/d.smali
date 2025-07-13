.class public Lcom/baidu/mapsdkplatform/comapi/map/d;
.super Ljava/lang/Object;
.source "BaseMapInner.java"

# interfaces
.implements Lcom/baidu/mapsdkplatform/comjni/a/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapsdkplatform/comapi/map/d$a;
    }
.end annotation


# static fields
.field private static C:I = 0x0

.field private static D:I = 0x0

.field public static d:F = 1096.0f

.field static j:J = 0x0L

.field private static final l:Ljava/lang/String; = "d"


# instance fields
.field private A:Lcom/baidu/mapsdkplatform/comapi/map/l;

.field private B:Lcom/baidu/mapsdkplatform/comapi/map/m;

.field private E:I

.field private F:I

.field private G:Z

.field private H:Z

.field private I:J

.field private J:J

.field private K:Z

.field private L:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/baidu/mapsdkplatform/comapi/map/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Lcom/baidu/platform/comapi/map/MapController;

.field private Q:Lcom/baidu/platform/comapi/map/LocationOverlay;

.field private R:Lcom/baidu/platform/comapi/map/d;

.field private S:Z

.field public a:F

.field public b:F

.field public c:F

.field e:Z

.field f:Z

.field g:Z

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/map/al;",
            ">;"
        }
    .end annotation
.end field

.field i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

.field public k:Lcom/baidu/mapapi/map/MapStatusUpdate;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Lcom/baidu/mapsdkplatform/comapi/map/ac;

.field private w:Lcom/baidu/mapsdkplatform/comapi/map/ab;

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapsdkplatform/comapi/map/c;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/baidu/mapapi/map/MapLayer;",
            "Lcom/baidu/mapsdkplatform/comapi/map/c;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lcom/baidu/mapsdkplatform/comapi/map/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/platform/comapi/map/MapSurfaceView;Lcom/baidu/mapsdkplatform/comapi/map/v;Ljava/lang/String;I)V
    .locals 2

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x41a80000    # 21.0f

    .line 71
    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->a:F

    const/high16 p4, 0x40800000    # 4.0f

    .line 72
    iput p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->b:F

    .line 74
    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->c:F

    const/4 p1, 0x1

    .line 95
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->o:Z

    const/4 p4, 0x0

    .line 96
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->p:Z

    .line 97
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->q:Z

    .line 98
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->r:Z

    .line 99
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->s:Z

    .line 100
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->e:Z

    .line 101
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->f:Z

    .line 102
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->g:Z

    .line 103
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->t:Z

    .line 104
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->u:Z

    .line 161
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->G:Z

    .line 162
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->H:Z

    const-wide/16 v0, 0x0

    .line 167
    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->I:J

    .line 168
    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->J:J

    .line 182
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->K:Z

    .line 187
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->L:Ljava/util/Queue;

    const/4 p1, 0x0

    .line 192
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->k:Lcom/baidu/mapapi/map/MapStatusUpdate;

    .line 198
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->M:Z

    .line 204
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->N:Z

    .line 206
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->O:Z

    .line 214
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->S:Z

    .line 243
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->h:Ljava/util/List;

    .line 245
    new-instance p1, Lcom/baidu/platform/comapi/map/MapController;

    invoke-direct {p1}, Lcom/baidu/platform/comapi/map/MapController;-><init>()V

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    .line 247
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->initAppBaseMap()V

    .line 248
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Lcom/baidu/platform/comapi/map/MapController;)V

    .line 249
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p2, p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->setMapController(Lcom/baidu/platform/comapi/map/MapController;)V

    .line 250
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    .line 252
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    .line 253
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getMapId()J

    move-result-wide p1

    const-string p4, "com.baidu.platform.comapi.wnplatform.walkmap.WNaviBaiduMap"

    const-string p5, "setId"

    .line 252
    invoke-direct {p0, p4, p5, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 255
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->U()V

    .line 256
    invoke-direct {p0, p3}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Lcom/baidu/mapsdkplatform/comapi/map/v;)V

    .line 257
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetSDKLayerCallback(Lcom/baidu/mapsdkplatform/comjni/a/a/a;)Z

    .line 258
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->onResume()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/platform/comapi/map/MapTextureView;Lcom/baidu/mapsdkplatform/comapi/map/v;Ljava/lang/String;I)V
    .locals 2

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x41a80000    # 21.0f

    .line 71
    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->a:F

    const/high16 p4, 0x40800000    # 4.0f

    .line 72
    iput p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->b:F

    .line 74
    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->c:F

    const/4 p1, 0x1

    .line 95
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->o:Z

    const/4 p4, 0x0

    .line 96
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->p:Z

    .line 97
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->q:Z

    .line 98
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->r:Z

    .line 99
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->s:Z

    .line 100
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->e:Z

    .line 101
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->f:Z

    .line 102
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->g:Z

    .line 103
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->t:Z

    .line 104
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->u:Z

    .line 161
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->G:Z

    .line 162
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->H:Z

    const-wide/16 v0, 0x0

    .line 167
    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->I:J

    .line 168
    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->J:J

    .line 182
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->K:Z

    .line 187
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->L:Ljava/util/Queue;

    const/4 p1, 0x0

    .line 192
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->k:Lcom/baidu/mapapi/map/MapStatusUpdate;

    .line 198
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->M:Z

    .line 204
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->N:Z

    .line 206
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->O:Z

    .line 214
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->S:Z

    .line 224
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->h:Ljava/util/List;

    .line 226
    new-instance p1, Lcom/baidu/platform/comapi/map/MapController;

    invoke-direct {p1}, Lcom/baidu/platform/comapi/map/MapController;-><init>()V

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    .line 227
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->initAppBaseMap()V

    .line 229
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Lcom/baidu/platform/comapi/map/MapController;)V

    .line 230
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p2, p1}, Lcom/baidu/platform/comapi/map/MapTextureView;->attachBaseMapController(Lcom/baidu/platform/comapi/map/MapController;)V

    .line 231
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    .line 233
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->U()V

    .line 234
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    .line 235
    invoke-direct {p0, p3}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Lcom/baidu/mapsdkplatform/comapi/map/v;)V

    .line 236
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetSDKLayerCallback(Lcom/baidu/mapsdkplatform/comjni/a/a/a;)Z

    .line 237
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->onResume()V

    return-void
.end method

.method private S()V
    .locals 5

    .line 379
    :try_start_0
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getDensity()F

    move-result v0

    const/high16 v1, 0x42200000    # 40.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/baidu/mapsdkplatform/comapi/map/d;->C:I

    .line 380
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getDensity()F

    move-result v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/baidu/mapsdkplatform/comapi/map/d;->D:I

    .line 381
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 382
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 383
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "x"

    .line 384
    sget v4, Lcom/baidu/mapsdkplatform/comapi/map/d;->C:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v3, "y"

    .line 385
    sget v4, Lcom/baidu/mapsdkplatform/comapi/map/d;->C:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "hidetime"

    const/16 v4, 0x3e8

    .line 386
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 387
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "dataset"

    .line 388
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 389
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->R:Lcom/baidu/platform/comapi/map/d;

    if-eqz v1, :cond_0

    .line 390
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comapi/map/d;->setData(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->R:Lcom/baidu/platform/comapi/map/d;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/d;->UpdateOverlay()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 394
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private T()V
    .locals 2

    .line 527
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->q:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->n:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->m:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->r:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 541
    :cond_0
    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->c:F

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->a:F

    .line 542
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v1, :cond_3

    .line 543
    iput v0, v1, Lcom/baidu/platform/comapi/map/MapController;->mMaxZoomLevel:F

    goto :goto_1

    .line 528
    :cond_1
    :goto_0
    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->a:F

    const/high16 v1, 0x41a00000    # 20.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 529
    iput v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->a:F

    .line 530
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_2

    .line 531
    iput v1, v0, Lcom/baidu/platform/comapi/map/MapController;->mMaxZoomLevel:F

    .line 535
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->D()Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object v0

    iget v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/x;->a:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 536
    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->D()Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object v0

    .line 537
    iput v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/x;->a:F

    .line 538
    invoke-virtual {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Lcom/baidu/mapsdkplatform/comapi/map/x;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private U()V
    .locals 3

    .line 569
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->x:Ljava/util/List;

    .line 571
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->y:Ljava/util/HashMap;

    .line 573
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/aa;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/aa;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->z:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    .line 574
    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Lcom/baidu/mapsdkplatform/comapi/map/c;)V

    .line 575
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->y:Ljava/util/HashMap;

    sget-object v1, Lcom/baidu/mapapi/map/MapLayer;->MAP_LAYER_OVERLAY:Lcom/baidu/mapapi/map/MapLayer;

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->z:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 578
    invoke-virtual {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->o(Z)V

    .line 579
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v1, :cond_0

    .line 580
    invoke-virtual {v1, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->setDEMEnable(Z)V

    :cond_0
    return-void
.end method

.method private V()V
    .locals 3

    .line 1921
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    return-void

    .line 1924
    :cond_0
    iget-boolean v0, v0, Lcom/baidu/platform/comapi/map/MapController;->mIsMoving:Z

    if-nez v0, :cond_2

    .line 1925
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/platform/comapi/map/MapController;->mIsMoving:Z

    .line 1926
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/baidu/platform/comapi/map/MapController;->mIsAnimating:Z

    .line 1928
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->h:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1929
    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->D()Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object v0

    .line 1930
    :goto_0
    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1931
    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/platform/comapi/map/al;

    if-eqz v2, :cond_1

    .line 1934
    invoke-interface {v2, v0}, Lcom/baidu/platform/comapi/map/al;->a(Lcom/baidu/mapsdkplatform/comapi/map/x;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Lcom/baidu/mapapi/map/MapLayer;)J
    .locals 3

    .line 799
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    .line 803
    :cond_0
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->a:[I

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MapLayer;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 818
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const-string v0, "basepoi"

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getLayerIDByTag(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0

    .line 815
    :cond_2
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const-string v0, "poiindoormarklayer"

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getLayerIDByTag(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0

    .line 810
    :cond_3
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->z:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    if-eqz p1, :cond_5

    .line 811
    iget-wide v1, p1, Lcom/baidu/mapsdkplatform/comapi/map/aa;->a:J

    goto :goto_0

    .line 805
    :cond_4
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->Q:Lcom/baidu/platform/comapi/map/LocationOverlay;

    if-eqz p1, :cond_5

    .line 806
    iget-wide v1, p1, Lcom/baidu/platform/comapi/map/LocationOverlay;->mLayerID:J

    :cond_5
    :goto_0
    return-wide v1
.end method

.method private a(Lcom/baidu/mapsdkplatform/comapi/map/c;)V
    .locals 4

    .line 599
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 603
    :cond_0
    iget v1, p1, Lcom/baidu/mapsdkplatform/comapi/map/c;->c:I

    iget v2, p1, Lcom/baidu/mapsdkplatform/comapi/map/c;->d:I

    iget-object v3, p1, Lcom/baidu/mapsdkplatform/comapi/map/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->AddLayer(IILjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/baidu/mapsdkplatform/comapi/map/c;->a:J

    .line 604
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->x:Ljava/util/List;

    monitor-enter v0

    .line 605
    :try_start_0
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->x:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Lcom/baidu/mapsdkplatform/comapi/map/v;)V
    .locals 4

    if-nez p1, :cond_0

    .line 325
    new-instance p1, Lcom/baidu/mapsdkplatform/comapi/map/v;

    invoke-direct {p1}, Lcom/baidu/mapsdkplatform/comapi/map/v;-><init>()V

    .line 328
    :cond_0
    iget-object v0, p1, Lcom/baidu/mapsdkplatform/comapi/map/v;->a:Lcom/baidu/mapsdkplatform/comapi/map/x;

    .line 329
    iget-boolean v1, p1, Lcom/baidu/mapsdkplatform/comapi/map/v;->f:Z

    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->s:Z

    .line 330
    iget-boolean v1, p1, Lcom/baidu/mapsdkplatform/comapi/map/v;->d:Z

    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->t:Z

    .line 331
    iget-boolean v1, p1, Lcom/baidu/mapsdkplatform/comapi/map/v;->e:Z

    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->e:Z

    .line 332
    iget-boolean v1, p1, Lcom/baidu/mapsdkplatform/comapi/map/v;->g:Z

    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->f:Z

    .line 334
    iget-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->s:Z

    invoke-virtual {p0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->A(Z)V

    .line 335
    iget-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->t:Z

    invoke-virtual {p0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->z(Z)V

    .line 336
    iget-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->e:Z

    invoke-virtual {p0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->s(Z)V

    .line 337
    iget-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->f:Z

    invoke-virtual {p0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->t(Z)V

    .line 339
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p0}, Lcom/baidu/mapsdkplatform/comapi/map/x;->a(Lcom/baidu/mapsdkplatform/comapi/map/d;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetMapStatus(Landroid/os/Bundle;)V

    .line 340
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/map/u;->a:Lcom/baidu/mapsdkplatform/comapi/map/u;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/u;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetMapControlMode(I)I

    .line 342
    iget-boolean v0, p1, Lcom/baidu/mapsdkplatform/comapi/map/v;->b:Z

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->o:Z

    .line 343
    iget-boolean v0, p1, Lcom/baidu/mapsdkplatform/comapi/map/v;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 344
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->R:Lcom/baidu/platform/comapi/map/d;

    if-nez v0, :cond_1

    .line 345
    new-instance v0, Lcom/baidu/platform/comapi/map/d;

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-direct {v0, v2}, Lcom/baidu/platform/comapi/map/d;-><init>(Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;)V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->R:Lcom/baidu/platform/comapi/map/d;

    .line 346
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapView()Lcom/baidu/platform/comapi/map/MapViewInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 348
    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->R:Lcom/baidu/platform/comapi/map/d;

    invoke-interface {v0, v2}, Lcom/baidu/platform/comapi/map/MapViewInterface;->addOverlay(Lcom/baidu/platform/comapi/map/Overlay;)Z

    .line 349
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->S()V

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->R:Lcom/baidu/platform/comapi/map/d;

    iget-wide v2, v2, Lcom/baidu/platform/comapi/map/d;->mLayerID:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    .line 353
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ResetImageRes()V

    .line 356
    :cond_2
    iget p1, p1, Lcom/baidu/mapsdkplatform/comapi/map/v;->c:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 358
    invoke-virtual {p0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Z)V

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 361
    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->B()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 362
    invoke-virtual {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->C(Z)V

    .line 364
    :cond_4
    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->C()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 365
    invoke-virtual {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->D(Z)V

    .line 367
    :cond_5
    invoke-virtual {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->j(Z)V

    .line 368
    invoke-virtual {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->o(Z)V

    :cond_6
    return-void
.end method

.method private a(Lcom/baidu/platform/comapi/map/MapController;)V
    .locals 4

    .line 262
    invoke-static {}, Lcom/baidu/platform/comapi/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    const-class v0, Lcom/baidu/platform/comapi/b;

    monitor-enter v0

    .line 264
    :try_start_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 266
    :cond_0
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "level"

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    .line 269
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "centerptx"

    const-wide v2, 0x4168b739bf5c28f6L    # 1.295815798E7

    .line 270
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "centerpty"

    const-wide v2, 0x415268e3ef5c28f6L    # 4825999.74

    .line 271
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "centerptz"

    const-wide/16 v2, 0x0

    .line 272
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "left"

    const/4 v2, 0x0

    .line 274
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "top"

    .line 275
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 278
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getScreenHeight()I

    move-result v1

    .line 279
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getScreenWidth()I

    move-result v2

    const-string v3, "right"

    .line 280
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "bottom"

    .line 281
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "modulePath"

    .line 284
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getOutputDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appSdcardPath"

    .line 285
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getExternalFilesDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appCachePath"

    .line 286
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getOutputCache()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appSecondCachePath"

    .line 287
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getOutputCache()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mapTmpMax"

    .line 288
    invoke-static {}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->getMapTmpStgMax()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "domTmpMax"

    .line 289
    invoke-static {}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->getDomTmpStgMax()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "itsTmpMax"

    .line 290
    invoke-static {}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->getItsTmpStgMax()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ssgTmpMax"

    .line 291
    invoke-static {}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->getSsgTmpStgMax()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 292
    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/map/MapController;->initMapResources(Landroid/os/Bundle;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    .line 297
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 298
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 299
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, p2, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    .line 300
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, v4

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private i(Landroid/os/Bundle;)Z
    .locals 1

    .line 895
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 898
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->addSDKTileData(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method private j(Landroid/os/Bundle;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 913
    :cond_0
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v1, :cond_1

    return v0

    .line 917
    :cond_1
    invoke-virtual {v1, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->updateSDKTile(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 919
    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->i(Z)V

    .line 920
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->v:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->UpdateLayers(J)V

    :cond_2
    return p1
.end method


# virtual methods
.method A()V
    .locals 3

    .line 1736
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    return-void

    .line 1739
    :cond_0
    iget-boolean v0, v0, Lcom/baidu/platform/comapi/map/MapController;->mIsMoving:Z

    if-nez v0, :cond_3

    .line 1740
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    iget-boolean v0, v0, Lcom/baidu/platform/comapi/map/MapController;->mIsAnimating:Z

    if-nez v0, :cond_3

    .line 1741
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/platform/comapi/map/MapController;->mIsAnimating:Z

    .line 1744
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->h:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    .line 1747
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->D()Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object v0

    const/4 v1, 0x0

    .line 1748
    :goto_0
    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1749
    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/platform/comapi/map/al;

    if-eqz v2, :cond_2

    .line 1752
    invoke-interface {v2, v0}, Lcom/baidu/platform/comapi/map/al;->a(Lcom/baidu/mapsdkplatform/comapi/map/x;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public A(Z)V
    .locals 1

    .line 1670
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    return-void

    .line 1673
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->setOverlookGestureEnable(Z)V

    .line 1674
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->s:Z

    return-void
.end method

.method public B(Z)V
    .locals 1

    .line 1697
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 1698
    iput-boolean p1, v0, Lcom/baidu/platform/comapi/map/MapController;->isSetMapStatusByUsr:Z

    :cond_0
    return-void
.end method

.method public B()Z
    .locals 3

    .line 1777
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_0

    const-string v1, "basepoi"

    .line 1778
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getLayerIDByTag(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->LayersIsShow(J)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public C(Z)V
    .locals 3

    .line 1793
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_0

    const-string v1, "basepoi"

    .line 1794
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getLayerIDByTag(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    :cond_0
    return-void
.end method

.method public C()Z
    .locals 3

    .line 1785
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_0

    const-string v1, "poiindoormarklayer"

    .line 1786
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getLayerIDByTag(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->LayersIsShow(J)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public D()Lcom/baidu/mapsdkplatform/comapi/map/x;
    .locals 2

    .line 1811
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1815
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetMapStatus()Landroid/os/Bundle;

    move-result-object v0

    .line 1816
    new-instance v1, Lcom/baidu/mapsdkplatform/comapi/map/x;

    invoke-direct {v1}, Lcom/baidu/mapsdkplatform/comapi/map/x;-><init>()V

    .line 1817
    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/x;->a(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public D(Z)V
    .locals 3

    .line 1799
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_0

    const-string v1, "poiindoormarklayer"

    .line 1800
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getLayerIDByTag(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    :cond_0
    return-void
.end method

.method public E()Lcom/baidu/mapapi/model/LatLngBounds;
    .locals 6

    .line 1844
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1848
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getMapStatusLimits()Landroid/os/Bundle;

    move-result-object v0

    .line 1849
    new-instance v1, Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    invoke-direct {v1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;-><init>()V

    const-string v2, "maxCoorx"

    .line 1850
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "minCoorx"

    .line 1851
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "maxCoory"

    .line 1852
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "minCoory"

    .line 1853
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1855
    new-instance v5, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-direct {v5, v0, v2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(II)V

    invoke-static {v5}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    move-result-object v0

    new-instance v2, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-direct {v2, v4, v3}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(II)V

    .line 1856
    invoke-static {v2}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    .line 1857
    invoke-virtual {v1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->build()Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object v0

    return-object v0
.end method

.method public F()Lcom/baidu/mapapi/map/MapStatusUpdate;
    .locals 1

    .line 1865
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->k:Lcom/baidu/mapapi/map/MapStatusUpdate;

    return-object v0
.end method

.method public G()I
    .locals 1

    .line 1891
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_0

    .line 1892
    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getFontSizeLevel()I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public H()I
    .locals 1

    .line 1899
    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->E:I

    return v0
.end method

.method public I()I
    .locals 1

    .line 1903
    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->F:I

    return v0
.end method

.method public J()Lcom/baidu/mapsdkplatform/comapi/map/x;
    .locals 2

    .line 1907
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 1910
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetMapStatus(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 1911
    new-instance v1, Lcom/baidu/mapsdkplatform/comapi/map/x;

    invoke-direct {v1}, Lcom/baidu/mapsdkplatform/comapi/map/x;-><init>()V

    .line 1912
    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/x;->a(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public K()D
    .locals 2

    .line 1917
    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->D()Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object v0

    iget-wide v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/x;->m:D

    return-wide v0
.end method

.method public L()V
    .locals 0

    return-void
.end method

.method public M()[F
    .locals 1

    .line 2372
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2376
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getProjectionMatrix()[F

    move-result-object v0

    return-object v0
.end method

.method public N()[F
    .locals 1

    .line 2384
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2388
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getViewMatrix()[F

    move-result-object v0

    return-object v0
.end method

.method public O()Ljava/lang/String;
    .locals 1

    .line 2392
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->S:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "GS(2022)460\u53f7"

    :goto_0
    return-object v0
.end method

.method public P()Ljava/lang/String;
    .locals 1

    .line 2396
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->S:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "\u7532\u6d4b\u8d44\u5b5711111342"

    :goto_0
    return-object v0
.end method

.method public Q()Ljava/lang/String;
    .locals 1

    .line 2400
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->S:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "\u957f\u5730\u4e07\u65b9\nMapbox\nMapKin\n\u6a02\u5ba2LocalKing PalmCit\nESO DigitalGlobal spaceview\nOSRM Copyright \u00a92017, Project OSRMcontributors, all rights reserved\nHERE\u00a9 2019 HERE, all rights reserved\nOpenStreetMap\u00a9 OpenStreetMapContributor;(OSMF)"

    :goto_0
    return-object v0
.end method

.method public R()I
    .locals 1

    .line 2852
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2856
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getMapLanguage()I

    move-result v0

    return v0
.end method

.method public a(IIIIII)F
    .locals 3

    .line 1441
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    iget-boolean v0, v0, Lcom/baidu/platform/comapi/map/MapController;->mIsMapLoadFinish:Z

    if-nez v0, :cond_0

    const/high16 p1, 0x41400000    # 12.0f

    return p1

    .line 1445
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 1449
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "left"

    .line 1450
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "right"

    .line 1451
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "bottom"

    .line 1452
    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p4, "top"

    .line 1453
    invoke-virtual {v0, p4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p2, 0x1

    const-string v2, "hasHW"

    .line 1455
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "width"

    .line 1456
    invoke-virtual {v0, p2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "height"

    .line 1457
    invoke-virtual {v0, p2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1459
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    .line 1460
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1461
    invoke-virtual {p2, p3, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1462
    invoke-virtual {p2, p1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1463
    invoke-virtual {p2, p4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1465
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p1, v0, p2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetFZoomToBoundF(Landroid/os/Bundle;Landroid/os/Bundle;)F

    move-result p1

    return p1
.end method

.method public a(Landroid/os/Bundle;JI)I
    .locals 4

    .line 1962
    iget-object p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->A:Lcom/baidu/mapsdkplatform/comapi/map/l;

    const-string v0, "param"

    const-string/jumbo v1, "zoom"

    if-eqz p4, :cond_0

    iget-wide v2, p4, Lcom/baidu/mapsdkplatform/comapi/map/l;->a:J

    cmp-long p4, p2, v2

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->B:Lcom/baidu/mapsdkplatform/comapi/map/m;

    if-eqz p4, :cond_0

    .line 1963
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string p3, "index"

    .line 1964
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    .line 1965
    iget-object p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->B:Lcom/baidu/mapsdkplatform/comapi/map/m;

    invoke-interface {p4, p3, p2}, Lcom/baidu/mapsdkplatform/comapi/map/m;->a(II)Landroid/os/Bundle;

    move-result-object p2

    .line 1966
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1967
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->A:Lcom/baidu/mapsdkplatform/comapi/map/l;

    iget p1, p1, Lcom/baidu/mapsdkplatform/comapi/map/l;->e:I

    return p1

    .line 1968
    :cond_0
    iget-object p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->v:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    if-eqz p4, :cond_1

    iget-wide v2, p4, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a:J

    cmp-long p4, p2, v2

    if-nez p4, :cond_1

    const-string/jumbo p2, "x"

    .line 1969
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string/jumbo p3, "y"

    .line 1970
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    .line 1971
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p4

    .line 1972
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->w:Lcom/baidu/mapsdkplatform/comapi/map/ab;

    const/4 v2, 0x0

    invoke-interface {v1, p2, p3, p4, v2}, Lcom/baidu/mapsdkplatform/comapi/map/ab;->a(IIILandroid/content/Context;)Landroid/os/Bundle;

    move-result-object p2

    .line 1973
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1974
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->v:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    iget p1, p1, Lcom/baidu/mapsdkplatform/comapi/map/ac;->e:I

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Landroid/graphics/Point;
    .locals 2

    .line 987
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    .line 988
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapView()Lcom/baidu/platform/comapi/map/MapViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/MapViewInterface;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/baidu/platform/comapi/map/Projection;->toPixels(Lcom/baidu/platform/comapi/basestruct/GeoPoint;Lcom/baidu/platform/comapi/basestruct/Point;)Lcom/baidu/platform/comapi/basestruct/Point;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 990
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntX()I

    move-result v1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntY()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 992
    :cond_0
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    return-object p1
.end method

.method public a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;I)Landroid/graphics/Point;
    .locals 2

    .line 996
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    .line 997
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapView()Lcom/baidu/platform/comapi/map/MapViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/MapViewInterface;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/baidu/platform/comapi/map/Projection;->toPixels(Lcom/baidu/platform/comapi/basestruct/GeoPoint;ILcom/baidu/platform/comapi/basestruct/Point;)Lcom/baidu/platform/comapi/basestruct/Point;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 999
    new-instance p2, Landroid/graphics/Point;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntX()I

    move-result v0

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntY()I

    move-result p1

    invoke-direct {p2, v0, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p2

    .line 1001
    :cond_0
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    return-object p1
.end method

.method public a()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 1208
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/y;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/y;-><init>()V

    .line 1209
    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/y;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public a(FF)V
    .locals 2

    .line 504
    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->a:F

    .line 505
    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->c:F

    .line 506
    iput p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->b:F

    .line 507
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comapi/map/MapController;->setMaxAndMinZoomLevel(FF)V

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_1

    .line 511
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    float-to-int p1, p1

    const-string v1, "maxLevel"

    .line 512
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    float-to-int p1, p2

    const-string p2, "minLevel"

    .line 513
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 514
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->setMaxAndMinZoomLevel(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 830
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 833
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->CleanCache(I)Z

    return-void
.end method

.method public a(II)V
    .locals 0

    .line 373
    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->E:I

    .line 374
    iput p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->F:I

    return-void
.end method

.method public a(JJJJZ)V
    .locals 0

    .line 1404
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 6

    .line 436
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 440
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 441
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 442
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "type"

    const/4 v4, 0x0

    .line 445
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v3, "x"

    .line 446
    sget v4, Lcom/baidu/mapsdkplatform/comapi/map/d;->C:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v3, "y"

    .line 447
    sget v4, Lcom/baidu/mapsdkplatform/comapi/map/d;->D:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "hidetime"

    const/16 v4, 0x3e8

    .line 448
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 449
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "dataset"

    .line 450
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 452
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 459
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 460
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 461
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int v3, v3, v4

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 462
    invoke-virtual {p1, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 463
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const-string v4, "imgData"

    .line 464
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 465
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "imgKey"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const-string v4, "imgH"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 467
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    const-string v3, "imgW"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x1

    const-string v3, "hasIcon"

    .line 468
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "iconData"

    .line 469
    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    move-object p1, v1

    .line 472
    :goto_1
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->R:Lcom/baidu/platform/comapi/map/d;

    if-eqz v1, :cond_4

    .line 473
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 474
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->R:Lcom/baidu/platform/comapi/map/d;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comapi/map/d;->setData(Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 478
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->R:Lcom/baidu/platform/comapi/map/d;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/d;->setParam(Landroid/os/Bundle;)V

    .line 481
    :cond_3
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->R:Lcom/baidu/platform/comapi/map/d;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/d;->UpdateOverlay()V

    :cond_4
    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1176
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 1180
    :cond_0
    invoke-virtual {p0, p2}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 1184
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1185
    new-array v1, v0, [D

    .line 1186
    new-array v2, v0, [D

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 1188
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v5}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v5

    .line 1189
    invoke-virtual {v5}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v6

    aput-wide v6, v1, v4

    .line 1190
    invoke-virtual {v5}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v5

    aput-wide v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "x_array"

    .line 1192
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    const-string/jumbo v0, "y_array"

    .line 1193
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 1195
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {p2}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p2

    .line 1196
    invoke-virtual {p2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v0

    const-string v2, "location_x"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 1197
    invoke-virtual {p2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v0

    const-string v2, "location_y"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v0, "has_dotted_stroke"

    .line 1200
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1202
    invoke-virtual {p2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v0

    const-string v2, "dotted_stroke_location_x"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 1203
    invoke-virtual {p2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v0

    const-string p2, "dotted_stroke_location_y"

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Lcom/baidu/mapapi/map/MapLayer;Lcom/baidu/mapapi/map/MapLayer;)V
    .locals 5

    .line 724
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 728
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Lcom/baidu/mapapi/map/MapLayer;)J

    move-result-wide v0

    .line 729
    invoke-direct {p0, p2}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Lcom/baidu/mapapi/map/MapLayer;)J

    move-result-wide p1

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    cmp-long v4, p1, v2

    if-nez v4, :cond_1

    goto :goto_0

    .line 734
    :cond_1
    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v2, v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SwitchLayer(JJ)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/baidu/mapapi/map/MapLayer;Z)V
    .locals 4

    .line 784
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 788
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Lcom/baidu/mapapi/map/MapLayer;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    return-void

    .line 794
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p1, v0, v1, p2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetLayersClickable(JZ)V

    return-void
.end method

.method public a(Lcom/baidu/mapapi/map/MapStatusUpdate;)V
    .locals 0

    .line 1873
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->k:Lcom/baidu/mapapi/map/MapStatusUpdate;

    return-void
.end method

.method public a(Lcom/baidu/mapapi/model/LatLngBounds;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 1822
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1826
    :cond_0
    iget-object v0, p1, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    .line 1827
    iget-object p1, p1, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    .line 1828
    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    .line 1829
    invoke-static {p1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p1

    .line 1830
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v1

    double-to-int v1, v1

    .line 1831
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v2

    double-to-int v2, v2

    .line 1832
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v3

    double-to-int p1, v3

    .line 1833
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v3

    double-to-int v0, v3

    .line 1835
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "maxCoorx"

    .line 1836
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "minCoory"

    .line 1837
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "minCoorx"

    .line 1838
    invoke-virtual {v3, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "maxCoory"

    .line 1839
    invoke-virtual {v3, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1840
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p1, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->setMapStatusLimits(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/baidu/mapsdkplatform/comapi/map/ab;)V
    .locals 0

    .line 966
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->w:Lcom/baidu/mapsdkplatform/comapi/map/ab;

    return-void
.end method

.method public a(Lcom/baidu/mapsdkplatform/comapi/map/m;)V
    .locals 0

    .line 1702
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->B:Lcom/baidu/mapsdkplatform/comapi/map/m;

    return-void
.end method

.method public a(Lcom/baidu/mapsdkplatform/comapi/map/x;)V
    .locals 2

    .line 1706
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1710
    :cond_0
    invoke-virtual {p1, p0}, Lcom/baidu/mapsdkplatform/comapi/map/x;->a(Lcom/baidu/mapsdkplatform/comapi/map/d;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "animation"

    const/4 v1, 0x0

    .line 1711
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "animatime"

    .line 1712
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1713
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->V()V

    .line 1714
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetMapStatus(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/baidu/mapsdkplatform/comapi/map/x;I)V
    .locals 2

    .line 1718
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1722
    :cond_0
    invoke-virtual {p1, p0}, Lcom/baidu/mapsdkplatform/comapi/map/x;->a(Lcom/baidu/mapsdkplatform/comapi/map/d;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "animation"

    .line 1723
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "animatime"

    .line 1724
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1726
    iget-boolean p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->K:Z

    if-eqz p2, :cond_1

    .line 1727
    new-instance p2, Lcom/baidu/mapsdkplatform/comapi/map/d$a;

    invoke-direct {p2, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d$a;-><init>(Landroid/os/Bundle;)V

    .line 1728
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->L:Ljava/util/Queue;

    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1730
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->A()V

    .line 1731
    iget-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p2, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetMapStatus(Landroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/map/al;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1683
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->h:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1687
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->registMapViewListener(Lcom/baidu/platform/comapi/map/al;)V

    .line 1689
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1507
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->Q:Lcom/baidu/platform/comapi/map/LocationOverlay;

    if-nez v0, :cond_0

    return-void

    .line 1511
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/LocationOverlay;->setData(Ljava/lang/String;)V

    .line 1512
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->Q:Lcom/baidu/platform/comapi/map/LocationOverlay;

    invoke-virtual {p1, p2}, Lcom/baidu/platform/comapi/map/LocationOverlay;->setParam(Landroid/os/Bundle;)V

    .line 1513
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->Q:Lcom/baidu/platform/comapi/map/LocationOverlay;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/LocationOverlay;->UpdateOverlay()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/map/OverlayLocationData;",
            ">;)V"
        }
    .end annotation

    .line 1491
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->Q:Lcom/baidu/platform/comapi/map/LocationOverlay;

    if-nez v0, :cond_0

    return-void

    .line 1494
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/LocationOverlay;->setLocationLayerData(Ljava/util/List;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 489
    :cond_0
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->n:Z

    .line 490
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->T()V

    .line 491
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->n:Z

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowSatelliteMap(Z)V

    .line 493
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 495
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/baidu/platform/comapi/map/MapController;->setMapTheme(ILandroid/os/Bundle;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 497
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/baidu/platform/comapi/map/MapController;->setMapTheme(ILandroid/os/Bundle;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public a([Landroid/os/Bundle;)V
    .locals 2

    .line 1234
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1238
    :cond_0
    array-length v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->addOverlayItems([Landroid/os/Bundle;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(J)Z
    .locals 5

    .line 1984
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->x:Ljava/util/List;

    monitor-enter v0

    .line 1985
    :try_start_0
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapsdkplatform/comapi/map/c;

    .line 1986
    iget-wide v2, v2, Lcom/baidu/mapsdkplatform/comapi/map/c;->a:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    const/4 p1, 0x1

    .line 1987
    monitor-exit v0

    return p1

    .line 1990
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public a(Landroid/graphics/Point;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 403
    :cond_0
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v1, :cond_1

    return v0

    .line 407
    :cond_1
    iget v1, p1, Landroid/graphics/Point;->x:I

    if-ltz v1, :cond_3

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-ltz v1, :cond_3

    .line 408
    iget v1, p1, Landroid/graphics/Point;->x:I

    sput v1, Lcom/baidu/mapsdkplatform/comapi/map/d;->C:I

    .line 409
    iget p1, p1, Landroid/graphics/Point;->y:I

    sput p1, Lcom/baidu/mapsdkplatform/comapi/map/d;->D:I

    .line 410
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 411
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 412
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v3, "x"

    .line 414
    sget v4, Lcom/baidu/mapsdkplatform/comapi/map/d;->C:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v3, "y"

    .line 415
    sget v4, Lcom/baidu/mapsdkplatform/comapi/map/d;->D:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "hidetime"

    const/16 v4, 0x3e8

    .line 416
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 417
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "dataset"

    .line 418
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 420
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 422
    :goto_0
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->R:Lcom/baidu/platform/comapi/map/d;

    if-eqz v1, :cond_3

    .line 423
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 424
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->R:Lcom/baidu/platform/comapi/map/d;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/d;->setData(Ljava/lang/String;)V

    .line 427
    :cond_2
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->R:Lcom/baidu/platform/comapi/map/d;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/d;->UpdateOverlay()V

    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method public a(Landroid/os/Bundle;)Z
    .locals 6

    .line 864
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 867
    :cond_0
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ac;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->v:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    .line 868
    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/ac;->c:I

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->v:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    iget v3, v3, Lcom/baidu/mapsdkplatform/comapi/map/ac;->d:I

    iget-object v4, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->v:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    iget-object v4, v4, Lcom/baidu/mapsdkplatform/comapi/map/ac;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v4}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->AddLayer(IILjava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 871
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->v:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    iput-wide v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a:J

    .line 872
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->x:Ljava/util/List;

    monitor-enter v0

    .line 873
    :try_start_0
    iget-object v4, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->x:Ljava/util/List;

    iget-object v5, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->v:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 874
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "sdktileaddr"

    .line 875
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 876
    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->i(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 878
    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->j(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 874
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    return v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1349
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1352
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SwitchBaseIndoorMapFloor(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b()F
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 521
    iget v0, v0, Lcom/baidu/platform/comapi/map/MapController;->mMaxZoomLevel:F

    return v0

    .line 523
    :cond_0
    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->a:F

    return v0
.end method

.method public b(Landroid/os/Bundle;)Lcom/baidu/mapapi/model/LatLngBounds;
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "type"

    .line 1102
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "encodedPoints"

    .line 1103
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1104
    new-instance v2, Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    invoke-direct {v2}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->build()Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object v2

    if-eqz p1, :cond_4

    .line 1107
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 1108
    sget-object v3, Lcom/baidu/mapsdkplatform/comapi/map/i;->l:Lcom/baidu/mapsdkplatform/comapi/map/i;

    invoke-virtual {v3}, Lcom/baidu/mapsdkplatform/comapi/map/i;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_4

    .line 1110
    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 1115
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1116
    new-array v1, v0, [D

    .line 1117
    new-array v2, v0, [D

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 1119
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v5}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v5

    .line 1120
    invoke-virtual {v5}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v6

    aput-wide v6, v1, v4

    .line 1121
    invoke-virtual {v5}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v5

    aput-wide v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1124
    :cond_2
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 1125
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {p1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p1

    .line 1126
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v5

    double-to-int v5, v5

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v6

    double-to-int v6, v6

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v7

    double-to-int v7, v7

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v8

    double-to-int p1, v8

    invoke-direct {v3, v5, v6, v7, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p1, 0x1

    :goto_1
    if-ge p1, v0, :cond_3

    .line 1130
    aget-wide v5, v1, p1

    double-to-int v5, v5

    iput v5, v4, Landroid/graphics/Point;->x:I

    .line 1131
    aget-wide v5, v2, p1

    double-to-int v5, v5

    iput v5, v4, Landroid/graphics/Point;->y:I

    .line 1132
    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Point;->x:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1133
    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Point;->y:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1134
    iget v7, v3, Landroid/graphics/Rect;->right:I

    iget v8, v4, Landroid/graphics/Point;->x:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1135
    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    iget v9, v4, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1136
    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1138
    :cond_3
    new-instance p1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    iget v1, v3, Landroid/graphics/Rect;->left:I

    invoke-direct {p1, v0, v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(II)V

    .line 1139
    new-instance v0, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    iget v1, v3, Landroid/graphics/Rect;->top:I

    iget v2, v3, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v1, v2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(II)V

    .line 1140
    invoke-static {p1}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    .line 1141
    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    .line 1142
    new-instance v1, Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    invoke-direct {v1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->build()Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object v2

    :cond_4
    return-object v2
.end method

.method public b(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;
    .locals 1

    .line 983
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapView()Lcom/baidu/platform/comapi/map/MapViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/MapViewInterface;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/baidu/platform/comapi/map/Projection;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p1

    return-object p1
.end method

.method public b(I)V
    .locals 3

    .line 1227
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->A:Lcom/baidu/mapsdkplatform/comapi/map/l;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1230
    :cond_0
    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/l;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->setHeatMapFrameAnimationIndex(JI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1384
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1388
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->initCustomStyle(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->setDEMEnable(Z)V

    :cond_0
    return-void
.end method

.method public b([Landroid/os/Bundle;)V
    .locals 1

    .line 1262
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1266
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->removeOverlayItems([Landroid/os/Bundle;)V

    return-void
.end method

.method public c()V
    .locals 6

    .line 613
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->x:Ljava/util/List;

    monitor-enter v0

    .line 618
    :try_start_0
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapsdkplatform/comapi/map/c;

    .line 619
    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-wide v4, v2, Lcom/baidu/mapsdkplatform/comapi/map/c;->a:J

    const/4 v2, 0x0

    invoke-virtual {v3, v4, v5, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    goto :goto_0

    .line 621
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public c(I)V
    .locals 1

    .line 1881
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_0

    .line 1882
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->setFontSizeLevel(I)V

    :cond_0
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 1

    .line 1151
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1155
    :cond_0
    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->g(Landroid/os/Bundle;)V

    .line 1157
    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->d(Landroid/os/Bundle;)V

    .line 1159
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->addOneOverlayItem(Landroid/os/Bundle;)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 595
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->u:Z

    return-void
.end method

.method public d()V
    .locals 7

    .line 629
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->x:Ljava/util/List;

    monitor-enter v0

    .line 633
    :try_start_0
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapsdkplatform/comapi/map/c;

    .line 634
    instance-of v4, v2, Lcom/baidu/mapsdkplatform/comapi/map/b;

    if-nez v4, :cond_2

    instance-of v4, v2, Lcom/baidu/mapsdkplatform/comapi/map/l;

    if-eqz v4, :cond_1

    goto :goto_1

    .line 638
    :cond_1
    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-wide v4, v2, Lcom/baidu/mapsdkplatform/comapi/map/c;->a:J

    const/4 v2, 0x1

    invoke-virtual {v3, v4, v5, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    goto :goto_0

    .line 636
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-wide v5, v2, Lcom/baidu/mapsdkplatform/comapi/map/c;->a:J

    invoke-virtual {v4, v5, v6, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    goto :goto_0

    .line 641
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowTrafficMap(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 641
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_1

    const-string v0, "encodedPoints"

    .line 1163
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "encodePointType"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1166
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1167
    sget-object v2, Lcom/baidu/mapapi/map/EncodePointType;->BUILDINGINFO:Lcom/baidu/mapapi/map/EncodePointType;

    invoke-virtual {v2}, Lcom/baidu/mapapi/map/EncodePointType;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1168
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1170
    invoke-virtual {p0, p1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 3

    .line 652
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "opgrid"

    .line 655
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getLayerIDByTag(Ljava/lang/String;)J

    move-result-wide v0

    .line 656
    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v2, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    return-void
.end method

.method public e()V
    .locals 3

    .line 945
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->v:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    if-nez v1, :cond_0

    goto :goto_0

    .line 949
    :cond_0
    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->RemoveLayer(J)V

    .line 950
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->x:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->v:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 1

    .line 1242
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1246
    :cond_0
    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->g(Landroid/os/Bundle;)V

    .line 1248
    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->d(Landroid/os/Bundle;)V

    .line 1249
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->updateOneOverlayItem(Landroid/os/Bundle;)V

    return-void
.end method

.method public e(Z)V
    .locals 6

    .line 668
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "indoorlayer"

    if-eqz p1, :cond_1

    .line 674
    iget-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->M:Z

    if-nez p1, :cond_2

    .line 675
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getLayerIDByTag(Ljava/lang/String;)J

    move-result-wide v1

    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->z:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    iget-wide v3, p1, Lcom/baidu/mapsdkplatform/comapi/map/aa;->a:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SwitchLayer(JJ)Z

    const/4 p1, 0x1

    .line 676
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->M:Z

    goto :goto_0

    .line 682
    :cond_1
    iget-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->M:Z

    if-eqz p1, :cond_2

    .line 683
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->z:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    iget-wide v2, p1, Lcom/baidu/mapsdkplatform/comapi/map/aa;->a:J

    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p1, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getLayerIDByTag(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SwitchLayer(JJ)Z

    const/4 p1, 0x0

    .line 684
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->M:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public f(Landroid/os/Bundle;)V
    .locals 1

    .line 1253
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1257
    :cond_0
    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->g(Landroid/os/Bundle;)V

    .line 1258
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->removeOneOverlayItem(Landroid/os/Bundle;)V

    return-void
.end method

.method public f(Z)V
    .locals 5

    .line 696
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 701
    iget-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->N:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->Q:Lcom/baidu/platform/comapi/map/LocationOverlay;

    if-eqz p1, :cond_2

    .line 702
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->z:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    iget-wide v1, p1, Lcom/baidu/mapsdkplatform/comapi/map/aa;->a:J

    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->Q:Lcom/baidu/platform/comapi/map/LocationOverlay;

    iget-wide v3, p1, Lcom/baidu/platform/comapi/map/LocationOverlay;->mLayerID:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SwitchLayer(JJ)Z

    const/4 p1, 0x1

    .line 703
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->N:Z

    goto :goto_0

    .line 709
    :cond_1
    iget-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->N:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->Q:Lcom/baidu/platform/comapi/map/LocationOverlay;

    if-eqz p1, :cond_2

    .line 710
    iget-wide v1, p1, Lcom/baidu/platform/comapi/map/LocationOverlay;->mLayerID:J

    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->z:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    iget-wide v3, p1, Lcom/baidu/mapsdkplatform/comapi/map/aa;->a:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SwitchLayer(JJ)Z

    const/4 p1, 0x0

    .line 711
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->N:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public f()Z
    .locals 4

    .line 975
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->v:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v1, :cond_0

    .line 976
    iget-wide v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a:J

    invoke-virtual {v1, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->cleanSDKTileDataCache(J)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public g(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "param"

    .line 1270
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "type"

    const-string v3, "layer_addr"

    if-eqz v1, :cond_3

    .line 1271
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 1272
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1273
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/map/i;->d:Lcom/baidu/mapsdkplatform/comapi/map/i;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/i;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1274
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->z:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    iget-wide v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/aa;->a:J

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 1275
    :cond_0
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/map/i;->f:Lcom/baidu/mapsdkplatform/comapi/map/i;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/i;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1277
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->z:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    iget-wide v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/aa;->a:J

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 1278
    :cond_1
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/map/i;->b:Lcom/baidu/mapsdkplatform/comapi/map/i;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/i;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1280
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->z:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    iget-wide v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/aa;->a:J

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 1282
    :cond_2
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->z:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    iget-wide v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/aa;->a:J

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 1285
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1286
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/map/i;->d:Lcom/baidu/mapsdkplatform/comapi/map/i;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/i;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 1287
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->z:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    iget-wide v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/aa;->a:J

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 1288
    :cond_4
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/map/i;->f:Lcom/baidu/mapsdkplatform/comapi/map/i;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/i;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 1290
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->z:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    iget-wide v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/aa;->a:J

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 1291
    :cond_5
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/map/i;->b:Lcom/baidu/mapsdkplatform/comapi/map/i;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/i;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 1293
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->z:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    iget-wide v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/aa;->a:J

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 1295
    :cond_6
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->z:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    iget-wide v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/aa;->a:J

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :goto_0
    return-void
.end method

.method public g()Z
    .locals 1

    .line 1005
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->m:Z

    return v0
.end method

.method public g(Z)Z
    .locals 8

    .line 747
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "carnavinode"

    .line 751
    invoke-virtual {v0, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getLayerIDByTag(Ljava/lang/String;)J

    move-result-wide v2

    .line 752
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const-string v4, "android_sdk"

    invoke-virtual {v0, v4}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getLayerIDByTag(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-eqz v0, :cond_3

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 760
    iget-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->O:Z

    if-nez p1, :cond_3

    .line 761
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SwitchLayer(JJ)Z

    move-result v1

    const/4 p1, 0x1

    .line 762
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->O:Z

    goto :goto_0

    .line 768
    :cond_2
    iget-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->O:Z

    if-eqz p1, :cond_3

    .line 769
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p1, v4, v5, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SwitchLayer(JJ)Z

    move-result p1

    .line 770
    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->O:Z

    move v1, p1

    :cond_3
    :goto_0
    return v1
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .line 1018
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :cond_0
    return-object v1
.end method

.method public h(Landroid/os/Bundle;)V
    .locals 3

    .line 1310
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->A:Lcom/baidu/mapsdkplatform/comapi/map/l;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1314
    :cond_0
    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/l;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->initHeatMapData(JLandroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public h(Z)V
    .locals 3

    .line 841
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 845
    :cond_0
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->R:Lcom/baidu/platform/comapi/map/d;

    if-nez v1, :cond_1

    .line 846
    new-instance v1, Lcom/baidu/platform/comapi/map/d;

    invoke-direct {v1, v0}, Lcom/baidu/platform/comapi/map/d;-><init>(Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;)V

    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->R:Lcom/baidu/platform/comapi/map/d;

    .line 847
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapView()Lcom/baidu/platform/comapi/map/MapViewInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 849
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->R:Lcom/baidu/platform/comapi/map/d;

    invoke-interface {v0, v1}, Lcom/baidu/platform/comapi/map/MapViewInterface;->addOverlay(Lcom/baidu/platform/comapi/map/Overlay;)Z

    .line 850
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->S()V

    .line 853
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->R:Lcom/baidu/platform/comapi/map/d;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/d;->mLayerID:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    return-void
.end method

.method public i(Z)V
    .locals 3

    .line 933
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->v:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    if-nez v1, :cond_0

    goto :goto_0

    .line 937
    :cond_0
    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public i()Z
    .locals 1

    .line 1025
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->r:Z

    return v0
.end method

.method public j(Z)V
    .locals 3

    .line 954
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "basemap"

    .line 957
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getLayerIDByTag(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    return-void
.end method

.method public j()Z
    .locals 2

    .line 1029
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :cond_0
    return v1
.end method

.method public k(Z)V
    .locals 2

    .line 1009
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1013
    :cond_0
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->r:Z

    const/4 v1, 0x0

    .line 1014
    invoke-virtual {v0, p1, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowHotMap(ZI)V

    return-void
.end method

.method public k()Z
    .locals 1

    .line 1046
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->n:Z

    return v0
.end method

.method public l(Z)V
    .locals 1

    .line 1037
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1041
    :cond_0
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->m:Z

    .line 1042
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowTrafficMap(Z)V

    return-void
.end method

.method public l()Z
    .locals 3

    .line 1050
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v1, "basemap"

    .line 1053
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getLayerIDByTag(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->LayersIsShow(J)Z

    move-result v0

    return v0
.end method

.method public m(Z)V
    .locals 1

    .line 1057
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1060
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->setDrawHouseHeightEnable(Z)V

    return-void
.end method

.method public m()Z
    .locals 1

    .line 1064
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1067
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getDrawHouseHeightEnable()Z

    move-result v0

    return v0
.end method

.method public n()V
    .locals 3

    .line 1088
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1094
    :cond_0
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->z:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/aa;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ClearSDKLayer(J)V

    return-void
.end method

.method public n(Z)V
    .locals 3

    .line 1071
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1075
    :cond_0
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->o:Z

    .line 1076
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->R:Lcom/baidu/platform/comapi/map/d;

    if-nez v1, :cond_1

    .line 1077
    new-instance v1, Lcom/baidu/platform/comapi/map/d;

    invoke-direct {v1, v0}, Lcom/baidu/platform/comapi/map/d;-><init>(Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;)V

    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->R:Lcom/baidu/platform/comapi/map/d;

    .line 1078
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapView()Lcom/baidu/platform/comapi/map/MapViewInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1080
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->R:Lcom/baidu/platform/comapi/map/d;

    invoke-interface {v0, v1}, Lcom/baidu/platform/comapi/map/MapViewInterface;->addOverlay(Lcom/baidu/platform/comapi/map/Overlay;)Z

    .line 1081
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->S()V

    .line 1084
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->R:Lcom/baidu/platform/comapi/map/d;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/d;->mLayerID:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    return-void
.end method

.method public o()V
    .locals 3

    .line 1213
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->A:Lcom/baidu/mapsdkplatform/comapi/map/l;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1216
    :cond_0
    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/l;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->startHeatMapFrameAnimation(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public o(Z)V
    .locals 2

    .line 1363
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/high16 v0, 0x41b00000    # 22.0f

    .line 1367
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->a:F

    .line 1368
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->c:F

    .line 1369
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v1, :cond_2

    .line 1370
    iput v0, v1, Lcom/baidu/platform/comapi/map/MapController;->mMaxZoomLevel:F

    goto :goto_0

    :cond_1
    const/high16 v0, 0x41a80000    # 21.0f

    .line 1373
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->a:F

    .line 1374
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->c:F

    .line 1375
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v1, :cond_2

    .line 1376
    iput v0, v1, Lcom/baidu/platform/comapi/map/MapController;->mMaxZoomLevel:F

    .line 1380
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowBaseIndoorMap(Z)V

    return-void
.end method

.method public p()V
    .locals 3

    .line 1220
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->A:Lcom/baidu/mapsdkplatform/comapi/map/l;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1223
    :cond_0
    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/l;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->stopHeatMapFrameAnimation(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public p(Z)V
    .locals 3

    .line 1392
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1395
    :cond_0
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->S:Z

    .line 1396
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->setCustomStyleEnable(Z)V

    .line 1397
    invoke-static {}, Lcom/baidu/mapapi/OpenLogUtil;->isMapLogEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1398
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CustomMap setMapCustomEnable enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1399
    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public q()V
    .locals 3

    .line 1301
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->A:Lcom/baidu/mapsdkplatform/comapi/map/l;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1305
    :cond_0
    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/l;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->clearHeatMapLayerCache(J)V

    .line 1306
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->A:Lcom/baidu/mapsdkplatform/comapi/map/l;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/l;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->UpdateLayers(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public q(Z)V
    .locals 3

    .line 1517
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1521
    :cond_0
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->p:Z

    .line 1523
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->Q:Lcom/baidu/platform/comapi/map/LocationOverlay;

    if-nez v1, :cond_1

    .line 1524
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getMapView()Lcom/baidu/platform/comapi/map/MapViewInterface;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1526
    new-instance v0, Lcom/baidu/platform/comapi/map/LocationOverlay;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-direct {v0, v1}, Lcom/baidu/platform/comapi/map/LocationOverlay;-><init>(Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;)V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->Q:Lcom/baidu/platform/comapi/map/LocationOverlay;

    .line 1527
    invoke-interface {p1, v0}, Lcom/baidu/platform/comapi/map/MapViewInterface;->addOverlay(Lcom/baidu/platform/comapi/map/Overlay;)Z

    goto :goto_0

    .line 1530
    :cond_1
    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/LocationOverlay;->mLayerID:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public r()Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;
    .locals 7

    const-string v0, ""

    .line 1319
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 1322
    :cond_0
    invoke-virtual {v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetFocusedBaseIndoorMapInfo()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v2

    .line 1328
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1330
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "focusindoorid"

    .line 1331
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v4, "curfloor"

    .line 1332
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "floorlist"

    .line 1333
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    .line 1335
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1336
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1337
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1

    :catch_1
    move-exception v3

    move-object v1, v0

    .line 1341
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 1344
    :cond_2
    new-instance v3, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;

    invoke-direct {v3, v1, v0, v2}, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v3
.end method

.method public r(Z)V
    .locals 3

    .line 1540
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1544
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->A:Lcom/baidu/mapsdkplatform/comapi/map/l;

    if-nez v0, :cond_1

    .line 1545
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/l;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/l;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->A:Lcom/baidu/mapsdkplatform/comapi/map/l;

    .line 1546
    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Lcom/baidu/mapsdkplatform/comapi/map/c;)V

    .line 1549
    :cond_1
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->q:Z

    .line 1550
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->A:Lcom/baidu/mapsdkplatform/comapi/map/l;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/l;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    return-void
.end method

.method public s(Z)V
    .locals 1

    .line 1584
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    return-void

    .line 1587
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->setCanTouchMove(Z)V

    .line 1588
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->e:Z

    return-void
.end method

.method public s()Z
    .locals 1

    .line 1356
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1359
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->IsBaseIndoorMapMode()Z

    move-result v0

    return v0
.end method

.method public t(Z)V
    .locals 1

    .line 1592
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    return-void

    .line 1595
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->setEnableZoom(Z)V

    .line 1596
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->f:Z

    return-void
.end method

.method public t()Z
    .locals 1

    .line 1483
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->o:Z

    return v0
.end method

.method public u(Z)V
    .locals 1

    .line 1605
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->setInertialAnimation(Z)V

    return-void
.end method

.method public u()Z
    .locals 1

    .line 1536
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->p:Z

    return v0
.end method

.method public v()V
    .locals 3

    .line 1558
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->A:Lcom/baidu/mapsdkplatform/comapi/map/l;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1562
    :cond_0
    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/l;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->UpdateLayers(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public v(Z)V
    .locals 1

    .line 1613
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    return-void

    .line 1616
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->setDoubleClickZoom(Z)V

    return-void
.end method

.method public w(Z)V
    .locals 1

    .line 1627
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    return-void

    .line 1630
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->setTwoTouchClickZoomEnabled(Z)V

    return-void
.end method

.method public w()Z
    .locals 1

    .line 1580
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->e:Z

    return v0
.end method

.method public x(Z)V
    .locals 1

    .line 1637
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    return-void

    .line 1640
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->setEnlargeCenterWithDoubleClickEnable(Z)V

    return-void
.end method

.method public x()Z
    .locals 1

    .line 1609
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->f:Z

    return v0
.end method

.method public y(Z)V
    .locals 1

    .line 1644
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    return-void

    .line 1647
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->setFlingEnable(Z)V

    return-void
.end method

.method public y()Z
    .locals 1

    .line 1666
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->t:Z

    return v0
.end method

.method public z(Z)V
    .locals 1

    .line 1658
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->P:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    return-void

    .line 1661
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->set3DGestureEnable(Z)V

    .line 1662
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->t:Z

    return-void
.end method

.method public z()Z
    .locals 1

    .line 1678
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/d;->s:Z

    return v0
.end method
