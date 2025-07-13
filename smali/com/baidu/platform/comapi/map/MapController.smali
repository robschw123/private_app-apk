.class public Lcom/baidu/platform/comapi/map/MapController;
.super Ljava/lang/Object;
.source "MapController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platform/comapi/map/MapController$a;,
        Lcom/baidu/platform/comapi/map/MapController$b;,
        Lcom/baidu/platform/comapi/map/MapController$RecommendPoiScene;,
        Lcom/baidu/platform/comapi/map/MapController$RecycleMemoryLevel;,
        Lcom/baidu/platform/comapi/map/MapController$MapSceneMode;,
        Lcom/baidu/platform/comapi/map/MapController$MapStyleMode;,
        Lcom/baidu/platform/comapi/map/MapController$HeatMapType;,
        Lcom/baidu/platform/comapi/map/MapController$MapLayerType;,
        Lcom/baidu/platform/comapi/map/MapController$MapControlMode;,
        Lcom/baidu/platform/comapi/map/MapController$MapFirstFrameCallback;
    }
.end annotation


# static fields
.field private static A:F = 0.0f

.field public static final ANDROID_SDK_LAYER_TAG:Ljava/lang/String; = "android_sdk"

.field private static B:Z = false

.field public static final CITY_AREA_TAG:Ljava/lang/String; = "cityarea"

.field public static final COMPASS_LAYER_TAG:Ljava/lang/String; = "compass"

.field public static final DEFAULT_LAYER_TAG:Ljava/lang/String; = "default"

.field public static final DYNAMIC_MAP_LAYER_TAG:Ljava/lang/String; = "dynamicmap"

.field public static final FOOTSURFACE_LAYER_TAG:Ljava/lang/String; = "footsurface"

.field public static final HEATMAP_LAYER_TAG:Ljava/lang/String; = "heatmap"

.field public static final ITEM_LAYER_TAG:Ljava/lang/String; = "item"

.field public static final ITSROUTE_LAYER_TAG:Ljava/lang/String; = "itsroute"

.field public static final LOCAL_LIMIT_MAP_LAYER_TAG:Ljava/lang/String; = "dynamiclimit"

.field public static final LOCATION_LAYER_TAG:Ljava/lang/String; = "location"

.field public static final MSG_LONGLINK_CONNECT:I = 0x1

.field public static final MSG_LONGLINK_DISCONNECT:I = 0x2

.field public static final POISON_LAYER_TAG:Ljava/lang/String; = "poison"

.field public static final POPUP_LAYER_TAG:Ljava/lang/String; = "popup"

.field private static R:J = 0x0L

.field public static final RTPOPUP_LAYER_TAG:Ljava/lang/String; = "rtpopup"

.field public static final RT_POPUP_LAYER_TAG:Ljava/lang/String; = "rtpopup"

.field public static final SHARELOCATION_BUBBLE:Ljava/lang/String; = "smshare"

.field public static final STREETPOPUP_LAYER_TAG:Ljava/lang/String; = "streetpopup"

.field public static final STREETROUTE_LAYER_TAG:Ljava/lang/String; = "streetroute"

.field private static W:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;",
            ">;"
        }
    .end annotation
.end field

.field public static isCompass:Z = false

.field private static final k:Ljava/lang/String; = "MapController"

.field public static mLocIconOnScreen:Z = true

.field public static m_registered_SENSOR_ORIENTATION:Z = false

.field private static y:Z = true

.field private static z:F


# instance fields
.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Lcom/baidu/platform/comapi/map/MapController$a;

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:F

.field private M:F

.field private N:F

.field private O:J

.field private P:Z

.field private Q:Z

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:Z

.field private X:J

.field private Y:Z

.field private Z:Landroid/os/Handler;

.field a:I

.field private aa:Z

.field private ab:Lcom/baidu/platform/comapi/map/b/b;

.field private ac:Lcom/baidu/platform/comapi/map/MapController$MapControlMode;

.field b:Lcom/baidu/platform/comapi/map/MapViewListener;

.field c:Lcom/baidu/platform/comapi/map/CaptureMapListener;

.field d:Lcom/baidu/platform/comapi/map/k;

.field e:Lcom/baidu/platform/comapi/map/an;

.field f:Lcom/baidu/platform/comapi/map/MapRenderModeChangeListener;

.field g:Lcom/baidu/platform/comapi/map/EngineMsgListener;

.field h:Lcom/baidu/platform/comapi/map/MapViewSurfaceListener;

.field i:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/baidu/platform/comapi/map/MapViewInterface;",
            ">;"
        }
    .end annotation
.end field

.field public isSetMapStatusByUsr:Z

.field j:Lcom/baidu/platform/comapi/map/NaviMapViewListener;

.field private l:Lcom/baidu/platform/comapi/map/b/d;

.field private m:Z

.field public mHasMapObjDraging:Z

.field public mIsAnimating:Z

.field public mIsInertialAnimation:Z

.field public mIsMapLoadFinish:Z

.field public mIsMoving:Z

.field public mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/map/al;",
            ">;"
        }
    .end annotation
.end field

.field public mMaxZoomLevel:F

.field public mMinZoomLevel:F

.field private n:Z

.field public nearlyRadius:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:Lcom/baidu/platform/comapi/map/MapController$MapFirstFrameCallback;

.field private s:Z

.field private t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

.field private u:J

.field private v:Landroid/os/Handler;

.field private w:I

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 570
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/platform/comapi/map/MapController;->W:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->m:Z

    .line 64
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->n:Z

    const/4 v1, 0x0

    .line 66
    iput v1, p0, Lcom/baidu/platform/comapi/map/MapController;->a:I

    .line 70
    iput v0, p0, Lcom/baidu/platform/comapi/map/MapController;->o:I

    .line 71
    iput v0, p0, Lcom/baidu/platform/comapi/map/MapController;->p:I

    .line 73
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/MapController;->q:Z

    .line 77
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/MapController;->s:Z

    const/4 v2, 0x0

    .line 356
    iput-object v2, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const-wide/16 v3, 0x0

    .line 357
    iput-wide v3, p0, Lcom/baidu/platform/comapi/map/MapController;->u:J

    .line 396
    iput-object v2, p0, Lcom/baidu/platform/comapi/map/MapController;->v:Landroid/os/Handler;

    const/16 v3, 0x14

    .line 400
    iput v3, p0, Lcom/baidu/platform/comapi/map/MapController;->nearlyRadius:I

    .line 408
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/MapController;->C:Z

    .line 410
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/MapController;->D:Z

    .line 412
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/MapController;->E:Z

    .line 414
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/MapController;->F:Z

    .line 416
    new-instance v3, Lcom/baidu/platform/comapi/map/MapController$a;

    invoke-direct {v3, p0}, Lcom/baidu/platform/comapi/map/MapController$a;-><init>(Lcom/baidu/platform/comapi/map/MapController;)V

    iput-object v3, p0, Lcom/baidu/platform/comapi/map/MapController;->G:Lcom/baidu/platform/comapi/map/MapController$a;

    .line 420
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->H:Z

    .line 424
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/MapController;->I:Z

    .line 426
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->J:Z

    .line 427
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/MapController;->K:Z

    const/high16 v3, -0x40800000    # -1.0f

    .line 429
    iput v3, p0, Lcom/baidu/platform/comapi/map/MapController;->L:F

    .line 430
    iput v3, p0, Lcom/baidu/platform/comapi/map/MapController;->M:F

    const/4 v3, 0x0

    .line 431
    iput v3, p0, Lcom/baidu/platform/comapi/map/MapController;->N:F

    .line 435
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/MapController;->P:Z

    .line 438
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/MapController;->Q:Z

    .line 457
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->S:Z

    .line 458
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->T:Z

    .line 460
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->U:Z

    .line 461
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->V:Z

    .line 462
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->mIsInertialAnimation:Z

    .line 478
    iput-object v2, p0, Lcom/baidu/platform/comapi/map/MapController;->b:Lcom/baidu/platform/comapi/map/MapViewListener;

    .line 479
    iput-object v2, p0, Lcom/baidu/platform/comapi/map/MapController;->c:Lcom/baidu/platform/comapi/map/CaptureMapListener;

    .line 480
    iput-object v2, p0, Lcom/baidu/platform/comapi/map/MapController;->d:Lcom/baidu/platform/comapi/map/k;

    .line 481
    iput-object v2, p0, Lcom/baidu/platform/comapi/map/MapController;->e:Lcom/baidu/platform/comapi/map/an;

    .line 482
    iput-object v2, p0, Lcom/baidu/platform/comapi/map/MapController;->f:Lcom/baidu/platform/comapi/map/MapRenderModeChangeListener;

    .line 483
    iput-object v2, p0, Lcom/baidu/platform/comapi/map/MapController;->g:Lcom/baidu/platform/comapi/map/EngineMsgListener;

    .line 484
    iput-object v2, p0, Lcom/baidu/platform/comapi/map/MapController;->h:Lcom/baidu/platform/comapi/map/MapViewSurfaceListener;

    const/high16 v0, 0x41a80000    # 21.0f

    .line 579
    iput v0, p0, Lcom/baidu/platform/comapi/map/MapController;->mMaxZoomLevel:F

    const/high16 v0, 0x40800000    # 4.0f

    .line 580
    iput v0, p0, Lcom/baidu/platform/comapi/map/MapController;->mMinZoomLevel:F

    .line 587
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/MapController;->mIsMoving:Z

    .line 588
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/MapController;->mIsAnimating:Z

    .line 589
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/MapController;->isSetMapStatusByUsr:Z

    .line 592
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/MapController;->Y:Z

    .line 594
    iput-object v2, p0, Lcom/baidu/platform/comapi/map/MapController;->Z:Landroid/os/Handler;

    .line 597
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/MapController;->aa:Z

    .line 1372
    new-instance v0, Lcom/baidu/platform/comapi/map/b/b;

    invoke-direct {v0, p0}, Lcom/baidu/platform/comapi/map/b/b;-><init>(Lcom/baidu/platform/comapi/map/MapController;)V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->ab:Lcom/baidu/platform/comapi/map/b/b;

    .line 2464
    sget-object v0, Lcom/baidu/platform/comapi/map/MapController$MapControlMode;->DEFAULT:Lcom/baidu/platform/comapi/map/MapController$MapControlMode;

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->ac:Lcom/baidu/platform/comapi/map/MapController$MapControlMode;

    .line 667
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    .line 669
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getScreenWidth()I

    move-result v0

    iput v0, p0, Lcom/baidu/platform/comapi/map/MapController;->w:I

    .line 670
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getScreenHeight()I

    move-result v0

    iput v0, p0, Lcom/baidu/platform/comapi/map/MapController;->x:I

    .line 671
    new-instance v0, Lcom/baidu/platform/comapi/map/MapController$b;

    invoke-direct {v0, p0}, Lcom/baidu/platform/comapi/map/MapController$b;-><init>(Lcom/baidu/platform/comapi/map/MapController;)V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->v:Landroid/os/Handler;

    .line 673
    new-instance v0, Lcom/baidu/platform/comapi/map/m;

    invoke-direct {v0, p0}, Lcom/baidu/platform/comapi/map/m;-><init>(Lcom/baidu/platform/comapi/map/MapController;)V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->Z:Landroid/os/Handler;

    .line 684
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->d()V

    return-void
.end method

.method public static native CleanAfterDBClick(JFF)I
.end method

.method public static GetAdaptKeyCode(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x12

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x10

    goto :goto_0

    :pswitch_2
    const/16 p0, 0x13

    goto :goto_0

    :pswitch_3
    const/16 p0, 0x11

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static native MapProc(JIIIIIDDDD)I
.end method

.method private a(Z)Lcom/baidu/platform/comapi/map/MapStatus;
    .locals 7

    .line 2628
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2629
    new-instance p1, Lcom/baidu/platform/comapi/map/MapStatus;

    invoke-direct {p1}, Lcom/baidu/platform/comapi/map/MapStatus;-><init>()V

    return-object p1

    .line 2632
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetMapStatus(Z)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    .line 2634
    new-instance p1, Lcom/baidu/platform/comapi/map/MapStatus;

    invoke-direct {p1}, Lcom/baidu/platform/comapi/map/MapStatus;-><init>()V

    return-object p1

    .line 2636
    :cond_1
    new-instance v0, Lcom/baidu/platform/comapi/map/MapStatus;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/map/MapStatus;-><init>()V

    const-string v1, "level"

    .line 2637
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    const-string v1, "rotation"

    .line 2638
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->rotation:I

    const-string v1, "overlooking"

    .line 2639
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->overlooking:I

    const-string v1, "centerptx"

    .line 2641
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtX:D

    const-string v1, "centerpty"

    .line 2642
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtY:D

    const-string v1, "centerptz"

    .line 2643
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtZ:D

    .line 2646
    iget-object v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    const-string v2, "left"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->left:I

    .line 2647
    iget-object v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    const-string v2, "right"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->right:I

    .line 2648
    iget-object v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    const-string v2, "top"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->top:I

    .line 2649
    iget-object v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    const-string v2, "bottom"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->bottom:I

    .line 2652
    iget-object v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    const-string v2, "gleft"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->left:J

    .line 2653
    iget-object v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    const-string v2, "gright"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->right:J

    .line 2654
    iget-object v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    const-string v2, "gtop"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->top:J

    .line 2655
    iget-object v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    const-string v2, "gbottom"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->bottom:J

    const-string/jumbo v1, "xoffset"

    .line 2658
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->xOffset:F

    const-string/jumbo v1, "yoffset"

    .line 2659
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->yOffset:F

    const-string v1, "bfpp"

    .line 2660
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->bfpp:Z

    const-string v1, "panoid"

    .line 2663
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->panoId:Ljava/lang/String;

    const-string v1, "siangle"

    .line 2665
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->streetIndicateAngle:F

    const-string v1, "isbirdeye"

    .line 2666
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->isBirdEye:Z

    const-string v1, "ssext"

    .line 2667
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->streetExt:I

    const-string v1, "roadOffsetX"

    .line 2668
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->roadOffsetX:F

    const-string v1, "roadOffsetY"

    .line 2669
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->roadOffsetY:F

    const-string v1, "boverlookback"

    .line 2670
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    iput-boolean v2, v0, Lcom/baidu/platform/comapi/map/MapStatus;->bOverlookSpringback:Z

    const-string v1, "minoverlook"

    .line 2671
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->minOverlooking:I

    const-string/jumbo v1, "xScreenOffset"

    .line 2673
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->xScreenOffset:F

    const-string/jumbo v1, "yScreenOffset"

    .line 2674
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->yScreenOffset:F

    .line 2677
    iget-object p1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    iget-wide v1, p1, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->left:J

    const-wide/32 v3, -0x131bf84

    cmp-long p1, v1, v3

    if-gtz p1, :cond_5

    .line 2678
    iget-object p1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    iput-wide v3, p1, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->left:J

    .line 2679
    :cond_5
    iget-object p1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    iget-wide v1, p1, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->right:J

    const-wide/32 v5, 0x131bf84

    cmp-long p1, v1, v5

    if-ltz p1, :cond_6

    .line 2680
    iget-object p1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    iput-wide v5, p1, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->right:J

    .line 2681
    :cond_6
    iget-object p1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    iget-wide v1, p1, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->top:J

    cmp-long p1, v1, v5

    if-ltz p1, :cond_7

    .line 2682
    iget-object p1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    iput-wide v5, p1, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->top:J

    .line 2683
    :cond_7
    iget-object p1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    iget-wide v1, p1, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->bottom:J

    cmp-long p1, v1, v3

    if-gtz p1, :cond_8

    .line 2684
    iget-object p1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    iput-wide v3, p1, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->bottom:J

    :cond_8
    return-object v0
.end method

.method private a()V
    .locals 4

    const/4 v0, 0x0

    .line 688
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->mIsMoving:Z

    .line 689
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/MapController;->mIsAnimating:Z

    if-nez v1, :cond_2

    .line 691
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    if-nez v1, :cond_0

    return-void

    .line 695
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatusInner()Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object v1

    const/4 v2, 0x0

    .line 696
    :goto_0
    iget-object v3, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 697
    iget-object v3, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/platform/comapi/map/al;

    if-eqz v3, :cond_1

    .line 700
    invoke-interface {v3, v1}, Lcom/baidu/platform/comapi/map/al;->c(Lcom/baidu/mapsdkplatform/comapi/map/x;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 704
    :cond_2
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->isSetMapStatusByUsr:Z

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1437
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1438
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v2, v0

    .line 1439
    sput v2, Lcom/baidu/platform/comapi/map/MapController;->z:F

    int-to-float v2, v1

    .line 1440
    sput v2, Lcom/baidu/platform/comapi/map/MapController;->A:F

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 1441
    invoke-virtual {p0, v1, v2, v0}, Lcom/baidu/platform/comapi/map/MapController;->MapMsgProc(III)I

    const/4 v0, 0x1

    .line 1442
    sput-boolean v0, Lcom/baidu/platform/comapi/map/MapController;->B:Z

    .line 1444
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/MapController;->X:J

    return-void
.end method

.method static synthetic a(Lcom/baidu/platform/comapi/map/MapController;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->a()V

    return-void
.end method

.method private a(III)Z
    .locals 19

    move-object/from16 v0, p0

    .line 1696
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 1699
    :cond_0
    iget-object v1, v0, Lcom/baidu/platform/comapi/map/MapController;->i:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_4

    .line 1701
    :cond_1
    iget-object v1, v0, Lcom/baidu/platform/comapi/map/MapController;->i:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/map/MapViewInterface;

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    .line 1708
    :try_start_0
    invoke-interface {v1}, Lcom/baidu/platform/comapi/map/MapViewInterface;->getOverlays()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v5

    :goto_0
    if-ltz v7, :cond_4

    .line 1709
    invoke-interface {v1}, Lcom/baidu/platform/comapi/map/MapViewInterface;->getOverlays()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/platform/comapi/map/Overlay;

    .line 1710
    iget v9, v8, Lcom/baidu/platform/comapi/map/Overlay;->mType:I

    const/16 v10, 0x1b

    if-eq v9, v10, :cond_2

    goto :goto_1

    .line 1713
    :cond_2
    iget-wide v3, v8, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    .line 1714
    iget v8, v0, Lcom/baidu/platform/comapi/map/MapController;->nearlyRadius:I

    int-to-double v8, v8

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getZoomUnitsInMeter()D

    move-result-wide v10
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v10

    double-to-int v8, v8

    .line 1715
    :try_start_1
    iget-object v11, v0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v11, :cond_3

    move-wide v12, v3

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v16, v8

    .line 1716
    invoke-virtual/range {v11 .. v16}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetNearlyObjID(JIII)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    const-string v9, ""

    .line 1717
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1718
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "dataset"

    .line 1719
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 1720
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    const-string v8, "itemindex"

    .line 1721
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string v9, "clickindex"

    .line 1722
    invoke-virtual {v7, v9, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-wide/from16 v17, v3

    move v4, v8

    move-wide/from16 v7, v17

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_4
    move-wide v7, v3

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    :goto_2
    move v11, v2

    move v2, v3

    move v10, v4

    move-wide v13, v7

    goto :goto_3

    :catch_0
    const/4 v8, -0x1

    :catch_1
    move-wide v13, v3

    move v10, v8

    const/4 v11, -0x1

    :goto_3
    move/from16 v3, p1

    if-ne v3, v5, :cond_6

    .line 1732
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapView()Lcom/baidu/platform/comapi/map/MapViewInterface;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapView()Lcom/baidu/platform/comapi/map/MapViewInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/baidu/platform/comapi/map/MapViewInterface;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1733
    invoke-interface {v1}, Lcom/baidu/platform/comapi/map/MapViewInterface;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-interface {v1, v3, v4}, Lcom/baidu/platform/comapi/map/Projection;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v12

    if-eq v11, v6, :cond_5

    .line 1735
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v9

    invoke-interface/range {v9 .. v14}, Lcom/baidu/platform/comapi/map/MapViewListener;->onClickedItem(IILcom/baidu/platform/comapi/basestruct/GeoPoint;J)V

    goto :goto_4

    .line 1737
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v1

    invoke-interface {v1, v10, v12, v13, v14}, Lcom/baidu/platform/comapi/map/MapViewListener;->onClickedItem(ILcom/baidu/platform/comapi/basestruct/GeoPoint;J)V

    :cond_6
    :goto_4
    return v2
.end method

.method static synthetic a(Lcom/baidu/platform/comapi/map/MapController;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapController;->P:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/platform/comapi/map/MapController;)J
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/baidu/platform/comapi/map/MapController;->u:J

    return-wide v0
.end method

.method private b()Z
    .locals 1

    .line 775
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->E:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private b(II)Z
    .locals 29

    move-object/from16 v0, p0

    const-string v1, "mcar"

    const-string v2, "ud"

    .line 817
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    .line 819
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/baidu/platform/comapi/map/MapController;->j:Lcom/baidu/platform/comapi/map/NaviMapViewListener;

    if-nez v3, :cond_1

    return v4

    .line 823
    :cond_1
    iget v3, v0, Lcom/baidu/platform/comapi/map/MapController;->nearlyRadius:I

    int-to-double v5, v3

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getZoomUnitsInMeter()D

    move-result-wide v7

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    double-to-int v12, v5

    .line 824
    new-instance v3, Lcom/baidu/platform/comapi/basestruct/Point;

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-direct {v3, v5, v6}, Lcom/baidu/platform/comapi/basestruct/Point;-><init>(II)V

    .line 826
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->isNaviMode()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v0, Lcom/baidu/platform/comapi/map/MapController;->j:Lcom/baidu/platform/comapi/map/NaviMapViewListener;

    if-eqz v7, :cond_2

    .line 827
    invoke-interface {v7, v3}, Lcom/baidu/platform/comapi/map/NaviMapViewListener;->onTapInterception(Lcom/baidu/platform/comapi/basestruct/Point;)Lcom/baidu/platform/comapi/basestruct/Point;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 833
    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntX()I

    move-result v5

    .line 834
    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntY()I

    move-result v3

    goto :goto_1

    :cond_3
    move v3, v6

    .line 837
    :goto_1
    iget-object v7, v0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const-wide/16 v8, -0x1

    move v10, v5

    move v11, v3

    invoke-virtual/range {v7 .. v12}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetNearlyObjID(JIII)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    return v4

    .line 842
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->isNaviMode()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/baidu/platform/comapi/map/MapController;->j:Lcom/baidu/platform/comapi/map/NaviMapViewListener;

    if-eqz v7, :cond_5

    .line 843
    invoke-interface {v7, v6, v5, v3}, Lcom/baidu/platform/comapi/map/NaviMapViewListener;->onItemClick(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_5

    return v8

    .line 850
    :cond_5
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 851
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 859
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "in"

    if-eqz v7, :cond_a

    .line 860
    :try_start_1
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 862
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 863
    new-instance v3, Lcom/baidu/platform/comapi/map/MapObj;

    invoke-direct {v3}, Lcom/baidu/platform/comapi/map/MapObj;-><init>()V

    .line 864
    iput-object v1, v3, Lcom/baidu/platform/comapi/map/MapObj;->routeType:Ljava/lang/String;

    const-string v1, "id"

    .line 865
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "id"

    .line 866
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v3, Lcom/baidu/platform/comapi/map/MapObj;->routeId:I

    :cond_6
    const-string v1, "status"

    .line 868
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "status"

    .line 869
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v3, Lcom/baidu/platform/comapi/map/MapObj;->status:I

    .line 871
    :cond_7
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 872
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v3, Lcom/baidu/platform/comapi/map/MapObj;->index:I

    .line 874
    :cond_8
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 876
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/baidu/platform/comapi/map/MapViewListener;->onClickedRouteObj(Ljava/util/List;)V

    :cond_9
    return v8

    :cond_a
    const-string v1, "dataset"

    .line 882
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 883
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v7, "ty"

    .line 884
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v10, 0x1782

    const/16 v11, 0x68

    const/16 v14, 0x1388

    const/16 v15, 0x1f

    const/16 v13, 0x19

    const/16 v12, 0x67

    const/4 v8, 0x4

    const/4 v4, 0x3

    const/16 v7, 0x16

    if-ne v3, v7, :cond_b

    .line 886
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v4, v16

    :goto_2
    const/16 v17, 0x0

    :goto_3
    const/16 v18, 0x0

    :goto_4
    const/16 v19, 0x0

    :goto_5
    const/16 v20, 0x0

    :goto_6
    const/16 v21, 0x0

    goto/16 :goto_a

    :cond_b
    if-eq v3, v4, :cond_13

    const/16 v4, 0xd

    if-eq v3, v4, :cond_13

    const/16 v4, 0xe

    if-eq v3, v4, :cond_13

    const/16 v4, 0x10

    if-eq v3, v4, :cond_13

    const/16 v4, 0xf

    if-eq v3, v4, :cond_13

    if-eq v3, v8, :cond_13

    if-eq v3, v12, :cond_13

    if-eq v3, v13, :cond_13

    if-eq v3, v15, :cond_13

    if-eq v3, v11, :cond_13

    if-eq v3, v14, :cond_13

    if-eq v3, v10, :cond_13

    const/16 v4, 0x1783

    if-ne v3, v4, :cond_c

    goto :goto_9

    :cond_c
    const/16 v4, 0x8

    if-eq v3, v4, :cond_12

    const/4 v4, 0x1

    if-eq v3, v4, :cond_12

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d

    goto :goto_7

    :cond_d
    const/4 v4, 0x6

    if-ne v3, v4, :cond_e

    .line 897
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v19, v4

    const/4 v4, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    goto :goto_5

    :cond_e
    const/16 v4, 0x18

    if-ne v3, v4, :cond_f

    .line 899
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v20, v4

    const/4 v4, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    goto :goto_6

    :cond_f
    const/16 v4, 0x4d7

    if-ne v3, v4, :cond_10

    .line 901
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_8

    :cond_10
    const/16 v4, 0x1b58

    if-ne v3, v4, :cond_11

    .line 903
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v21, v4

    const/4 v4, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    goto :goto_a

    :cond_11
    const/4 v4, 0x0

    goto :goto_2

    .line 895
    :cond_12
    :goto_7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_8
    move-object/from16 v18, v4

    const/4 v4, 0x0

    const/16 v17, 0x0

    goto/16 :goto_4

    .line 893
    :cond_13
    :goto_9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v4

    const/4 v4, 0x0

    goto/16 :goto_3

    :goto_a
    const/4 v14, 0x0

    const/16 v22, -0x1

    .line 906
    :goto_b
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v14, v11, :cond_58

    .line 907
    invoke-virtual {v1, v14}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/json/JSONObject;

    const-string v15, "ty"

    .line 908
    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    const/16 v13, 0x1a

    if-ne v15, v13, :cond_14

    move-object/from16 v24, v1

    move-object v12, v6

    move-object/from16 v25, v9

    move-object/from16 v9, v17

    move-object/from16 v7, v18

    move-object/from16 v1, v19

    move-object/from16 v6, v20

    move-object/from16 v8, v21

    const/4 v0, -0x1

    goto/16 :goto_2a

    .line 913
    :cond_14
    new-instance v13, Lcom/baidu/platform/comapi/map/MapObj;

    invoke-direct {v13}, Lcom/baidu/platform/comapi/map/MapObj;-><init>()V

    const-string v12, "layerid"

    .line 915
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_15

    const-string v12, "layerid"

    .line 916
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    long-to-int v8, v7

    iput v8, v13, Lcom/baidu/platform/comapi/map/MapObj;->layer_id:I

    goto :goto_c

    :cond_15
    const/4 v7, 0x0

    .line 918
    iput v7, v13, Lcom/baidu/platform/comapi/map/MapObj;->layer_id:I

    .line 921
    :goto_c
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, ""

    if-eqz v7, :cond_16

    .line 922
    :try_start_2
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v13, Lcom/baidu/platform/comapi/map/MapObj;->strUid:Ljava/lang/String;

    goto :goto_d

    .line 924
    :cond_16
    iput-object v8, v13, Lcom/baidu/platform/comapi/map/MapObj;->strUid:Ljava/lang/String;

    :goto_d
    const-string v7, "tx"

    .line 926
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v13, Lcom/baidu/platform/comapi/map/MapObj;->strText:Ljava/lang/String;

    .line 927
    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 928
    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v13, Lcom/baidu/platform/comapi/map/MapObj;->nIndex:I

    goto :goto_e

    :cond_17
    const-string v7, "index"

    .line 929
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    const-string v7, "index"

    .line 930
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v13, Lcom/baidu/platform/comapi/map/MapObj;->nIndex:I

    goto :goto_e

    :cond_18
    const/4 v7, 0x0

    .line 932
    iput v7, v13, Lcom/baidu/platform/comapi/map/MapObj;->nIndex:I

    :goto_e
    const-string v7, "geo"

    .line 935
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    const-string v7, "geo"

    .line 936
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 937
    invoke-static {v7}, Lcom/baidu/platform/comapi/location/CoordinateUtil;->complexPtToPoint(Ljava/lang/String;)Lcom/baidu/platform/comapi/basestruct/Point;

    move-result-object v7

    .line 938
    iget-object v12, v13, Lcom/baidu/platform/comapi/map/MapObj;->geoPt:Lcom/baidu/platform/comapi/basestruct/Point;

    if-nez v7, :cond_19

    const-wide/16 v23, 0x0

    move-wide/from16 v27, v23

    move-object/from16 v24, v1

    move-wide/from16 v0, v27

    goto :goto_f

    :cond_19
    invoke-virtual {v7}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntX()I

    move-result v10

    move-object/from16 v24, v1

    int-to-double v0, v10

    :goto_f
    if-nez v7, :cond_1a

    const-wide/16 v25, 0x0

    move-wide/from16 v27, v25

    move-object/from16 v25, v9

    move-wide/from16 v9, v27

    goto :goto_10

    :cond_1a
    invoke-virtual {v7}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntY()I

    move-result v7

    move-object/from16 v25, v9

    int-to-double v9, v7

    :goto_10
    invoke-virtual {v12, v0, v1, v9, v10}, Lcom/baidu/platform/comapi/basestruct/Point;->setTo(DD)V

    goto :goto_11

    :cond_1b
    move-object/from16 v24, v1

    move-object/from16 v25, v9

    const-string v0, "ptx"

    .line 939
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "pty"

    .line 940
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 941
    iget-object v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->geoPt:Lcom/baidu/platform/comapi/basestruct/Point;

    const-string v1, "ptx"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    double-to-int v1, v9

    int-to-double v9, v1

    const-string v1, "pty"

    move-object v12, v6

    .line 942
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-int v1, v6

    int-to-double v6, v1

    .line 941
    invoke-virtual {v0, v9, v10, v6, v7}, Lcom/baidu/platform/comapi/basestruct/Point;->setTo(DD)V

    goto :goto_12

    :cond_1c
    :goto_11
    move-object v12, v6

    :goto_12
    const-string v0, "geoz"

    .line 944
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "geoz"

    .line 945
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    .line 946
    iput v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->geoZ:F

    :cond_1d
    const-string v0, "indoorpoi"

    .line 949
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "indoorpoi"

    .line 950
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 951
    iput-boolean v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->indoorpoi:Z

    :cond_1e
    const-string v0, "onlineType"

    .line 954
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "onlineType"

    .line 955
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 956
    iput v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->poiOnlineType:I

    :cond_1f
    const-string v0, "bid"

    .line 959
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "bid"

    .line 960
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->bid:Ljava/lang/String;

    :cond_20
    const-string v0, "ts"

    .line 963
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "ts"

    .line 964
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->sltime:I

    :cond_21
    const-string v0, "obj"

    .line 966
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "obj"

    .line 967
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->slobj:I

    :cond_22
    const-string/jumbo v0, "visible"

    .line 970
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string/jumbo v0, "visible"

    .line 971
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->slvisi:I

    .line 973
    :cond_23
    iput v15, v13, Lcom/baidu/platform/comapi/map/MapObj;->nType:I

    const-string v0, "of"

    .line 974
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "of"

    .line 975
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->offset:I

    :cond_24
    const-string v0, "poiname"

    .line 977
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "poiname"

    .line 978
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->ssName:Ljava/lang/String;

    :cond_25
    const-string v0, "poiindoorid"

    .line 980
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "poiindoorid"

    .line 981
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->ssIndoorId:Ljava/lang/String;

    .line 983
    :cond_26
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 984
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->ssPoiUid:Ljava/lang/String;

    :cond_27
    const-string v0, "streetType"

    .line 986
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "streetType"

    .line 987
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->ssType:Ljava/lang/String;

    :cond_28
    const-string v0, "dis"

    .line 989
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "dis"

    .line 990
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->offset:I

    :cond_29
    const-string/jumbo v0, "x"

    .line 992
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 993
    iget-object v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->geoPt:Lcom/baidu/platform/comapi/basestruct/Point;

    const-string/jumbo v1, "x"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/basestruct/Point;->setIntX(I)V

    const-string/jumbo v0, "x"

    .line 994
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->streetArrowCenterX:D

    :cond_2a
    const-string/jumbo v0, "y"

    .line 997
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 998
    iget-object v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->geoPt:Lcom/baidu/platform/comapi/basestruct/Point;

    const-string/jumbo v1, "y"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/basestruct/Point;->setIntY(I)V

    const-string/jumbo v0, "y"

    .line 999
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->streetArrowCenterY:D

    :cond_2b
    const-string/jumbo v0, "z"

    .line 1002
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string/jumbo v0, "z"

    .line 1003
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->ssZ:I

    :cond_2c
    const-string v0, "rotation"

    .line 1005
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "rotation"

    .line 1006
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->ssRotation:D

    :cond_2d
    const-string v0, "pid"

    .line 1008
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "pid"

    .line 1009
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->ssPanoId:Ljava/lang/String;

    :cond_2e
    const-string v0, "customdata"

    .line 1011
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "customdata"

    .line 1012
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->ssData:Ljava/lang/String;

    :cond_2f
    const-string v0, "src"

    .line 1015
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "src"

    .line 1016
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->dynamicSrc:I

    .line 1017
    iget v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->dynamicSrc:I

    move/from16 v22, v0

    goto :goto_13

    :cond_30
    const/4 v0, -0x1

    .line 1019
    iput v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->dynamicSrc:I

    :goto_13
    const-string v0, "ad"

    .line 1022
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "ad"

    .line 1023
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->ad:I

    goto :goto_14

    :cond_31
    const/4 v0, -0x1

    .line 1025
    iput v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->ad:I

    :goto_14
    const-string v0, "ad_style"

    .line 1028
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "ad_style"

    .line 1029
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->adstyle:I

    goto :goto_15

    :cond_32
    const/4 v0, -0x1

    .line 1031
    iput v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->adstyle:I

    :goto_15
    const-string v0, "qid"

    .line 1034
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "qid"

    .line 1035
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->qid:Ljava/lang/String;

    goto :goto_16

    .line 1037
    :cond_33
    iput-object v8, v13, Lcom/baidu/platform/comapi/map/MapObj;->qid:Ljava/lang/String;

    :goto_16
    const-string v0, "puid"

    .line 1040
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "puid"

    .line 1041
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->puid:Ljava/lang/String;

    goto :goto_17

    .line 1043
    :cond_34
    iput-object v8, v13, Lcom/baidu/platform/comapi/map/MapObj;->puid:Ljava/lang/String;

    :goto_17
    const-string v0, "dy_src"

    .line 1046
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "dy_src"

    .line 1047
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->dysrc:I

    goto :goto_18

    :cond_35
    const/4 v0, -0x1

    .line 1049
    iput v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->dysrc:I

    :goto_18
    const-string v0, "dy_stge"

    .line 1052
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "dy_stge"

    .line 1053
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->dystge:I

    goto :goto_19

    :cond_36
    const/4 v0, -0x1

    .line 1055
    iput v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->dystge:I

    :goto_19
    const-string v0, "is_aggregate"

    .line 1058
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "is_aggregate"

    .line 1059
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1060
    iput-boolean v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->isAgg:Z

    :cond_37
    const-string v0, "ad_log"

    .line 1063
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "ad_log"

    .line 1064
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->adLog:Ljava/lang/String;

    goto :goto_1a

    .line 1066
    :cond_38
    iput-object v8, v13, Lcom/baidu/platform/comapi/map/MapObj;->adLog:Ljava/lang/String;

    :goto_1a
    const-string v0, "url"

    .line 1069
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, "url"

    .line 1070
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->url:Ljava/lang/String;

    goto :goto_1b

    .line 1072
    :cond_39
    iput-object v8, v13, Lcom/baidu/platform/comapi/map/MapObj;->url:Ljava/lang/String;

    :goto_1b
    const-string v0, "style_id"

    .line 1075
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "style_id"

    .line 1076
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->style_id:I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1c

    :cond_3a
    const/4 v0, 0x0

    .line 1078
    :try_start_3
    iput v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->style_id:I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1c
    :try_start_4
    const-string v0, "level"

    .line 1080
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "level"

    .line 1081
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->level:I

    const/4 v0, -0x1

    goto :goto_1d

    :cond_3b
    const/4 v0, -0x1

    .line 1083
    iput v0, v13, Lcom/baidu/platform/comapi/map/MapObj;->level:I

    :goto_1d
    const-string v1, "clickaction"

    .line 1086
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const-string v1, "clickaction"

    .line 1087
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/baidu/platform/comapi/map/MapObj;->clickAction:Ljava/lang/String;

    goto :goto_1e

    .line 1089
    :cond_3c
    iput-object v8, v13, Lcom/baidu/platform/comapi/map/MapObj;->clickAction:Ljava/lang/String;

    :goto_1e
    const-string v1, "exjson"

    .line 1091
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    const-string v1, "exjson"

    .line 1092
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/baidu/platform/comapi/map/MapObj;->exJson:Ljava/lang/String;

    goto :goto_1f

    .line 1094
    :cond_3d
    iput-object v8, v13, Lcom/baidu/platform/comapi/map/MapObj;->exJson:Ljava/lang/String;

    :goto_1f
    const-string v1, "statisticValue"

    .line 1097
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const-string v1, "statisticValue"

    .line 1098
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v13, Lcom/baidu/platform/comapi/map/MapObj;->statisticValue:I

    :cond_3e
    const/16 v1, 0x16

    if-ne v3, v1, :cond_40

    .line 1102
    new-instance v1, Lcom/baidu/platform/comapi/map/ItsMapObj;

    invoke-direct {v1}, Lcom/baidu/platform/comapi/map/ItsMapObj;-><init>()V

    .line 1103
    iput-object v13, v1, Lcom/baidu/platform/comapi/map/ItsMapObj;->baseMapObj:Lcom/baidu/platform/comapi/map/MapObj;

    const-string v6, "iest"

    .line 1104
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/baidu/platform/comapi/map/ItsMapObj;->tTrafficStart:J

    const-string v6, "ieend"

    .line 1105
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/baidu/platform/comapi/map/ItsMapObj;->tTrafficEnd:J

    const-string v6, "iedetail"

    .line 1106
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/baidu/platform/comapi/map/ItsMapObj;->strTrafficDetail:Ljava/lang/String;

    if-eqz v4, :cond_3f

    .line 1108
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3f
    move-object/from16 v9, v17

    move-object/from16 v7, v18

    move-object/from16 v1, v19

    :goto_20
    move-object/from16 v6, v20

    :goto_21
    move-object/from16 v8, v21

    goto/16 :goto_2a

    :cond_40
    const/4 v1, 0x3

    if-eq v3, v1, :cond_56

    const/16 v1, 0xd

    if-eq v3, v1, :cond_56

    const/16 v1, 0xe

    if-eq v3, v1, :cond_56

    const/16 v1, 0x10

    if-eq v3, v1, :cond_56

    const/16 v1, 0xf

    if-eq v3, v1, :cond_56

    const/4 v1, 0x4

    if-eq v3, v1, :cond_56

    const/16 v1, 0x67

    if-eq v3, v1, :cond_56

    const/16 v1, 0x19

    if-eq v3, v1, :cond_56

    const/16 v1, 0x1f

    if-eq v3, v1, :cond_56

    const/16 v1, 0x68

    if-eq v3, v1, :cond_56

    const/16 v1, 0x1388

    if-eq v3, v1, :cond_56

    const/16 v1, 0x1782

    if-eq v3, v1, :cond_56

    const/16 v1, 0x1783

    if-ne v3, v1, :cond_41

    move-object/from16 v9, v17

    move-object/from16 v7, v18

    move-object/from16 v1, v19

    move-object/from16 v6, v20

    move-object/from16 v8, v21

    goto/16 :goto_29

    :cond_41
    const/16 v1, 0x8

    if-eq v3, v1, :cond_54

    const/4 v1, 0x1

    if-eq v3, v1, :cond_54

    const/4 v1, 0x2

    if-ne v3, v1, :cond_42

    goto/16 :goto_27

    :cond_42
    const/4 v1, 0x6

    if-ne v3, v1, :cond_44

    move-object/from16 v1, v19

    if-eqz v1, :cond_43

    .line 1125
    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_43
    move-object/from16 v9, v17

    move-object/from16 v7, v18

    goto :goto_20

    :cond_44
    move-object/from16 v1, v19

    const/16 v6, 0x18

    if-ne v3, v6, :cond_46

    move-object/from16 v6, v20

    if-eqz v6, :cond_45

    .line 1129
    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_45
    move-object/from16 v9, v17

    move-object/from16 v7, v18

    goto :goto_21

    :cond_46
    move-object/from16 v6, v20

    const/16 v7, 0x4d2

    if-eq v3, v7, :cond_53

    const/16 v7, 0x4d4

    if-eq v3, v7, :cond_53

    const/16 v7, 0x7d0

    if-eq v3, v7, :cond_53

    const/16 v7, 0x7d1

    if-ne v3, v7, :cond_47

    goto/16 :goto_25

    :cond_47
    const/16 v7, 0x4d3

    if-ne v3, v7, :cond_4a

    .line 1136
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 1137
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    invoke-interface {v0, v13}, Lcom/baidu/platform/comapi/map/MapViewListener;->onClickStreetArrow(Lcom/baidu/platform/comapi/map/MapObj;)V

    :cond_48
    :goto_22
    move-object/from16 v7, v18

    :cond_49
    :goto_23
    move-object/from16 v8, v21

    goto/16 :goto_26

    :cond_4a
    const/16 v7, 0x7d2

    if-ne v3, v7, :cond_4b

    .line 1141
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 1142
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    invoke-interface {v0, v13}, Lcom/baidu/platform/comapi/map/MapViewListener;->onClickStreetSurface(Lcom/baidu/platform/comapi/map/MapObj;)V

    goto :goto_22

    :cond_4b
    const/16 v7, 0x4d7

    if-ne v3, v7, :cond_4d

    move-object/from16 v7, v18

    if-eqz v7, :cond_4c

    .line 1148
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1150
    :cond_4c
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 1151
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/baidu/platform/comapi/map/MapViewListener;->onClickedRouteLabelObj(Ljava/util/List;)V

    goto :goto_23

    :cond_4d
    move-object/from16 v7, v18

    const/16 v8, 0x1770

    if-ne v3, v8, :cond_4e

    .line 1155
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 1156
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v13, v2}, Lcom/baidu/platform/comapi/map/MapViewListener;->onClickedTrafficUgcEventMapObj(Lcom/baidu/platform/comapi/map/MapObj;Z)V

    goto :goto_23

    :cond_4e
    const/16 v8, 0x1b58

    if-ne v3, v8, :cond_4f

    move-object/from16 v8, v21

    if-eqz v8, :cond_55

    .line 1161
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_4f
    move-object/from16 v8, v21

    const/16 v9, 0x1772

    if-ne v3, v9, :cond_50

    .line 1164
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v9

    if-eqz v9, :cond_55

    .line 1165
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v9

    const-string v10, "bchecked"

    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-interface {v9, v13, v10}, Lcom/baidu/platform/comapi/map/MapViewListener;->onClickedTrafficUgcEventMapObj(Lcom/baidu/platform/comapi/map/MapObj;Z)V

    goto :goto_28

    :cond_50
    const v9, 0x1631d

    if-eq v3, v9, :cond_52

    const v9, 0x1631e

    if-ne v3, v9, :cond_51

    goto :goto_24

    .line 1172
    :cond_51
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 1168
    :cond_52
    :goto_24
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v9

    if-eqz v9, :cond_55

    .line 1169
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v9

    invoke-interface {v9, v3, v11}, Lcom/baidu/platform/comapi/map/MapViewListener;->onClickSdkMapObj(ILorg/json/JSONObject;)V

    goto :goto_28

    :cond_53
    :goto_25
    move-object/from16 v7, v18

    move-object/from16 v8, v21

    .line 1133
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    invoke-interface {v0, v13}, Lcom/baidu/platform/comapi/map/MapViewListener;->onClickedStreetIndoorPoi(Lcom/baidu/platform/comapi/map/MapObj;)V

    :goto_26
    move-object/from16 v9, v17

    goto :goto_2b

    :cond_54
    :goto_27
    move-object/from16 v7, v18

    move-object/from16 v1, v19

    move-object/from16 v6, v20

    move-object/from16 v8, v21

    if-eqz v7, :cond_55

    .line 1121
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_55
    :goto_28
    move-object/from16 v9, v17

    goto :goto_2a

    :cond_56
    move-object/from16 v7, v18

    move-object/from16 v1, v19

    move-object/from16 v6, v20

    move-object/from16 v8, v21

    move-object/from16 v9, v17

    :goto_29
    if-eqz v9, :cond_57

    .line 1117
    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_57
    :goto_2a
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v19, v1

    move-object/from16 v20, v6

    move-object/from16 v18, v7

    move-object/from16 v21, v8

    move-object/from16 v17, v9

    move-object v6, v12

    move-object/from16 v1, v24

    move-object/from16 v9, v25

    const/16 v7, 0x16

    const/4 v8, 0x4

    const/16 v12, 0x67

    const/16 v13, 0x19

    const/16 v15, 0x1f

    goto/16 :goto_b

    :cond_58
    move-object v12, v6

    move-object/from16 v9, v17

    move-object/from16 v7, v18

    move-object/from16 v1, v19

    move-object/from16 v8, v21

    :goto_2b
    move/from16 v0, v22

    const/4 v2, 0x1

    if-eq v3, v2, :cond_63

    const/4 v2, 0x2

    if-eq v3, v2, :cond_63

    const/4 v2, 0x3

    if-eq v3, v2, :cond_62

    const/4 v2, 0x4

    if-eq v3, v2, :cond_62

    const/4 v2, 0x6

    if-eq v3, v2, :cond_61

    const/16 v2, 0x8

    if-eq v3, v2, :cond_63

    const/16 v1, 0x19

    if-eq v3, v1, :cond_62

    const/16 v1, 0x1f

    if-eq v3, v1, :cond_62

    const/16 v1, 0x1388

    if-eq v3, v1, :cond_5f

    const/16 v1, 0x1b58

    if-eq v3, v1, :cond_5e

    const/16 v0, 0x16

    if-eq v3, v0, :cond_5d

    const/16 v0, 0x17

    if-eq v3, v0, :cond_5c

    const/16 v0, 0x67

    if-eq v3, v0, :cond_62

    const/16 v0, 0x68

    if-eq v3, v0, :cond_62

    const/16 v0, 0x1782

    if-eq v3, v0, :cond_5b

    const/16 v0, 0x1783

    if-eq v3, v0, :cond_5b

    const/16 v0, 0x17ac

    if-eq v3, v0, :cond_5a

    const/16 v0, 0x17ad

    if-eq v3, v0, :cond_5a

    packed-switch v3, :pswitch_data_0

    :cond_59
    :goto_2c
    const/4 v0, 0x1

    goto/16 :goto_2d

    .line 1240
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 1241
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    invoke-interface {v0, v12}, Lcom/baidu/platform/comapi/map/MapViewListener;->onClickedStreetPopup(Ljava/lang/String;)V

    goto :goto_2c

    .line 1183
    :cond_5a
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 1184
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/baidu/platform/comapi/map/MapViewListener;->onClickedMapObj(Ljava/util/List;)V

    goto :goto_2c

    .line 1251
    :cond_5b
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 1252
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    invoke-interface {v0, v9}, Lcom/baidu/platform/comapi/map/MapViewListener;->onClickedUniversalLayerPoiEventMapObj(Ljava/util/List;)V

    goto :goto_2c

    .line 1223
    :cond_5c
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 1224
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/baidu/platform/comapi/map/MapViewListener;->onClickedMapObj(Ljava/util/List;)V

    goto :goto_2c

    .line 1216
    :cond_5d
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 1218
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/baidu/platform/comapi/map/MapViewListener;->onClickedItsMapObj(Ljava/util/List;)V

    goto :goto_2c

    .line 1245
    :cond_5e
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 1246
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/baidu/platform/comapi/map/MapViewListener;->onClickedParticleEventMapObj(Ljava/util/List;)V

    goto :goto_2c

    .line 1206
    :cond_5f
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v1

    if-eqz v1, :cond_59

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_60

    .line 1208
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    invoke-interface {v0, v9}, Lcom/baidu/platform/comapi/map/MapViewListener;->onClickPolymericMapObj(Ljava/util/List;)V

    goto :goto_2c

    .line 1210
    :cond_60
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    invoke-interface {v0, v9}, Lcom/baidu/platform/comapi/map/MapViewListener;->onClickedPoiObj(Ljava/util/List;)V

    goto :goto_2c

    .line 1235
    :cond_61
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 1236
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/baidu/platform/comapi/map/MapViewListener;->onClickedMapObj(Ljava/util/List;)V

    goto :goto_2c

    .line 1199
    :cond_62
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 1200
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    invoke-interface {v0, v9}, Lcom/baidu/platform/comapi/map/MapViewListener;->onClickedPoiObj(Ljava/util/List;)V

    goto/16 :goto_2c

    .line 1230
    :cond_63
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 1231
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/baidu/platform/comapi/map/MapViewListener;->onClickedRouteObj(Ljava/util/List;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2c

    :goto_2d
    return v0

    :catch_0
    const/4 v0, 0x0

    :catch_1
    return v0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/baidu/platform/comapi/map/MapController;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapController;->Q:Z

    return p1
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    .line 1457
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->I:Z

    const/4 v0, 0x0

    .line 1458
    iput v0, p0, Lcom/baidu/platform/comapi/map/MapController;->N:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 1459
    iput v0, p0, Lcom/baidu/platform/comapi/map/MapController;->L:F

    .line 1460
    iput v0, p0, Lcom/baidu/platform/comapi/map/MapController;->M:F

    return-void
.end method

.method private c(II)Z
    .locals 6

    .line 1670
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->i:Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1673
    :cond_0
    iget v0, p0, Lcom/baidu/platform/comapi/map/MapController;->nearlyRadius:I

    int-to-double v2, v0

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getZoomUnitsInMeter()D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-int v0, v2

    .line 1674
    iget-object v2, p0, Lcom/baidu/platform/comapi/map/MapController;->i:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/platform/comapi/map/MapViewInterface;

    .line 1676
    invoke-interface {v2}, Lcom/baidu/platform/comapi/map/MapViewInterface;->getBmlayers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    if-ltz v3, :cond_2

    .line 1677
    invoke-interface {v2}, Lcom/baidu/platform/comapi/map/MapViewInterface;->getBmlayers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    .line 1679
    invoke-virtual {v5, p1, p2, v0}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->a(III)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method static synthetic c(Lcom/baidu/platform/comapi/map/MapController;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/baidu/platform/comapi/map/MapController;->P:Z

    return p0
.end method

.method static synthetic c(Lcom/baidu/platform/comapi/map/MapController;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapController;->D:Z

    return p1
.end method

.method private d()V
    .locals 2

    .line 2896
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->v:Landroid/os/Handler;

    const/16 v1, 0xfa0

    invoke-static {v1, v0}, Lcom/baidu/platform/comjni/engine/MessageProxy;->registerMessageHandler(ILandroid/os/Handler;)V

    .line 2897
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->v:Landroid/os/Handler;

    const/16 v1, 0x207

    invoke-static {v1, v0}, Lcom/baidu/platform/comjni/engine/MessageProxy;->registerMessageHandler(ILandroid/os/Handler;)V

    .line 2898
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->v:Landroid/os/Handler;

    const/16 v1, 0x27

    invoke-static {v1, v0}, Lcom/baidu/platform/comjni/engine/MessageProxy;->registerMessageHandler(ILandroid/os/Handler;)V

    .line 2899
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->v:Landroid/os/Handler;

    const/16 v1, 0x200

    invoke-static {v1, v0}, Lcom/baidu/platform/comjni/engine/MessageProxy;->registerMessageHandler(ILandroid/os/Handler;)V

    .line 2900
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->v:Landroid/os/Handler;

    const v1, 0xff11

    invoke-static {v1, v0}, Lcom/baidu/platform/comjni/engine/MessageProxy;->registerMessageHandler(ILandroid/os/Handler;)V

    .line 2901
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->v:Landroid/os/Handler;

    const v1, 0xff12

    invoke-static {v1, v0}, Lcom/baidu/platform/comjni/engine/MessageProxy;->registerMessageHandler(ILandroid/os/Handler;)V

    .line 2902
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->v:Landroid/os/Handler;

    const/16 v1, 0x32

    invoke-static {v1, v0}, Lcom/baidu/platform/comjni/engine/MessageProxy;->registerMessageHandler(ILandroid/os/Handler;)V

    .line 2903
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->v:Landroid/os/Handler;

    const/16 v1, 0x33

    invoke-static {v1, v0}, Lcom/baidu/platform/comjni/engine/MessageProxy;->registerMessageHandler(ILandroid/os/Handler;)V

    .line 2904
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->v:Landroid/os/Handler;

    const v1, 0xff15

    invoke-static {v1, v0}, Lcom/baidu/platform/comjni/engine/MessageProxy;->registerMessageHandler(ILandroid/os/Handler;)V

    .line 2905
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->v:Landroid/os/Handler;

    const/16 v1, 0x29

    invoke-static {v1, v0}, Lcom/baidu/platform/comjni/engine/MessageProxy;->registerMessageHandler(ILandroid/os/Handler;)V

    .line 2906
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->v:Landroid/os/Handler;

    const/16 v1, 0x822

    invoke-static {v1, v0}, Lcom/baidu/platform/comjni/engine/MessageProxy;->registerMessageHandler(ILandroid/os/Handler;)V

    return-void
.end method

.method private d(II)Z
    .locals 8

    .line 1788
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1791
    :cond_0
    iget-object v2, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const-wide/16 v3, -0x1

    iget v7, p0, Lcom/baidu/platform/comapi/map/MapController;->nearlyRadius:I

    move v5, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetNearlyObjID(JIII)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const-string v3, ""

    .line 1794
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1796
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "px"

    .line 1797
    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "py"

    .line 1798
    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v2, v3

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1800
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v3, v2

    .line 1804
    :goto_1
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    if-eqz p1, :cond_6

    .line 1805
    :goto_2
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_6

    .line 1806
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/platform/comapi/map/al;

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    .line 1809
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/baidu/platform/comapi/map/al;->a(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1815
    :cond_2
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 1816
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapView()Lcom/baidu/platform/comapi/map/MapViewInterface;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapView()Lcom/baidu/platform/comapi/map/MapViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/MapViewInterface;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_5

    .line 1819
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapView()Lcom/baidu/platform/comapi/map/MapViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/MapViewInterface;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/baidu/platform/comapi/map/Projection;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p1

    .line 1820
    :goto_3
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v1, p2, :cond_6

    .line 1821
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/baidu/platform/comapi/map/al;

    if-nez p2, :cond_4

    goto :goto_4

    .line 1827
    :cond_4
    invoke-interface {p2, p1}, Lcom/baidu/platform/comapi/map/al;->a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    :goto_5
    return v1

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic d(Lcom/baidu/platform/comapi/map/MapController;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/baidu/platform/comapi/map/MapController;->Q:Z

    return p0
.end method

.method static synthetic e(Lcom/baidu/platform/comapi/map/MapController;)Lcom/baidu/platform/comapi/map/MapController$MapFirstFrameCallback;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/baidu/platform/comapi/map/MapController;->r:Lcom/baidu/platform/comapi/map/MapController$MapFirstFrameCallback;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 2910
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->v:Landroid/os/Handler;

    const/16 v1, 0xfa0

    invoke-static {v1, v0}, Lcom/baidu/platform/comjni/engine/MessageProxy;->unRegisterMessageHandler(ILandroid/os/Handler;)V

    .line 2911
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->v:Landroid/os/Handler;

    const/16 v1, 0x207

    invoke-static {v1, v0}, Lcom/baidu/platform/comjni/engine/MessageProxy;->unRegisterMessageHandler(ILandroid/os/Handler;)V

    .line 2912
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->v:Landroid/os/Handler;

    const/16 v1, 0x27

    invoke-static {v1, v0}, Lcom/baidu/platform/comjni/engine/MessageProxy;->unRegisterMessageHandler(ILandroid/os/Handler;)V

    .line 2913
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->v:Landroid/os/Handler;

    const/16 v1, 0x200

    invoke-static {v1, v0}, Lcom/baidu/platform/comjni/engine/MessageProxy;->unRegisterMessageHandler(ILandroid/os/Handler;)V

    .line 2914
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->v:Landroid/os/Handler;

    const v1, 0xff11

    invoke-static {v1, v0}, Lcom/baidu/platform/comjni/engine/MessageProxy;->unRegisterMessageHandler(ILandroid/os/Handler;)V

    .line 2915
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->v:Landroid/os/Handler;

    const v1, 0xff12

    invoke-static {v1, v0}, Lcom/baidu/platform/comjni/engine/MessageProxy;->unRegisterMessageHandler(ILandroid/os/Handler;)V

    .line 2916
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->v:Landroid/os/Handler;

    const/16 v1, 0x32

    invoke-static {v1, v0}, Lcom/baidu/platform/comjni/engine/MessageProxy;->unRegisterMessageHandler(ILandroid/os/Handler;)V

    .line 2917
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->v:Landroid/os/Handler;

    const/16 v1, 0x33

    invoke-static {v1, v0}, Lcom/baidu/platform/comjni/engine/MessageProxy;->unRegisterMessageHandler(ILandroid/os/Handler;)V

    .line 2918
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->v:Landroid/os/Handler;

    const v1, 0xff15

    invoke-static {v1, v0}, Lcom/baidu/platform/comjni/engine/MessageProxy;->unRegisterMessageHandler(ILandroid/os/Handler;)V

    .line 2919
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->v:Landroid/os/Handler;

    const/16 v1, 0x29

    invoke-static {v1, v0}, Lcom/baidu/platform/comjni/engine/MessageProxy;->unRegisterMessageHandler(ILandroid/os/Handler;)V

    .line 2920
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->v:Landroid/os/Handler;

    const/16 v1, 0x822

    invoke-static {v1, v0}, Lcom/baidu/platform/comjni/engine/MessageProxy;->unRegisterMessageHandler(ILandroid/os/Handler;)V

    return-void
.end method

.method private e(II)Z
    .locals 30

    move-object/from16 v1, p0

    const-string/jumbo v2, "z"

    const-string v3, "dis"

    const-string v4, "poiindoorid"

    const-string v5, "poiname"

    const-string v6, "of"

    const-string/jumbo v7, "visible"

    const-string v8, "obj"

    const-string v9, "pty"

    const-string v10, "ts"

    const-string v11, "ptx"

    const-string v12, "geo"

    const-string v13, "index"

    const-string v14, "in"

    const-string v15, "ty"

    move-object/from16 v16, v2

    const-string/jumbo v2, "y"

    move-object/from16 v17, v2

    const-string/jumbo v2, "x"

    move-object/from16 v18, v2

    const-string v2, "ud"

    .line 1838
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    move-object/from16 v19, v3

    const/4 v3, 0x0

    if-nez v0, :cond_0

    return v3

    .line 1840
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    .line 1843
    :cond_1
    iget v0, v1, Lcom/baidu/platform/comapi/map/MapController;->nearlyRadius:I

    move-object/from16 v20, v4

    int-to-double v3, v0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getZoomUnitsInMeter()D

    move-result-wide v21

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v21

    double-to-int v0, v3

    .line 1844
    iget-object v3, v1, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const-wide/16 v22, -0x1

    move-object/from16 v21, v3

    move/from16 v24, p1

    move/from16 v25, p2

    move/from16 v26, v0

    invoke-virtual/range {v21 .. v26}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetNearlyObjID(JIII)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v3, 0x0

    return v3

    .line 1851
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1856
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "dataset"

    .line 1857
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    .line 1858
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1859
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v4, 0x1b58

    if-ne v0, v4, :cond_23

    .line 1862
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1863
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v1, v0, :cond_22

    const/16 v21, 0x0

    .line 1866
    :try_start_1
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1868
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object/from16 v0, v21

    :goto_1
    if-nez v0, :cond_3

    move/from16 v23, v1

    move-object/from16 p1, v3

    move-object v1, v4

    move-object/from16 v22, v12

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    move-object/from16 v21, v15

    move-object/from16 v13, v16

    move-object/from16 v12, v17

    move-object/from16 v4, v19

    move-object v3, v2

    :goto_2
    move-object/from16 v16, v5

    move-object/from16 v5, v18

    goto/16 :goto_12

    :cond_3
    move-object/from16 p1, v3

    .line 1876
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v21, v15

    const/16 v15, 0x1a

    if-ne v3, v15, :cond_4

    move/from16 v23, v1

    move-object v3, v2

    move-object v1, v4

    move-object/from16 v22, v12

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    move-object/from16 v13, v16

    move-object/from16 v12, v17

    move-object/from16 v4, v19

    goto :goto_2

    .line 1881
    :cond_4
    new-instance v15, Lcom/baidu/platform/comapi/map/MapObj;

    invoke-direct {v15}, Lcom/baidu/platform/comapi/map/MapObj;-><init>()V

    .line 1883
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 v23, v1

    const-string v1, ""

    if-eqz v22, :cond_5

    move-object/from16 p2, v4

    .line 1884
    :try_start_3
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v15, Lcom/baidu/platform/comapi/map/MapObj;->strUid:Ljava/lang/String;

    goto :goto_3

    :cond_5
    move-object/from16 p2, v4

    .line 1886
    iput-object v1, v15, Lcom/baidu/platform/comapi/map/MapObj;->strUid:Ljava/lang/String;

    :goto_3
    const-string v4, "tx"

    .line 1888
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v15, Lcom/baidu/platform/comapi/map/MapObj;->strText:Ljava/lang/String;

    .line 1889
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1890
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v15, Lcom/baidu/platform/comapi/map/MapObj;->nIndex:I

    goto :goto_4

    .line 1891
    :cond_6
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1892
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v15, Lcom/baidu/platform/comapi/map/MapObj;->nIndex:I

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    .line 1894
    iput v4, v15, Lcom/baidu/platform/comapi/map/MapObj;->nIndex:I

    .line 1897
    :goto_4
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1898
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1899
    invoke-static {v4}, Lcom/baidu/platform/comapi/location/CoordinateUtil;->complexPtToPoint(Ljava/lang/String;)Lcom/baidu/platform/comapi/basestruct/Point;

    move-result-object v4

    move-object/from16 v22, v12

    .line 1900
    iget-object v12, v15, Lcom/baidu/platform/comapi/map/MapObj;->geoPt:Lcom/baidu/platform/comapi/basestruct/Point;

    const-wide/16 v24, 0x0

    if-nez v4, :cond_8

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    move-wide/from16 v13, v24

    goto :goto_5

    :cond_8
    move-object/from16 v26, v13

    invoke-virtual {v4}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntX()I

    move-result v13

    move-object/from16 v27, v14

    int-to-double v13, v13

    :goto_5
    if-nez v4, :cond_9

    move-wide/from16 v28, v24

    move-object/from16 v25, v1

    move-object/from16 v24, v2

    move-wide/from16 v1, v28

    goto :goto_6

    :cond_9
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntY()I

    move-result v4

    move-object/from16 v25, v1

    move-object/from16 v24, v2

    int-to-double v1, v4

    :goto_6
    invoke-virtual {v12, v13, v14, v1, v2}, Lcom/baidu/platform/comapi/basestruct/Point;->setTo(DD)V

    goto :goto_7

    :cond_a
    move-object/from16 v25, v1

    move-object/from16 v24, v2

    move-object/from16 v22, v12

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    .line 1901
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1902
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1903
    iget-object v1, v15, Lcom/baidu/platform/comapi/map/MapObj;->geoPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    double-to-int v2, v12

    int-to-double v12, v2

    move-object v2, v5

    .line 1904
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-double v4, v4

    .line 1903
    invoke-virtual {v1, v12, v13, v4, v5}, Lcom/baidu/platform/comapi/basestruct/Point;->setTo(DD)V

    goto :goto_8

    :cond_b
    :goto_7
    move-object v2, v5

    .line 1906
    :goto_8
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1907
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v15, Lcom/baidu/platform/comapi/map/MapObj;->sltime:I

    .line 1909
    :cond_c
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1910
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v15, Lcom/baidu/platform/comapi/map/MapObj;->slobj:I

    .line 1913
    :cond_d
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1914
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v15, Lcom/baidu/platform/comapi/map/MapObj;->slvisi:I

    .line 1916
    :cond_e
    iput v3, v15, Lcom/baidu/platform/comapi/map/MapObj;->nType:I

    .line 1917
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1918
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v15, Lcom/baidu/platform/comapi/map/MapObj;->offset:I

    .line 1920
    :cond_f
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1921
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/baidu/platform/comapi/map/MapObj;->ssName:Ljava/lang/String;

    :cond_10
    move-object/from16 v1, v20

    .line 1923
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1924
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/baidu/platform/comapi/map/MapObj;->ssIndoorId:Ljava/lang/String;

    :cond_11
    move-object/from16 v3, v24

    .line 1926
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1927
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v15, Lcom/baidu/platform/comapi/map/MapObj;->ssPoiUid:Ljava/lang/String;

    :cond_12
    move-object/from16 v4, v19

    .line 1929
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1930
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v15, Lcom/baidu/platform/comapi/map/MapObj;->offset:I

    :cond_13
    move-object/from16 v5, v18

    .line 1932
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 1933
    iget-object v12, v15, Lcom/baidu/platform/comapi/map/MapObj;->geoPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/baidu/platform/comapi/basestruct/Point;->setIntX(I)V

    .line 1934
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    iput-wide v12, v15, Lcom/baidu/platform/comapi/map/MapObj;->streetArrowCenterX:D

    :cond_14
    move-object/from16 v12, v17

    .line 1937
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 1938
    iget-object v13, v15, Lcom/baidu/platform/comapi/map/MapObj;->geoPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/baidu/platform/comapi/basestruct/Point;->setIntY(I)V

    .line 1939
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v13

    iput-wide v13, v15, Lcom/baidu/platform/comapi/map/MapObj;->streetArrowCenterY:D

    :cond_15
    move-object/from16 v13, v16

    .line 1942
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 1943
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v15, Lcom/baidu/platform/comapi/map/MapObj;->ssZ:I

    :cond_16
    const-string v14, "rotation"

    .line 1945
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_17

    const-string v14, "rotation"

    move-object/from16 v20, v1

    move-object/from16 v16, v2

    .line 1946
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v15, Lcom/baidu/platform/comapi/map/MapObj;->ssRotation:D

    goto :goto_9

    :cond_17
    move-object/from16 v20, v1

    move-object/from16 v16, v2

    :goto_9
    const-string v1, "pid"

    .line 1948
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "pid"

    .line 1949
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/baidu/platform/comapi/map/MapObj;->ssPanoId:Ljava/lang/String;

    :cond_18
    const-string v1, "customdata"

    .line 1951
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "customdata"

    .line 1952
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/baidu/platform/comapi/map/MapObj;->ssData:Ljava/lang/String;

    :cond_19
    const-string v1, "src"

    .line 1954
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1a

    const-string v1, "src"

    .line 1955
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v15, Lcom/baidu/platform/comapi/map/MapObj;->dynamicSrc:I

    goto :goto_a

    .line 1957
    :cond_1a
    iput v2, v15, Lcom/baidu/platform/comapi/map/MapObj;->dynamicSrc:I

    :goto_a
    const-string v1, "ad"

    .line 1960
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "ad"

    .line 1961
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v15, Lcom/baidu/platform/comapi/map/MapObj;->ad:I

    goto :goto_b

    .line 1963
    :cond_1b
    iput v2, v15, Lcom/baidu/platform/comapi/map/MapObj;->ad:I

    :goto_b
    const-string v1, "ad_style"

    .line 1966
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "ad_style"

    .line 1967
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v15, Lcom/baidu/platform/comapi/map/MapObj;->adstyle:I

    goto :goto_c

    .line 1969
    :cond_1c
    iput v2, v15, Lcom/baidu/platform/comapi/map/MapObj;->adstyle:I

    :goto_c
    const-string v1, "qid"

    .line 1972
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "qid"

    .line 1973
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/baidu/platform/comapi/map/MapObj;->qid:Ljava/lang/String;

    move-object/from16 v1, v25

    goto :goto_d

    :cond_1d
    move-object/from16 v1, v25

    .line 1975
    iput-object v1, v15, Lcom/baidu/platform/comapi/map/MapObj;->qid:Ljava/lang/String;

    :goto_d
    const-string v14, "puid"

    .line 1978
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1e

    const-string v14, "puid"

    .line 1979
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v15, Lcom/baidu/platform/comapi/map/MapObj;->puid:Ljava/lang/String;

    goto :goto_e

    .line 1981
    :cond_1e
    iput-object v1, v15, Lcom/baidu/platform/comapi/map/MapObj;->puid:Ljava/lang/String;

    :goto_e
    const-string v14, "ad_log"

    .line 1984
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1f

    const-string v14, "ad_log"

    .line 1985
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v15, Lcom/baidu/platform/comapi/map/MapObj;->adLog:Ljava/lang/String;

    goto :goto_f

    .line 1987
    :cond_1f
    iput-object v1, v15, Lcom/baidu/platform/comapi/map/MapObj;->adLog:Ljava/lang/String;

    :goto_f
    const-string v14, "url"

    .line 1990
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_20

    const-string v1, "url"

    .line 1991
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/baidu/platform/comapi/map/MapObj;->url:Ljava/lang/String;

    goto :goto_10

    .line 1993
    :cond_20
    iput-object v1, v15, Lcom/baidu/platform/comapi/map/MapObj;->url:Ljava/lang/String;

    :goto_10
    const-string v1, "level"

    .line 1995
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "level"

    .line 1996
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v15, Lcom/baidu/platform/comapi/map/MapObj;->level:I

    goto :goto_11

    .line 1998
    :cond_21
    iput v2, v15, Lcom/baidu/platform/comapi/map/MapObj;->level:I

    :goto_11
    move-object/from16 v1, p2

    .line 2000
    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_12
    add-int/lit8 v0, v23, 0x1

    move-object v2, v3

    move-object/from16 v19, v4

    move-object/from16 v18, v5

    move-object/from16 v17, v12

    move-object/from16 v5, v16

    move-object/from16 v15, v21

    move-object/from16 v12, v22

    move-object/from16 v14, v27

    move-object/from16 v3, p1

    move-object v4, v1

    move-object/from16 v16, v13

    move-object/from16 v13, v26

    move v1, v0

    goto/16 :goto_0

    :cond_22
    move-object v1, v4

    .line 2003
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/baidu/platform/comapi/map/MapViewListener;->onClickedParticleEventMapObj(Ljava/util/List;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v0, 0x1

    return v0

    :catch_1
    :cond_23
    const/4 v1, 0x0

    return v1
.end method

.method static synthetic f(Lcom/baidu/platform/comapi/map/MapController;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/baidu/platform/comapi/map/MapController;->x:I

    return p0
.end method

.method static synthetic g(Lcom/baidu/platform/comapi/map/MapController;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/baidu/platform/comapi/map/MapController;->w:I

    return p0
.end method

.method public static getScaleDis(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x2

    goto :goto_0

    :pswitch_1
    const/4 p0, 0x5

    goto :goto_0

    :pswitch_2
    const/16 p0, 0xa

    goto :goto_0

    :pswitch_3
    const/16 p0, 0x14

    goto :goto_0

    :pswitch_4
    const/16 p0, 0x32

    goto :goto_0

    :pswitch_5
    const/16 p0, 0x64

    goto :goto_0

    :pswitch_6
    const/16 p0, 0xc8

    goto :goto_0

    :pswitch_7
    const/16 p0, 0x1f4

    goto :goto_0

    :pswitch_8
    const/16 p0, 0x3e8

    goto :goto_0

    :pswitch_9
    const/16 p0, 0x7d0

    goto :goto_0

    :pswitch_a
    const/16 p0, 0x1388

    goto :goto_0

    :pswitch_b
    const/16 p0, 0x2710

    goto :goto_0

    :pswitch_c
    const/16 p0, 0x4e20

    goto :goto_0

    :pswitch_d
    const/16 p0, 0x61a8

    goto :goto_0

    :pswitch_e
    const p0, 0xc350

    goto :goto_0

    :pswitch_f
    const p0, 0x186a0

    goto :goto_0

    :pswitch_10
    const p0, 0x30d40

    goto :goto_0

    :pswitch_11
    const p0, 0x7a120

    goto :goto_0

    :pswitch_12
    const p0, 0xf4240

    goto :goto_0

    :pswitch_13
    const p0, 0x1e8480

    goto :goto_0

    :pswitch_14
    const p0, 0x4c4b40

    goto :goto_0

    :pswitch_15
    const p0, 0x989680

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic h(Lcom/baidu/platform/comapi/map/MapController;)Landroid/os/Handler;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/baidu/platform/comapi/map/MapController;->Z:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public GetFZoomToBoundF(Landroid/os/Bundle;Landroid/os/Bundle;)F
    .locals 1

    .line 3461
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3464
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetFZoomToBoundF(Landroid/os/Bundle;Landroid/os/Bundle;)F

    move-result p1

    return p1
.end method

.method public MapMsgProc(III)I
    .locals 14

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1280
    invoke-virtual/range {v0 .. v13}, Lcom/baidu/platform/comapi/map/MapController;->MapMsgProc(IIIIIDDDD)I

    move-result v0

    return v0
.end method

.method public MapMsgProc(IIIIIDDDD)I
    .locals 16

    .line 1285
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    move-object/from16 v0, p0

    .line 1288
    iget-wide v1, v0, Lcom/baidu/platform/comapi/map/MapController;->u:J

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    invoke-static/range {v1 .. v15}, Lcom/baidu/platform/comapi/map/MapController;->MapProc(JIIIIIDDDD)I

    move-result v1

    return v1
.end method

.method public SetStyleMode(I)V
    .locals 0

    .line 3480
    invoke-virtual {p0, p1}, Lcom/baidu/platform/comapi/map/MapController;->setMapScene(I)V

    return-void
.end method

.method a(II)V
    .locals 1

    .line 808
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->MoveToScrPoint(II)V

    return-void
.end method

.method public addOneOverlayItem(Landroid/os/Bundle;)V
    .locals 1

    .line 3898
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->addOneOverlayItem(Landroid/os/Bundle;)V

    return-void
.end method

.method public addStreetCustomMarker(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 3685
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3688
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->AddStreetCustomMarker(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public animateTo(Lcom/baidu/platform/comapi/basestruct/GeoPoint;I)V
    .locals 3

    .line 1271
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1273
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 1274
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtX:D

    .line 1275
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtY:D

    .line 1276
    invoke-virtual {p0, v0, p2}, Lcom/baidu/platform/comapi/map/MapController;->setMapStatusWithAnimation(Lcom/baidu/platform/comapi/map/MapStatus;I)V

    return-void
.end method

.method public cleanCache(Lcom/baidu/platform/comapi/map/MapController$MapLayerType;)Z
    .locals 1

    .line 2993
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_0

    .line 2994
    invoke-static {p1}, Lcom/baidu/platform/comapi/map/MapController$MapLayerType;->a(Lcom/baidu/platform/comapi/map/MapController$MapLayerType;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->CleanCache(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public clearUniversalLayer()V
    .locals 1

    .line 3916
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3917
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->clearUniversalLayer()V

    :cond_0
    return-void
.end method

.method public createByDuplicateAppBaseMap(J)Z
    .locals 2

    .line 779
    new-instance v0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-direct {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    .line 780
    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->CreateByDuplicate(J)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 781
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapController;->aa:Z

    .line 782
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/MapController;->u:J

    .line 783
    sget-object p2, Lcom/baidu/platform/comapi/map/MapController;->W:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 784
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return p1

    :cond_1
    const/4 p1, 0x0

    .line 788
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const-wide/16 p1, 0x0

    .line 789
    iput-wide p1, p0, Lcom/baidu/platform/comapi/map/MapController;->u:J

    const/4 p1, 0x0

    return p1
.end method

.method public enablePOIAnimation(Z)V
    .locals 1

    .line 3947
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3948
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->enablePOIAnimation(Z)V

    :cond_0
    return-void
.end method

.method public forceSetMapScene(I)V
    .locals 1

    .line 3834
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapController;->o:I

    .line 3835
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3836
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget v0, p0, Lcom/baidu/platform/comapi/map/MapController;->o:I

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->setMapScene(I)V

    :cond_0
    return-void
.end method

.method public forceSetMapThemeScene(IILandroid/os/Bundle;)Z
    .locals 1

    .line 3815
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapController;->p:I

    .line 3816
    iput p2, p0, Lcom/baidu/platform/comapi/map/MapController;->o:I

    .line 3817
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3820
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->setMapThemeScene(IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public getAdapterZoomUnitsEx()F
    .locals 1

    .line 3468
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3471
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetAdapterZoomUnitsEx()F

    move-result v0

    return v0
.end method

.method public getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    return-object v0
.end method

.method public getCacheSize(Lcom/baidu/platform/comapi/map/MapController$MapLayerType;)I
    .locals 1

    .line 2980
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2983
    :cond_0
    invoke-static {p1}, Lcom/baidu/platform/comapi/map/MapController$MapLayerType;->a(Lcom/baidu/platform/comapi/map/MapController$MapLayerType;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetCacheSize(I)I

    move-result p1

    return p1
.end method

.method public getCaptureMapListener()Lcom/baidu/platform/comapi/map/CaptureMapListener;
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->c:Lcom/baidu/platform/comapi/map/CaptureMapListener;

    return-object v0
.end method

.method public getCityInfoByID(I)Ljava/lang/String;
    .locals 1

    .line 3003
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_0

    .line 3004
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetCityInfoByID(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurrentMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;
    .locals 1

    const/4 v0, 0x0

    .line 2624
    invoke-direct {p0, v0}, Lcom/baidu/platform/comapi/map/MapController;->a(Z)Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentZoomLevel()F
    .locals 3

    .line 2702
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/high16 v1, 0x40800000    # 4.0f

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    .line 2705
    invoke-virtual {v0, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetMapStatus(Z)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-string v1, "level"

    .line 2709
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getFocusedBaseIndoorMapInfo()Lcom/baidu/platform/comapi/map/IndoorMapInfo;
    .locals 11

    .line 3570
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3573
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetFocusedBaseIndoorMapInfo()Ljava/lang/String;

    move-result-object v0

    .line 3574
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3576
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "focusindoorid"

    .line 3577
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "curfloor"

    .line 3578
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "idrtype"

    .line 3579
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const-string v0, "floorlist"

    .line 3580
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 3583
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    .line 3584
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    .line 3585
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 3586
    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 3588
    :cond_1
    invoke-interface {v7, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object v6, v1

    :goto_1
    const-string v0, "floorattribute"

    .line 3591
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3594
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v7, v7, [I

    .line 3595
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_4

    .line 3596
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optInt(I)I

    move-result v9

    aput v9, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move-object v7, v1

    :cond_4
    const-string v0, "idrguide"

    .line 3599
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    const-string v0, "idrsearch"

    .line 3600
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3601
    new-instance v0, Lcom/baidu/platform/comapi/map/IndoorMapInfo;

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/baidu/platform/comapi/map/IndoorMapInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IIILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_5
    return-object v1
.end method

.method public getGestureMonitor()Lcom/baidu/platform/comapi/map/b/d;
    .locals 1

    .line 2324
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->l:Lcom/baidu/platform/comapi/map/b/d;

    if-nez v0, :cond_0

    .line 2325
    new-instance v0, Lcom/baidu/platform/comapi/map/b/d;

    invoke-direct {v0, p0}, Lcom/baidu/platform/comapi/map/b/d;-><init>(Lcom/baidu/platform/comapi/map/MapController;)V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->l:Lcom/baidu/platform/comapi/map/b/d;

    .line 2327
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->l:Lcom/baidu/platform/comapi/map/b/d;

    return-object v0
.end method

.method public getGestureOptInfoForLog()Landroid/os/Bundle;
    .locals 10

    .line 3971
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->G:Lcom/baidu/platform/comapi/map/MapController$a;

    iget-boolean v0, v0, Lcom/baidu/platform/comapi/map/MapController$a;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3974
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 3975
    iget-object v2, p0, Lcom/baidu/platform/comapi/map/MapController;->G:Lcom/baidu/platform/comapi/map/MapController$a;

    iget-object v2, v2, Lcom/baidu/platform/comapi/map/MapController$a;->d:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntX()I

    move-result v2

    .line 3976
    iget-object v3, p0, Lcom/baidu/platform/comapi/map/MapController;->G:Lcom/baidu/platform/comapi/map/MapController$a;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/MapController$a;->d:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntY()I

    move-result v3

    mul-int v2, v2, v2

    mul-int v3, v3, v3

    add-int/2addr v2, v3

    int-to-double v2, v2

    .line 3977
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmpl-double v8, v2, v4

    if-lez v8, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 3981
    :goto_0
    iget-object v3, p0, Lcom/baidu/platform/comapi/map/MapController;->G:Lcom/baidu/platform/comapi/map/MapController$a;

    iget v3, v3, Lcom/baidu/platform/comapi/map/MapController$a;->b:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    iget v0, v0, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    iget-object v3, p0, Lcom/baidu/platform/comapi/map/MapController;->G:Lcom/baidu/platform/comapi/map/MapController$a;

    iget v3, v3, Lcom/baidu/platform/comapi/map/MapController$a;->b:F

    sub-float/2addr v0, v3

    .line 3982
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v3, v0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v3, v8

    if-ltz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-nez v2, :cond_3

    if-eqz v6, :cond_4

    .line 3986
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3987
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->G:Lcom/baidu/platform/comapi/map/MapController$a;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapController$a;->c:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitude()D

    move-result-wide v2

    const-string v0, "pre_x"

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 3988
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->G:Lcom/baidu/platform/comapi/map/MapController$a;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapController$a;->c:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitude()D

    move-result-wide v2

    const-string v0, "pre_y"

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 3989
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->G:Lcom/baidu/platform/comapi/map/MapController$a;

    iget v0, v0, Lcom/baidu/platform/comapi/map/MapController$a;->b:F

    const-string v2, "pre_level"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 3991
    :cond_4
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->G:Lcom/baidu/platform/comapi/map/MapController$a;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController$a;->a()V

    return-object v1
.end method

.method public getHideIndoorPopupListener()Lcom/baidu/platform/comapi/map/k;
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->d:Lcom/baidu/platform/comapi/map/k;

    return-object v0
.end method

.method public getIndoorMapListener()Lcom/baidu/platform/comapi/map/EngineMsgListener;
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->g:Lcom/baidu/platform/comapi/map/EngineMsgListener;

    return-object v0
.end method

.method public getListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/map/al;",
            ">;"
        }
    .end annotation

    .line 610
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method public getMapBarData()Z
    .locals 7

    .line 3393
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3396
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3397
    iget-object v2, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v2, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getMapBarData(Landroid/os/Bundle;)Z

    new-array v1, v1, [B

    const-string v2, "uid"

    .line 3402
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 3403
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    const-string v3, "searchbound"

    .line 3405
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3406
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v4

    :goto_1
    const-string v5, "curfloor"

    .line 3408
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3409
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_3
    const-string v5, "barinfo"

    .line 3411
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3412
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 3415
    :cond_4
    invoke-static {}, Lcom/baidu/platform/comapi/util/a;->a()Lcom/baidu/platform/comapi/util/a;

    move-result-object v0

    new-instance v5, Lcom/baidu/platform/comapi/map/b;

    invoke-direct {v5, v2, v3, v4, v1}, Lcom/baidu/platform/comapi/map/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v0, v5}, Lcom/baidu/platform/comapi/util/a;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getMapBarShowData()Z
    .locals 2

    .line 3420
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3423
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3424
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getMapBarData(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public getMapClickEnable()Z
    .locals 1

    .line 2352
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->C:Z

    return v0
.end method

.method public getMapControlMode()Lcom/baidu/platform/comapi/map/MapController$MapControlMode;
    .locals 1

    .line 2474
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->ac:Lcom/baidu/platform/comapi/map/MapController$MapControlMode;

    return-object v0
.end method

.method public getMapId()J
    .locals 2

    .line 718
    iget-wide v0, p0, Lcom/baidu/platform/comapi/map/MapController;->u:J

    return-wide v0
.end method

.method public getMapRenderModeChangeListener()Lcom/baidu/platform/comapi/map/MapRenderModeChangeListener;
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->f:Lcom/baidu/platform/comapi/map/MapRenderModeChangeListener;

    return-object v0
.end method

.method public getMapScene()I
    .locals 1

    .line 3841
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3844
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getMapScene()I

    move-result v0

    return v0
.end method

.method public getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;
    .locals 1

    const/4 v0, 0x1

    .line 2619
    invoke-direct {p0, v0}, Lcom/baidu/platform/comapi/map/MapController;->a(Z)Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    return-object v0
.end method

.method public getMapStatusInner()Lcom/baidu/mapsdkplatform/comapi/map/x;
    .locals 2

    .line 632
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetMapStatus()Landroid/os/Bundle;

    move-result-object v0

    .line 637
    new-instance v1, Lcom/baidu/mapsdkplatform/comapi/map/x;

    invoke-direct {v1}, Lcom/baidu/mapsdkplatform/comapi/map/x;-><init>()V

    .line 638
    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/x;->a(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public getMapTheme()I
    .locals 1

    .line 3848
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3851
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getMapTheme()I

    move-result v0

    return v0
.end method

.method public getMapView()Lcom/baidu/platform/comapi/map/MapViewInterface;
    .locals 1

    .line 1449
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->i:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 1450
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/MapViewInterface;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->b:Lcom/baidu/platform/comapi/map/MapViewListener;

    return-object v0
.end method

.method public getMapViewSurfaceListener()Lcom/baidu/platform/comapi/map/MapViewSurfaceListener;
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->h:Lcom/baidu/platform/comapi/map/MapViewSurfaceListener;

    return-object v0
.end method

.method public getNaviMapViewListener()Lcom/baidu/platform/comapi/map/NaviMapViewListener;
    .locals 1

    .line 1369
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->j:Lcom/baidu/platform/comapi/map/NaviMapViewListener;

    return-object v0
.end method

.method public getProjectionPt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3867
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3870
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getProjectionPt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScaleLevel(II)I
    .locals 1

    .line 3934
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3937
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getScaleLevel(II)I

    move-result p1

    return p1
.end method

.method public getSceneLayerScene()I
    .locals 1

    .line 3884
    iget v0, p0, Lcom/baidu/platform/comapi/map/MapController;->o:I

    return v0
.end method

.method public getSceneLayerTheme()I
    .locals 1

    .line 3888
    iget v0, p0, Lcom/baidu/platform/comapi/map/MapController;->p:I

    return v0
.end method

.method public getScreenHeight()I
    .locals 2

    .line 2366
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 2367
    iget-object v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->bottom:I

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v0, v0, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->top:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/baidu/platform/comapi/map/MapController;->x:I

    return v1
.end method

.method public getScreenWidth()I
    .locals 2

    .line 2360
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 2361
    iget-object v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->right:I

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v0, v0, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->left:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/baidu/platform/comapi/map/MapController;->w:I

    return v1
.end method

.method public getStreetArrowClickListener()Lcom/baidu/platform/comapi/map/an;
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->e:Lcom/baidu/platform/comapi/map/an;

    return-object v0
.end method

.method public getVMPMapCityCode()I
    .locals 3

    .line 3051
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_0

    .line 3052
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "querytype"

    const-string v2, "map"

    .line 3053
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3054
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetVMPMapCityInfo(Landroid/os/Bundle;)I

    const-string v1, "code"

    .line 3055
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVMPMapCityItsInfo()I
    .locals 3

    .line 3015
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_0

    .line 3016
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "querytype"

    const-string v2, "its"

    .line 3017
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3018
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetVMPMapCityInfo(Landroid/os/Bundle;)I

    const-string v1, "rst"

    .line 3019
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVMPMapCityLevel()I
    .locals 3

    .line 3041
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_0

    .line 3042
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "querytype"

    const-string v2, "map"

    .line 3043
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3044
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetVMPMapCityInfo(Landroid/os/Bundle;)I

    const-string v1, "level"

    .line 3045
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVMPMapCitySatInfo()I
    .locals 3

    .line 3031
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_0

    .line 3032
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "querytype"

    const-string v2, "sat"

    .line 3033
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3034
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetVMPMapCityInfo(Landroid/os/Bundle;)I

    const-string v1, "rst"

    .line 3035
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getZoomLevel()F
    .locals 2

    .line 2690
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/high16 v1, 0x40800000    # 4.0f

    if-nez v0, :cond_0

    return v1

    .line 2693
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetMapStatus()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-string v1, "level"

    .line 2697
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getZoomToBound(Landroid/os/Bundle;II)F
    .locals 1

    .line 3447
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3450
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetZoomToBound(Landroid/os/Bundle;II)F

    move-result p1

    return p1
.end method

.method public getZoomToBoundF(Landroid/os/Bundle;)F
    .locals 1

    .line 3454
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3457
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetZoomToBoundF(Landroid/os/Bundle;)F

    move-result p1

    return p1
.end method

.method public getZoomUnitsInMeter()D
    .locals 5

    .line 794
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 796
    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetMapStatus()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "adapterZoomUnits"

    .line 798
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const/high16 v2, 0x41900000    # 18.0f

    .line 804
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getZoomLevel()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public handleClick(Landroid/view/MotionEvent;)V
    .locals 2

    .line 2303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    or-int/2addr p1, v0

    const/16 v0, 0x5102

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/baidu/platform/comapi/map/MapController;->MapMsgProc(III)I

    return-void
.end method

.method public handleDoubleClickZoom(Landroid/view/MotionEvent;)V
    .locals 5

    .line 1465
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/platform/comapi/map/MapController;->O:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 1470
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->mapStatusChangeStart()V

    const/4 v0, 0x1

    .line 1471
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->mIsAnimating:Z

    .line 1474
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1475
    iget v0, p0, Lcom/baidu/platform/comapi/map/MapController;->M:F

    sub-float/2addr v0, p1

    const/16 v1, 0x2001

    const/4 v2, 0x3

    .line 1476
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getScreenHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41100000    # 9.0f

    div-float/2addr v3, v4

    div-float v3, v0, v3

    const v4, 0x461c4000    # 10000.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/baidu/platform/comapi/map/MapController;->MapMsgProc(III)I

    .line 1477
    iput v0, p0, Lcom/baidu/platform/comapi/map/MapController;->N:F

    .line 1478
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapController;->M:F

    .line 1479
    invoke-static {}, Lcom/baidu/platform/comapi/util/a;->a()Lcom/baidu/platform/comapi/util/a;

    move-result-object p1

    new-instance v0, Lcom/baidu/platform/comapi/map/a/d;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/map/a/d;-><init>()V

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/util/a;->a(Ljava/lang/Object;)V

    .line 1481
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->isNaviMode()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getNaviMapViewListener()Lcom/baidu/platform/comapi/map/NaviMapViewListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1482
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getNaviMapViewListener()Lcom/baidu/platform/comapi/map/NaviMapViewListener;

    move-result-object p1

    const/16 v0, 0x209

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/baidu/platform/comapi/map/NaviMapViewListener;->onAction(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public handleDoubleDownClick(Landroid/view/MotionEvent;)V
    .locals 2

    const/4 v0, 0x1

    .line 2013
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->I:Z

    .line 2014
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/baidu/platform/comapi/map/MapController;->L:F

    .line 2015
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/baidu/platform/comapi/map/MapController;->M:F

    .line 2016
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/MapController;->O:J

    .line 2017
    invoke-static {}, Lcom/baidu/platform/comapi/util/a;->a()Lcom/baidu/platform/comapi/util/a;

    move-result-object p1

    new-instance v0, Lcom/baidu/platform/comapi/map/a/d;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/map/a/d;-><init>()V

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/util/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public handleDoubleTouch(Landroid/view/MotionEvent;)V
    .locals 20

    move-object/from16 v14, p0

    .line 2022
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, v14, Lcom/baidu/platform/comapi/map/MapController;->O:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x96

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-void

    .line 2026
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->isNaviMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v14, Lcom/baidu/platform/comapi/map/MapController;->j:Lcom/baidu/platform/comapi/map/NaviMapViewListener;

    if-eqz v0, :cond_1

    const/16 v1, 0x201

    move-object/from16 v2, p1

    .line 2027
    invoke-interface {v0, v1, v2}, Lcom/baidu/platform/comapi/map/NaviMapViewListener;->onAction(ILjava/lang/Object;)V

    return-void

    :cond_1
    move-object/from16 v2, p1

    .line 2035
    iget-boolean v0, v14, Lcom/baidu/platform/comapi/map/MapController;->H:Z

    if-eqz v0, :cond_8

    .line 2039
    iget-object v0, v14, Lcom/baidu/platform/comapi/map/MapController;->i:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, v14, Lcom/baidu/platform/comapi/map/MapController;->i:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/MapViewInterface;

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/MapViewInterface;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_4

    .line 2043
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 2046
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v3, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v3, v3, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->left:I

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getScreenWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v1, v3

    const/high16 v3, -0x40800000    # -1.0f

    .line 2047
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v5, v5, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->top:I

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getScreenHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    sub-float/2addr v4, v5

    mul-float v4, v4, v3

    .line 2049
    sget-boolean v3, Lcom/baidu/platform/comapi/map/MapController;->isCompass:Z

    const/4 v5, 0x0

    if-nez v3, :cond_4

    iget-boolean v3, v14, Lcom/baidu/platform/comapi/map/MapController;->K:Z

    if-eqz v3, :cond_3

    goto :goto_0

    .line 2056
    :cond_3
    iget-object v0, v14, Lcom/baidu/platform/comapi/map/MapController;->i:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/MapViewInterface;

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/MapViewInterface;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-interface {v0, v3, v6}, Lcom/baidu/platform/comapi/map/Projection;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    goto :goto_1

    .line 2052
    :cond_4
    :goto_0
    iget-object v1, v14, Lcom/baidu/platform/comapi/map/MapController;->i:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/map/MapViewInterface;

    invoke-interface {v1}, Lcom/baidu/platform/comapi/map/MapViewInterface;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v1

    iget-object v3, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v3, v3, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->left:I

    .line 2053
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getScreenWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v0, v0, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->top:I

    .line 2054
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getScreenHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    .line 2052
    invoke-interface {v1, v3, v0}, Lcom/baidu/platform/comapi/map/Projection;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_1
    if-eqz v0, :cond_5

    .line 2059
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v5

    double-to-float v5, v5

    .line 2060
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v6

    double-to-float v3, v6

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    const/4 v6, 0x1

    .line 2063
    iput-boolean v6, v14, Lcom/baidu/platform/comapi/map/MapController;->P:Z

    .line 2066
    new-instance v6, Landroid/graphics/Point;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    const/4 v15, 0x0

    if-eqz v0, :cond_7

    .line 2069
    iget-object v7, v14, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    if-eqz v7, :cond_7

    const/4 v7, 0x0

    .line 2070
    :goto_3
    iget-object v8, v14, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_7

    .line 2071
    iget-object v8, v14, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/platform/comapi/map/al;

    if-eqz v8, :cond_6

    .line 2074
    invoke-interface {v8, v0}, Lcom/baidu/platform/comapi/map/al;->b(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)V

    .line 2076
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatusInner()Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object v9

    invoke-interface {v8, v6, v9}, Lcom/baidu/platform/comapi/map/al;->a(Landroid/graphics/Point;Lcom/baidu/mapsdkplatform/comapi/map/x;)Z

    move-result v8

    if-eqz v8, :cond_6

    return-void

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2084
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getGestureMonitor()Lcom/baidu/platform/comapi/map/b/d;

    move-result-object v0

    iget-object v6, v14, Lcom/baidu/platform/comapi/map/MapController;->i:Ljava/lang/ref/SoftReference;

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/platform/comapi/map/MapViewInterface;

    invoke-interface {v6}, Lcom/baidu/platform/comapi/map/MapViewInterface;->getZoomLevel()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    invoke-virtual {v0, v6}, Lcom/baidu/platform/comapi/map/b/d;->b(F)V

    .line 2086
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->mapStatusChangeStart()V

    const/16 v6, 0x2003

    .line 2088
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    or-int/2addr v2, v0

    iget v0, v14, Lcom/baidu/platform/comapi/map/MapController;->x:I

    div-int/lit8 v0, v0, 0x2

    shl-int/lit8 v0, v0, 0x10

    iget v7, v14, Lcom/baidu/platform/comapi/map/MapController;->w:I

    div-int/lit8 v7, v7, 0x2

    or-int/2addr v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    float-to-double v10, v5

    float-to-double v12, v3

    float-to-double v0, v1

    float-to-double v4, v4

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move v1, v6

    move v3, v7

    move-wide/from16 v18, v4

    move v4, v8

    move v5, v9

    move-wide v6, v10

    move-wide v8, v12

    move-wide/from16 v10, v16

    move-wide/from16 v12, v18

    invoke-virtual/range {v0 .. v13}, Lcom/baidu/platform/comapi/map/MapController;->MapMsgProc(IIIIIDDDD)I

    .line 2098
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/baidu/platform/comapi/map/MapController;->R:J

    const/4 v0, 0x0

    .line 2100
    invoke-virtual {v14, v15, v0}, Lcom/baidu/platform/comapi/map/MapController;->procGestureForLog(ZLcom/baidu/platform/comapi/basestruct/Point;)V

    nop

    :cond_8
    :goto_4
    return-void
.end method

.method public handleFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    .line 2226
    sget-boolean p1, Lcom/baidu/platform/comapi/map/MapController;->y:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2229
    :cond_0
    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapController;->V:Z

    if-nez p1, :cond_1

    return v0

    .line 2232
    :cond_1
    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapController;->n:Z

    if-nez p1, :cond_2

    return v0

    .line 2236
    :cond_2
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getDensityDPI()I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x439b0000    # 310.0f

    div-float/2addr p1, v1

    mul-float v1, p3, p3

    mul-float v2, p4, p4

    add-float/2addr v1, v2

    float-to-double v1, v1

    .line 2238
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    div-float/2addr v1, p1

    float-to-double v1, v1

    const-wide v3, 0x3ff4cccccccccccdL    # 1.3

    .line 2242
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-float p1, v1

    .line 2246
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapControlMode()Lcom/baidu/platform/comapi/map/MapController$MapControlMode;

    move-result-object v1

    sget-object v2, Lcom/baidu/platform/comapi/map/MapController$MapControlMode;->STREET:Lcom/baidu/platform/comapi/map/MapController$MapControlMode;

    if-eq v1, v2, :cond_3

    const/high16 v1, 0x43960000    # 300.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_3

    .line 2247
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->D:Z

    return v0

    :cond_3
    const/4 v1, 0x1

    .line 2250
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/MapController;->D:Z

    .line 2255
    iget-object v2, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 2256
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatusInner()Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object v2

    const/4 v3, 0x0

    .line 2257
    :goto_0
    iget-object v4, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 2258
    iget-object v4, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/platform/comapi/map/al;

    if-eqz v4, :cond_4

    .line 2261
    invoke-interface {v4, p2, p3, p4, v2}, Lcom/baidu/platform/comapi/map/al;->a(Landroid/view/MotionEvent;FFLcom/baidu/mapsdkplatform/comapi/map/x;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2262
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->Y:Z

    return v0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2269
    :cond_5
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getGestureMonitor()Lcom/baidu/platform/comapi/map/b/d;

    move-result-object p3

    invoke-virtual {p3}, Lcom/baidu/platform/comapi/map/b/d;->a()V

    .line 2272
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->mapStatusChangeStart()V

    const/16 p3, 0x22

    float-to-int p1, p1

    .line 2275
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p4

    float-to-int p4, p4

    shl-int/lit8 p4, p4, 0x10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    or-int/2addr p4, v2

    invoke-virtual {p0, p3, p1, p4}, Lcom/baidu/platform/comapi/map/MapController;->MapMsgProc(III)I

    .line 2276
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 2277
    invoke-static {}, Lcom/baidu/platform/comapi/util/a;->a()Lcom/baidu/platform/comapi/util/a;

    move-result-object p1

    new-instance p3, Lcom/baidu/platform/comapi/map/a/c;

    invoke-direct {p3}, Lcom/baidu/platform/comapi/map/a/c;-><init>()V

    invoke-virtual {p1, p3}, Lcom/baidu/platform/comapi/util/a;->a(Ljava/lang/Object;)V

    .line 2280
    :cond_6
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->Y:Z

    .line 2283
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    if-eqz p1, :cond_8

    .line 2284
    :goto_1
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_8

    .line 2285
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/platform/comapi/map/al;

    if-eqz p1, :cond_7

    .line 2288
    invoke-interface {p1, p2}, Lcom/baidu/platform/comapi/map/al;->a(Landroid/view/MotionEvent;)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    return v1
.end method

.method public handleKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1316
    invoke-static {p1}, Lcom/baidu/platform/comapi/map/MapController;->GetAdaptKeyCode(I)I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    const/4 v0, 0x1

    .line 1319
    invoke-virtual {p0, v0, p1, p2}, Lcom/baidu/platform/comapi/map/MapController;->MapMsgProc(III)I

    return v0
.end method

.method public handleLongClick(Landroid/view/MotionEvent;)V
    .locals 2

    .line 2298
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    or-int/2addr p1, v0

    const/16 v0, 0x5101

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/baidu/platform/comapi/map/MapController;->MapMsgProc(III)I

    return-void
.end method

.method public handleMapModeGet()I
    .locals 2

    const/16 v0, 0x1011

    const/4 v1, 0x0

    .line 2343
    invoke-virtual {p0, v0, v1, v1}, Lcom/baidu/platform/comapi/map/MapController;->MapMsgProc(III)I

    move-result v0

    return v0
.end method

.method public handlePopupClick(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public handleRightClick()V
    .locals 2

    const/16 v0, 0x5103

    const/4 v1, 0x0

    .line 2308
    invoke-virtual {p0, v0, v1, v1}, Lcom/baidu/platform/comapi/map/MapController;->MapMsgProc(III)I

    return-void
.end method

.method public handleStreetscapeDoubleTouch(Landroid/view/MotionEvent;)V
    .locals 17

    move-object/from16 v14, p0

    .line 2109
    iget-object v0, v14, Lcom/baidu/platform/comapi/map/MapController;->i:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v14, Lcom/baidu/platform/comapi/map/MapController;->i:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/MapViewInterface;

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/MapViewInterface;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2113
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 2114
    iget-object v1, v14, Lcom/baidu/platform/comapi/map/MapController;->i:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/map/MapViewInterface;

    invoke-interface {v1}, Lcom/baidu/platform/comapi/map/MapViewInterface;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v1

    iget-object v2, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v2, v2, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->left:I

    iget v3, v14, Lcom/baidu/platform/comapi/map/MapController;->w:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v0, v0, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->top:I

    iget v3, v14, Lcom/baidu/platform/comapi/map/MapController;->x:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    invoke-interface {v1, v2, v0}, Lcom/baidu/platform/comapi/map/Projection;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2118
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v1

    double-to-float v1, v1

    .line 2119
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v2

    double-to-float v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x2003

    .line 2122
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    shl-int/lit8 v3, v3, 0x10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    or-int/2addr v3, v4

    iget v4, v14, Lcom/baidu/platform/comapi/map/MapController;->x:I

    div-int/lit8 v4, v4, 0x2

    shl-int/lit8 v4, v4, 0x10

    iget v5, v14, Lcom/baidu/platform/comapi/map/MapController;->w:I

    div-int/lit8 v5, v5, 0x2

    or-int/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    float-to-double v7, v1

    float-to-double v9, v0

    const-wide/16 v11, 0x0

    const-wide/16 v15, 0x0

    move-object/from16 v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-wide v6, v7

    move-wide v8, v9

    move-wide v10, v11

    move-wide v12, v15

    invoke-virtual/range {v0 .. v13}, Lcom/baidu/platform/comapi/map/MapController;->MapMsgProc(IIIIIDDDD)I

    :cond_2
    :goto_1
    return-void
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1375
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1378
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->D:Z

    if-nez v0, :cond_1

    .line 1379
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->ab:Lcom/baidu/platform/comapi/map/b/b;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/b/b;->a(Landroid/view/MotionEvent;)V

    .line 1382
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    .line 1383
    iput-boolean v3, p0, Lcom/baidu/platform/comapi/map/MapController;->m:Z

    .line 1384
    sput-boolean v1, Lcom/baidu/platform/comapi/map/MapController;->y:Z

    .line 1385
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->c()V

    const/4 v0, 0x0

    .line 1386
    invoke-virtual {p0, v1, v0}, Lcom/baidu/platform/comapi/map/MapController;->procGestureForLog(ZLcom/baidu/platform/comapi/basestruct/Point;)V

    .line 1389
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->I:Z

    if-eqz v0, :cond_3

    .line 1390
    iput-boolean v3, p0, Lcom/baidu/platform/comapi/map/MapController;->m:Z

    .line 1391
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->c()V

    .line 1394
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_7

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_4

    return v1

    .line 1407
    :cond_4
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->I:Z

    if-eqz v0, :cond_5

    .line 1408
    invoke-virtual {p0, p1}, Lcom/baidu/platform/comapi/map/MapController;->handleDoubleClickZoom(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1410
    :cond_5
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->V:Z

    if-eqz v0, :cond_8

    .line 1411
    invoke-virtual {p0, p1}, Lcom/baidu/platform/comapi/map/MapController;->handleTouchMove(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1401
    :cond_6
    sput-boolean v3, Lcom/baidu/platform/comapi/map/MapController;->y:Z

    .line 1402
    iput-boolean v3, p0, Lcom/baidu/platform/comapi/map/MapController;->m:Z

    .line 1403
    invoke-virtual {p0, p1}, Lcom/baidu/platform/comapi/map/MapController;->handleTouchUp(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1396
    :cond_7
    iput-boolean v3, p0, Lcom/baidu/platform/comapi/map/MapController;->m:Z

    .line 1397
    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/map/MapController;->a(Landroid/view/MotionEvent;)V

    .line 1422
    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 1423
    :goto_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 1424
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/al;

    if-eqz v0, :cond_9

    .line 1427
    invoke-interface {v0, p1}, Lcom/baidu/platform/comapi/map/al;->a(Landroid/view/MotionEvent;)V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    return v3
.end method

.method public handleTouchMove(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1487
    sget-boolean v0, Lcom/baidu/platform/comapi/map/MapController;->y:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1490
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/baidu/platform/comapi/map/MapController;->R:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x12c

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    return v1

    .line 1495
    :cond_1
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->mHasMapObjDraging:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 1496
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapView()Lcom/baidu/platform/comapi/map/MapViewInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapView()Lcom/baidu/platform/comapi/map/MapViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/MapViewInterface;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1497
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapView()Lcom/baidu/platform/comapi/map/MapViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/MapViewInterface;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 1498
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 1497
    invoke-interface {v0, v3, p1}, Lcom/baidu/platform/comapi/map/Projection;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p1

    .line 1500
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 1501
    :goto_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 1502
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/al;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1505
    invoke-interface {v0, p1}, Lcom/baidu/platform/comapi/map/al;->d(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1

    .line 1515
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sget v3, Lcom/baidu/platform/comapi/map/MapController;->z:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1516
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sget v4, Lcom/baidu/platform/comapi/map/MapController;->A:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1519
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getDensity()F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    cmpl-double v8, v4, v6

    if-lez v8, :cond_5

    .line 1520
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    :cond_5
    double-to-float v4, v4

    .line 1521
    sget-boolean v5, Lcom/baidu/platform/comapi/map/MapController;->B:Z

    if-eqz v5, :cond_6

    div-float v5, v0, v4

    const/high16 v6, 0x40400000    # 3.0f

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_6

    div-float v4, v3, v4

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_6

    return v1

    .line 1524
    :cond_6
    sput-boolean v2, Lcom/baidu/platform/comapi/map/MapController;->B:Z

    .line 1527
    sget-boolean v4, Lcom/baidu/platform/comapi/map/MapController;->isCompass:Z

    if-eqz v4, :cond_7

    .line 1528
    invoke-static {}, Lcom/baidu/platform/comapi/util/a;->a()Lcom/baidu/platform/comapi/util/a;

    move-result-object v4

    new-instance v5, Lcom/baidu/platform/comapi/map/a/a;

    invoke-direct {v5}, Lcom/baidu/platform/comapi/map/a/a;-><init>()V

    invoke-virtual {v4, v5}, Lcom/baidu/platform/comapi/util/a;->a(Ljava/lang/Object;)V

    .line 1531
    :cond_7
    new-instance v4, Lcom/baidu/platform/comapi/basestruct/Point;

    float-to-double v5, v0

    float-to-double v7, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/baidu/platform/comapi/basestruct/Point;-><init>(DD)V

    .line 1532
    invoke-virtual {p0, v1, v4}, Lcom/baidu/platform/comapi/map/MapController;->procGestureForLog(ZLcom/baidu/platform/comapi/basestruct/Point;)V

    .line 1534
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1535
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 1537
    sget v4, Lcom/baidu/platform/comapi/map/MapController;->z:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    .line 1538
    sget v5, Lcom/baidu/platform/comapi/map/MapController;->A:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    .line 1540
    new-instance v6, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    .line 1541
    new-instance v7, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    add-float/2addr v8, v4

    float-to-int v4, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    add-float/2addr p1, v5

    float-to-int p1, p1

    invoke-direct {v7, v4, p1}, Landroid/graphics/Point;-><init>(II)V

    if-gez v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    if-gez v3, :cond_9

    const/4 v3, 0x0

    .line 1549
    :cond_9
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    if-eqz p1, :cond_b

    .line 1550
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatusInner()Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object p1

    const/4 v4, 0x0

    .line 1551
    :goto_1
    iget-object v5, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_b

    .line 1552
    iget-object v5, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/platform/comapi/map/al;

    if-eqz v5, :cond_a

    .line 1555
    invoke-interface {v5, v7, v6, p1}, Lcom/baidu/platform/comapi/map/al;->b(Landroid/graphics/Point;Landroid/graphics/Point;Lcom/baidu/mapsdkplatform/comapi/map/x;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1556
    iput-boolean v2, p0, Lcom/baidu/platform/comapi/map/MapController;->D:Z

    .line 1557
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/MapController;->s:Z

    .line 1558
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/MapController;->Y:Z

    return v2

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1564
    :cond_b
    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapController;->m:Z

    if-eqz p1, :cond_c

    .line 1565
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getGestureMonitor()Lcom/baidu/platform/comapi/map/b/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/b/d;->b()V

    .line 1566
    iput-boolean v2, p0, Lcom/baidu/platform/comapi/map/MapController;->m:Z

    .line 1569
    :cond_c
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->mapStatusChangeStart()V

    const/4 p1, 0x3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    .line 1571
    invoke-virtual {p0, p1, v2, v0}, Lcom/baidu/platform/comapi/map/MapController;->MapMsgProc(III)I

    .line 1572
    invoke-static {}, Lcom/baidu/platform/comapi/util/a;->a()Lcom/baidu/platform/comapi/util/a;

    move-result-object p1

    new-instance v0, Lcom/baidu/platform/comapi/map/a/b;

    invoke-direct {v0, v2, v1}, Lcom/baidu/platform/comapi/map/a/b;-><init>(ZZ)V

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/util/a;->a(Ljava/lang/Object;)V

    .line 1573
    iput-boolean v2, p0, Lcom/baidu/platform/comapi/map/MapController;->D:Z

    .line 1574
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/MapController;->s:Z

    .line 1576
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/MapController;->Y:Z

    return v2
.end method

.method public handleTouchSingleClick(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1745
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1746
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 1750
    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comapi/map/MapController;->d(II)Z

    .line 1754
    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comapi/map/MapController;->e(II)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    .line 1758
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/baidu/platform/comapi/map/MapController;->handlePopupClick(II)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    .line 1762
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comapi/map/MapController;->c(II)Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    .line 1767
    :cond_2
    invoke-direct {p0, v3, v0, v1}, Lcom/baidu/platform/comapi/map/MapController;->a(III)Z

    move-result v2

    if-eqz v2, :cond_3

    return v3

    .line 1771
    :cond_3
    iget-boolean v2, p0, Lcom/baidu/platform/comapi/map/MapController;->C:Z

    if-eqz v2, :cond_4

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comapi/map/MapController;->b(II)Z

    move-result v0

    if-eqz v0, :cond_4

    return v3

    .line 1775
    :cond_4
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->isNaviMode()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->j:Lcom/baidu/platform/comapi/map/NaviMapViewListener;

    if-eqz v0, :cond_5

    const/16 v1, 0x202

    .line 1776
    invoke-interface {v0, v1, p1}, Lcom/baidu/platform/comapi/map/NaviMapViewListener;->onAction(ILjava/lang/Object;)V

    .line 1780
    :cond_5
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1781
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-interface {v0, v1, p1}, Lcom/baidu/platform/comapi/map/MapViewListener;->onClickedBackground(II)V

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public handleTouchUp(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1583
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1584
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-gez v1, :cond_1

    const/4 v1, 0x0

    .line 1589
    :cond_1
    iget-boolean v3, p0, Lcom/baidu/platform/comapi/map/MapController;->mHasMapObjDraging:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 1591
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 1592
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapView()Lcom/baidu/platform/comapi/map/MapViewInterface;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapView()Lcom/baidu/platform/comapi/map/MapViewInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/baidu/platform/comapi/map/MapViewInterface;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1593
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapView()Lcom/baidu/platform/comapi/map/MapViewInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/baidu/platform/comapi/map/MapViewInterface;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lcom/baidu/platform/comapi/map/Projection;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p1

    const/4 v0, 0x0

    .line 1594
    :goto_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1595
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/map/al;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 1598
    invoke-interface {v1, p1}, Lcom/baidu/platform/comapi/map/al;->e(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1604
    :cond_3
    iput-boolean v2, p0, Lcom/baidu/platform/comapi/map/MapController;->mHasMapObjDraging:Z

    return v4

    .line 1609
    :cond_4
    sget-boolean v3, Lcom/baidu/platform/comapi/map/MapController;->y:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x5

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 1610
    invoke-virtual {p0, v3, v2, v0}, Lcom/baidu/platform/comapi/map/MapController;->MapMsgProc(III)I

    .line 1613
    :cond_5
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->D:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1614
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/MapViewListener;->onMapAnimationFinish()V

    .line 1616
    :cond_6
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->D:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->isNaviMode()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getNaviMapViewListener()Lcom/baidu/platform/comapi/map/NaviMapViewListener;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1617
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getNaviMapViewListener()Lcom/baidu/platform/comapi/map/NaviMapViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/NaviMapViewListener;->onMapAnimationFinish()V

    .line 1621
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/baidu/platform/comapi/map/MapController;->X:J

    sub-long/2addr v0, v5

    const-wide/16 v5, 0x12c

    cmp-long v3, v0, v5

    if-gez v3, :cond_8

    .line 1622
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sget v1, Lcom/baidu/platform/comapi/map/MapController;->z:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sget v0, Lcom/baidu/platform/comapi/map/MapController;->A:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_1

    :cond_8
    const/4 p1, 0x0

    .line 1641
    :goto_1
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->D:Z

    if-nez v0, :cond_c

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapController;->Y:Z

    if-eqz p1, :cond_c

    :cond_9
    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapController;->P:Z

    if-nez p1, :cond_c

    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapController;->Q:Z

    if-nez p1, :cond_c

    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapController;->mIsAnimating:Z

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    if-eqz p1, :cond_c

    .line 1642
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatusInner()Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object p1

    const/4 v0, 0x0

    .line 1643
    :goto_2
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 1644
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/map/al;

    if-eqz v1, :cond_a

    .line 1647
    invoke-interface {v1, p1}, Lcom/baidu/platform/comapi/map/al;->c(Lcom/baidu/mapsdkplatform/comapi/map/x;)V

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1650
    :cond_b
    iput-boolean v2, p0, Lcom/baidu/platform/comapi/map/MapController;->mIsMoving:Z

    .line 1653
    :cond_c
    iput-boolean v2, p0, Lcom/baidu/platform/comapi/map/MapController;->Y:Z

    .line 1656
    iput-boolean v2, p0, Lcom/baidu/platform/comapi/map/MapController;->D:Z

    .line 1657
    invoke-static {}, Lcom/baidu/platform/comapi/util/a;->a()Lcom/baidu/platform/comapi/util/a;

    move-result-object p1

    new-instance v0, Lcom/baidu/platform/comapi/map/a/b;

    invoke-direct {v0, v4, v2}, Lcom/baidu/platform/comapi/map/a/b;-><init>(ZZ)V

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/util/a;->a(Ljava/lang/Object;)V

    .line 1658
    invoke-static {}, Lcom/baidu/platform/comapi/util/a;->a()Lcom/baidu/platform/comapi/util/a;

    move-result-object p1

    new-instance v0, Lcom/baidu/platform/comapi/map/a/c;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/map/a/c;-><init>()V

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/util/a;->a(Ljava/lang/Object;)V

    return v4
.end method

.method public handleTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1324
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1326
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    goto :goto_2

    .line 1328
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 1329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    const/4 v2, 0x0

    cmpl-float v4, v0, v2

    if-lez v4, :cond_2

    const/16 v0, 0x12

    goto :goto_0

    :cond_2
    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    const/16 v0, 0x10

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    cmpl-float v4, p1, v2

    if-lez v4, :cond_4

    const/16 v0, 0x13

    goto :goto_1

    :cond_4
    cmpg-float p1, p1, v2

    if-gez p1, :cond_5

    const/16 v0, 0x11

    :cond_5
    :goto_1
    if-nez v0, :cond_6

    return v1

    .line 1344
    :cond_6
    invoke-virtual {p0, v3, v0, v1}, Lcom/baidu/platform/comapi/map/MapController;->MapMsgProc(III)I

    :goto_2
    return v3
.end method

.method public handleZoomTo(I)Z
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x1000

    .line 2314
    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/platform/comapi/map/MapController;->MapMsgProc(III)I

    goto :goto_0

    :cond_1
    const/16 p1, 0x1001

    .line 2317
    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/platform/comapi/map/MapController;->MapMsgProc(III)I

    :goto_0
    return v1
.end method

.method public importMapTheme(I)Z
    .locals 1

    .line 3785
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3788
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->importMapTheme(I)Z

    move-result p1

    return p1
.end method

.method public initAppBaseMap()V
    .locals 2

    .line 643
    sget-object v0, Lcom/baidu/platform/comapi/map/MapController;->W:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 644
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->initBaseMap()V

    goto :goto_0

    .line 646
    :cond_0
    sget-object v0, Lcom/baidu/platform/comapi/map/MapController;->W:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/platform/comapi/map/MapController;->createByDuplicateAppBaseMap(J)Z

    :goto_0
    return-void
.end method

.method public initBaseMap()V
    .locals 2

    .line 708
    new-instance v0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-direct {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    .line 709
    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->Create()Z

    .line 710
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/MapController;->u:J

    .line 711
    sget-object v0, Lcom/baidu/platform/comapi/map/MapController;->W:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 712
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public initMapResources(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2789
    iget-boolean v2, v0, Lcom/baidu/platform/comapi/map/MapController;->E:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    if-eqz v1, :cond_b

    .line 2793
    iget-object v2, v0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 2805
    :cond_1
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getDensityDPI()I

    move-result v2

    const/16 v3, 0xb4

    const/4 v5, 0x0

    if-lt v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 2807
    :goto_0
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getDensityDPI()I

    move-result v3

    mul-int/lit8 v3, v3, 0x19

    div-int/lit16 v3, v3, 0xf0

    iput v3, v0, Lcom/baidu/platform/comapi/map/MapController;->nearlyRadius:I

    const-string v3, "modulePath"

    .line 2810
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "appSdcardPath"

    .line 2811
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "appCachePath"

    .line 2812
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "appSecondCachePath"

    .line 2813
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "engineErrorPath"

    .line 2814
    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "mapTmpMax"

    .line 2816
    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v11, "domTmpMax"

    .line 2817
    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v12, "itsTmpMax"

    .line 2818
    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    const-string v13, "ssgTmpMax"

    .line 2819
    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    if-eqz v2, :cond_3

    const-string v2, "/h/"

    goto :goto_1

    :cond_3
    const-string v2, "/l/"

    .line 2823
    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/cfg"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2824
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/vmp"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2827
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "/a/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2828
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2829
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2830
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2831
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/tmp/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2832
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2835
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v15, "cfgdataroot"

    .line 2836
    invoke-virtual {v8, v15, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v14, "vmpdataroot"

    .line 2838
    invoke-virtual {v8, v14, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "tmpdataroot"

    .line 2839
    invoke-virtual {v8, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "tmpdatapast"

    .line 2840
    invoke-virtual {v8, v4, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "importroot"

    .line 2841
    invoke-virtual {v8, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "stylerespath"

    .line 2842
    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_4

    .line 2843
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    const-string v2, "engineerrorpath"

    .line 2844
    invoke-virtual {v8, v2, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2847
    :cond_4
    iget v2, v0, Lcom/baidu/platform/comapi/map/MapController;->w:I

    const-string v3, "cx"

    invoke-virtual {v8, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2848
    iget v2, v0, Lcom/baidu/platform/comapi/map/MapController;->x:I

    const-string v3, "cy"

    invoke-virtual {v8, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2849
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getDensityDPI()I

    move-result v2

    const-string v3, "ndpi"

    invoke-virtual {v8, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2850
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getDensityDPI()I

    move-result v2

    int-to-float v2, v2

    const-string v3, "fdpi"

    invoke-virtual {v8, v3, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v2, "maptmpmax"

    .line 2851
    invoke-virtual {v8, v2, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "domtmpmax"

    .line 2852
    invoke-virtual {v8, v2, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "itstmpmax"

    .line 2853
    invoke-virtual {v8, v2, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ssgtmpmax"

    .line 2854
    invoke-virtual {v8, v2, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "pathchange"

    .line 2855
    invoke-virtual {v8, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "maptheme"

    .line 2856
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2857
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    const-string v2, "mapscene"

    .line 2859
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2860
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_6
    const-string v2, "fontsizelevel"

    .line 2862
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2863
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2867
    :cond_7
    invoke-static {}, Lcom/baidu/platform/comapi/b;->f()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {}, Lcom/baidu/platform/comapi/b;->e()Z

    move-result v2

    .line 2874
    :cond_8
    iget-object v2, v0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v2, v8, v5}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->initWithOptions(Landroid/os/Bundle;Z)Z

    move-result v2

    if-nez v2, :cond_a

    .line 2875
    sget-object v1, Lcom/baidu/platform/comapi/map/MapController;->k:Ljava/lang/String;

    const-string v2, "MapControl init fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2876
    invoke-static {}, Lcom/baidu/mapapi/OpenLogUtil;->isMapLogEnable()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2877
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object v1

    const-string v2, "MapControl init fail"

    .line 2878
    invoke-virtual {v1, v2}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a(Ljava/lang/String;)V

    :cond_9
    return-void

    .line 2883
    :cond_a
    iget-object v2, v0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v2, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetMapStatus(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    .line 2886
    iput-boolean v1, v0, Lcom/baidu/platform/comapi/map/MapController;->E:Z

    :cond_b
    :goto_2
    return-void
.end method

.method public is3DGestureEnable()Z
    .locals 1

    .line 2148
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->S:Z

    return v0
.end method

.method public isBaseIndoorMapMode()Z
    .locals 1

    .line 3615
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3618
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->IsBaseIndoorMapMode()Z

    move-result v0

    return v0
.end method

.method public isCanTouchMove()Z
    .locals 1

    .line 2176
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->V:Z

    return v0
.end method

.method public isDoubleClickZoom()Z
    .locals 1

    .line 2140
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->H:Z

    return v0
.end method

.method public isDuplicate()Z
    .locals 1

    .line 660
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->aa:Z

    return v0
.end method

.method public isEnableDMoveZoom()Z
    .locals 1

    .line 2192
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->I:Z

    return v0
.end method

.method public isEnableIndoor3D()Z
    .locals 1

    .line 4002
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4003
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->isEnableIndoor3D()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isEnableZoom()Z
    .locals 1

    .line 2152
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->U:Z

    return v0
.end method

.method public isEnlargeCenterWithDoubleClickEnabled()Z
    .locals 1

    .line 2220
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->K:Z

    return v0
.end method

.method public isFlingEnabled()Z
    .locals 1

    .line 2209
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->n:Z

    return v0
.end method

.method public isInFocusBarBorder(Lcom/baidu/platform/comapi/basestruct/GeoPoint;D)Z
    .locals 9

    .line 3629
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 3632
    iget-object v2, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitude()D

    move-result-wide v5

    move-wide v7, p2

    invoke-virtual/range {v2 .. v8}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->IsPointInFocusBarBorder(DDD)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isInFocusIndoorBuilding(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Z
    .locals 6

    .line 3622
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 3625
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->IsPointInFocusIDRBorder(DD)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isMapAnimationRunning()Z
    .locals 1

    .line 3860
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3863
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->isAnimationRunning()Z

    move-result v0

    return v0
.end method

.method public isMovedMap()Z
    .locals 1

    .line 722
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->s:Z

    return v0
.end method

.method public isNaviMode()Z
    .locals 1

    .line 3877
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3878
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->isNaviMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOverlookGestureEnable()Z
    .locals 1

    .line 2188
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->T:Z

    return v0
.end method

.method public isPressedOnPopup(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isStreetArrowShown()Z
    .locals 1

    .line 3732
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3735
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->IsStreetArrowShown()Z

    move-result v0

    return v0
.end method

.method public isStreetCustomMarkerShown()Z
    .locals 1

    .line 3778
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3781
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->IsStreetCustomMarkerShown()Z

    move-result v0

    return v0
.end method

.method public isStreetPOIMarkerShown()Z
    .locals 1

    .line 3639
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3642
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->IsStreetPOIMarkerShown()Z

    move-result v0

    return v0
.end method

.method public isStreetRoadClickable()Z
    .locals 1

    .line 3755
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3758
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->IsStreetRoadClickable()Z

    move-result v0

    return v0
.end method

.method public isTwoTouchClickZoomEnabled()Z
    .locals 1

    .line 2201
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->J:Z

    return v0
.end method

.method public mapStatusChangeStart()V
    .locals 3

    .line 613
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->mIsMoving:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 616
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->mIsMoving:Z

    const/4 v0, 0x0

    .line 617
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->mIsAnimating:Z

    .line 619
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 620
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatusInner()Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object v1

    .line 621
    :goto_0
    iget-object v2, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 622
    iget-object v2, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/platform/comapi/map/al;

    if-eqz v2, :cond_1

    .line 625
    invoke-interface {v2, v1}, Lcom/baidu/platform/comapi/map/al;->a(Lcom/baidu/mapsdkplatform/comapi/map/x;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 769
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->OnPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 763
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->OnResume()V

    :cond_0
    return-void
.end method

.method public procGestureForLog(ZLcom/baidu/platform/comapi/basestruct/Point;)V
    .locals 7

    .line 3953
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->G:Lcom/baidu/platform/comapi/map/MapController$a;

    iget-boolean v0, v0, Lcom/baidu/platform/comapi/map/MapController$a;->a:Z

    if-nez v0, :cond_0

    .line 3954
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 3955
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapController;->G:Lcom/baidu/platform/comapi/map/MapController$a;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/baidu/platform/comapi/map/MapController$a;->a:Z

    .line 3956
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapController;->G:Lcom/baidu/platform/comapi/map/MapController$a;

    iget v2, v0, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    iput v2, v1, Lcom/baidu/platform/comapi/map/MapController$a;->b:F

    .line 3957
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapController;->G:Lcom/baidu/platform/comapi/map/MapController$a;

    new-instance v2, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    iget-wide v3, v0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtX:D

    iget-wide v5, v0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtY:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(DD)V

    iput-object v2, v1, Lcom/baidu/platform/comapi/map/MapController$a;->c:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    .line 3958
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->G:Lcom/baidu/platform/comapi/map/MapController$a;

    new-instance v1, Lcom/baidu/platform/comapi/basestruct/Point;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/baidu/platform/comapi/basestruct/Point;-><init>(II)V

    iput-object v1, v0, Lcom/baidu/platform/comapi/map/MapController$a;->d:Lcom/baidu/platform/comapi/basestruct/Point;

    :cond_0
    if-eqz p1, :cond_1

    .line 3962
    invoke-virtual {p2}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntX()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 3963
    invoke-virtual {p2}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntY()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 3964
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->G:Lcom/baidu/platform/comapi/map/MapController$a;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapController$a;->d:Lcom/baidu/platform/comapi/basestruct/Point;

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapController;->G:Lcom/baidu/platform/comapi/map/MapController$a;

    iget-object v1, v1, Lcom/baidu/platform/comapi/map/MapController$a;->d:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntX()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/basestruct/Point;->setIntX(I)V

    .line 3965
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapController;->G:Lcom/baidu/platform/comapi/map/MapController$a;

    iget-object p1, p1, Lcom/baidu/platform/comapi/map/MapController$a;->d:Lcom/baidu/platform/comapi/basestruct/Point;

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->G:Lcom/baidu/platform/comapi/map/MapController$a;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapController$a;->d:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntY()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/basestruct/Point;->setIntY(I)V

    :cond_1
    return-void
.end method

.method public recycleMemory(Lcom/baidu/platform/comapi/map/MapController$RecycleMemoryLevel;)V
    .locals 1

    .line 3892
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3893
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController$RecycleMemoryLevel;->getLevel()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->recycleMemory(I)V

    :cond_0
    return-void
.end method

.method public registMapViewListener(Lcom/baidu/platform/comapi/map/al;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 602
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 606
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public removeOneOverlayItem(Landroid/os/Bundle;)V
    .locals 1

    .line 3906
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->removeOneOverlayItem(Landroid/os/Bundle;)V

    return-void
.end method

.method public removeStreetAllCustomMarker()V
    .locals 1

    .line 3707
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3710
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->RemoveStreetAllCustomMarker()V

    return-void
.end method

.method public removeStreetCustomMarker(Ljava/lang/String;)V
    .locals 1

    .line 3697
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3700
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->RemoveStreetCustomMaker(Ljava/lang/String;)V

    return-void
.end method

.method public saveScreenToLocal(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 755
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/platform/comapi/map/MapController;->saveScreenToLocal(Ljava/lang/String;IIII)V

    return-void
.end method

.method public saveScreenToLocal(Ljava/lang/String;IIII)V
    .locals 3

    .line 735
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    .line 740
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v2, "x"

    .line 742
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo p2, "y"

    .line 743
    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo p2, "width"

    .line 744
    invoke-virtual {v1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "height"

    .line 745
    invoke-virtual {v1, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 746
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    :catch_0
    :cond_1
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p2, p1, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SaveScreenToLocal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public scrollBy(II)V
    .locals 3

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 2967
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 2968
    iget-object v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->left:I

    iget v2, p0, Lcom/baidu/platform/comapi/map/MapController;->w:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    .line 2969
    iget-object p1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget p1, p1, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->top:I

    iget v0, p0, Lcom/baidu/platform/comapi/map/MapController;->x:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    add-int/2addr p1, p2

    .line 2970
    invoke-virtual {p0, v1, p1}, Lcom/baidu/platform/comapi/map/MapController;->a(II)V

    return-void
.end method

.method public set3DGestureEnable(Z)V
    .locals 0

    .line 2144
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapController;->S:Z

    return-void
.end method

.method public setActingTwoClickZoom(Z)V
    .locals 0

    .line 2172
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapController;->Q:Z

    return-void
.end method

.method public setAllStreetCustomMarkerVisibility(Z)V
    .locals 1

    .line 3661
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3664
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetAllStreetCustomMarkerVisibility(Z)V

    return-void
.end method

.method public setCanTouchMove(Z)V
    .locals 0

    .line 2180
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapController;->V:Z

    return-void
.end method

.method public setCaptureMapListener(Lcom/baidu/platform/comapi/map/CaptureMapListener;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/MapController;->c:Lcom/baidu/platform/comapi/map/CaptureMapListener;

    return-void
.end method

.method public setDoubleClickZoom(Z)V
    .locals 0

    .line 2136
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapController;->H:Z

    return-void
.end method

.method public setEnableIndoor3D(Z)V
    .locals 1

    .line 3996
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3997
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->setEnableIndoor3D(Z)V

    :cond_0
    return-void
.end method

.method public setEnableZoom(Z)V
    .locals 0

    .line 2156
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapController;->U:Z

    return-void
.end method

.method public setEngineMsgListener(Lcom/baidu/platform/comapi/map/EngineMsgListener;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/MapController;->g:Lcom/baidu/platform/comapi/map/EngineMsgListener;

    return-void
.end method

.method public setEnlargeCenterWithDoubleClickEnable(Z)V
    .locals 0

    .line 2216
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapController;->K:Z

    return-void
.end method

.method public setFlingEnable(Z)V
    .locals 0

    .line 2205
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapController;->n:Z

    return-void
.end method

.method public setHideIndoorPopupListener(Lcom/baidu/platform/comapi/map/k;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/MapController;->d:Lcom/baidu/platform/comapi/map/k;

    return-void
.end method

.method public setInertialAnimation(Z)V
    .locals 0

    .line 2164
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapController;->mIsInertialAnimation:Z

    .line 2166
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapController;->P:Z

    .line 2167
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapController;->Q:Z

    return-void
.end method

.method public setLayerSceneMode(JLcom/baidu/platform/comapi/map/MapController$MapSceneMode;)Z
    .locals 1

    .line 3529
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3532
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p3}, Lcom/baidu/platform/comapi/map/MapController$MapSceneMode;->getMode()I

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetLayerSceneMode(JI)Z

    move-result p1

    return p1
.end method

.method public setMapClickEnable(Z)V
    .locals 0

    .line 2356
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapController;->C:Z

    return-void
.end method

.method public setMapControlMode(Lcom/baidu/platform/comapi/map/MapController$MapControlMode;)I
    .locals 1

    .line 2467
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2469
    :cond_0
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/MapController;->ac:Lcom/baidu/platform/comapi/map/MapController$MapControlMode;

    .line 2470
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-static {p1}, Lcom/baidu/platform/comapi/map/MapController$MapControlMode;->a(Lcom/baidu/platform/comapi/map/MapController$MapControlMode;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetMapControlMode(I)I

    move-result p1

    return p1
.end method

.method public setMapFirstFrameCallback(Lcom/baidu/platform/comapi/map/MapController$MapFirstFrameCallback;)V
    .locals 0

    .line 565
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/MapController;->r:Lcom/baidu/platform/comapi/map/MapController$MapFirstFrameCallback;

    return-void
.end method

.method public setMapRenderModeChangeListener(Lcom/baidu/platform/comapi/map/MapRenderModeChangeListener;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/MapController;->f:Lcom/baidu/platform/comapi/map/MapRenderModeChangeListener;

    return-void
.end method

.method public setMapScene(I)V
    .locals 1

    .line 3824
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->getMapScene()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 3827
    :cond_0
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapController;->o:I

    .line 3828
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3829
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget v0, p0, Lcom/baidu/platform/comapi/map/MapController;->o:I

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->setMapScene(I)V

    :cond_1
    return-void
.end method

.method public setMapStatus(Landroid/os/Bundle;)V
    .locals 1

    .line 2408
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2411
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetMapStatus(Landroid/os/Bundle;)V

    return-void
.end method

.method public setMapStatus(Lcom/baidu/platform/comapi/map/MapStatus;)V
    .locals 4

    .line 2416
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 2419
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2420
    iget v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    float-to-double v1, v1

    const-string v3, "level"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 2421
    iget v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->rotation:I

    int-to-double v1, v1

    const-string v3, "rotation"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 2422
    iget v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->overlooking:I

    int-to-double v1, v1

    const-string v3, "overlooking"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 2423
    iget-wide v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtX:D

    const-string v3, "centerptx"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 2424
    iget-wide v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtY:D

    const-string v3, "centerpty"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 2425
    iget-wide v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtZ:D

    const-string v3, "centerptz"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 2427
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->left:I

    const-string v2, "left"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2428
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->right:I

    const-string v2, "right"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2429
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->top:I

    const-string v2, "top"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2430
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->bottom:I

    const-string v2, "bottom"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2432
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->left:J

    const-string v3, "gleft"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2433
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->bottom:J

    const-string v3, "gbottom"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2434
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->top:J

    const-string v3, "gtop"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2435
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->right:J

    const-string v3, "gright"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2437
    iget v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->yOffset:F

    const-string/jumbo v2, "yoffset"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2438
    iget v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->xOffset:F

    const-string/jumbo v2, "xoffset"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2440
    iget v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->animationTime:I

    const-string v2, "animatime"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2441
    iget v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->hasAnimation:I

    const-string v2, "animation"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2442
    iget v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->animationType:I

    const-string v2, "animationType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2443
    iget-boolean v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->bfpp:Z

    const-string v2, "bfpp"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2444
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->panoId:Ljava/lang/String;

    const-string v2, "panoid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "autolink"

    .line 2445
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2446
    iget v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->streetIndicateAngle:F

    const-string v2, "siangle"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2447
    iget-boolean v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->isBirdEye:Z

    const-string v2, "isbirdeye"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2448
    iget v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->streetExt:I

    const-string v2, "ssext"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2449
    iget v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->roadOffsetX:F

    const-string v2, "roadOffsetX"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2450
    iget p1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->roadOffsetY:F

    const-string v1, "roadOffsetY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2452
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->mapStatusChangeStart()V

    .line 2454
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetMapStatus(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMapStatus(Lcom/baidu/platform/comapi/map/MapStatus;Z)V
    .locals 4

    .line 2372
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 2375
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2376
    iget v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    float-to-double v1, v1

    const-string v3, "level"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 2377
    iget v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->rotation:I

    int-to-double v1, v1

    const-string v3, "rotation"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 2378
    iget v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->overlooking:I

    int-to-double v1, v1

    const-string v3, "overlooking"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 2379
    iget-wide v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtX:D

    const-string v3, "centerptx"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 2380
    iget-wide v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtY:D

    const-string v3, "centerpty"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 2381
    iget-wide v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtZ:D

    const-string v3, "centerptz"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 2383
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->left:I

    const-string v2, "left"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2384
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->right:I

    const-string v2, "right"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2385
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->top:I

    const-string v2, "top"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2386
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->bottom:I

    const-string v2, "bottom"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2388
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->left:J

    const-string v3, "gleft"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2389
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->bottom:J

    const-string v3, "gbottom"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2390
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->top:J

    const-string v3, "gtop"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2391
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->right:J

    const-string v3, "gright"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2393
    iget v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->yOffset:F

    const-string/jumbo v2, "yoffset"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2394
    iget v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->xOffset:F

    const-string/jumbo v2, "xoffset"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "animation"

    const/4 v2, 0x0

    .line 2395
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "animatime"

    .line 2396
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2397
    iget-boolean v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->bfpp:Z

    const-string v2, "bfpp"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2398
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->panoId:Ljava/lang/String;

    const-string v2, "panoid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "autolink"

    .line 2399
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2400
    iget p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->streetIndicateAngle:F

    const-string v1, "siangle"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2401
    iget-boolean p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->isBirdEye:Z

    const-string v1, "isbirdeye"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2402
    iget p1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->streetExt:I

    const-string p2, "ssext"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2403
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetMapStatus(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMapStatusWithAnimation(Lcom/baidu/platform/comapi/map/MapStatus;I)V
    .locals 4

    .line 2519
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2522
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 2525
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2526
    iget v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    float-to-double v1, v1

    const-string v3, "level"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 2527
    iget v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->rotation:I

    int-to-double v1, v1

    const-string v3, "rotation"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 2528
    iget v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->overlooking:I

    int-to-double v1, v1

    const-string v3, "overlooking"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 2530
    iget-wide v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtX:D

    const-string v3, "centerptx"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 2531
    iget-wide v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtY:D

    const-string v3, "centerpty"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 2532
    iget-wide v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtZ:D

    const-string v3, "centerptz"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 2534
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->left:I

    const-string v2, "left"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2535
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->right:I

    const-string v2, "right"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2536
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->top:I

    const-string v2, "top"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2537
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->bottom:I

    const-string v2, "bottom"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2539
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->left:J

    const-string v3, "gleft"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2540
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->right:J

    const-string v3, "gright"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2541
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->bottom:J

    const-string v3, "gbottom"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2542
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->top:J

    const-string v3, "gtop"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2544
    iget v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->xOffset:F

    const-string/jumbo v2, "xoffset"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2545
    iget v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->yOffset:F

    const-string/jumbo v2, "yoffset"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "animation"

    const/4 v2, 0x1

    .line 2546
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "animatime"

    .line 2547
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2548
    iget-boolean p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->bfpp:Z

    const-string v1, "bfpp"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2549
    iget-object p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->panoId:Ljava/lang/String;

    const-string v1, "panoid"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    const-string v1, "autolink"

    .line 2550
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2551
    iget p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->streetIndicateAngle:F

    const-string v1, "siangle"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2552
    iget-boolean p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->isBirdEye:Z

    const-string v1, "isbirdeye"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2553
    iget p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->streetExt:I

    const-string v1, "ssext"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2554
    iget p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->roadOffsetX:F

    const-string v1, "roadOffsetX"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2555
    iget p1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->roadOffsetY:F

    const-string p2, "roadOffsetY"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2557
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapController;->mapStatusChangeStart()V

    .line 2558
    iput-boolean v2, p0, Lcom/baidu/platform/comapi/map/MapController;->mIsAnimating:Z

    .line 2560
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetMapStatus(Landroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setMapStatusWithAnimation(Lcom/baidu/platform/comapi/map/MapStatus;II)V
    .locals 2

    .line 2575
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2579
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 2582
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "animationType"

    .line 2583
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "animatime"

    .line 2584
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2585
    iget-object p3, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget p3, p3, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->left:I

    const-string v1, "left"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2586
    iget-object p3, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget p3, p3, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->right:I

    const-string v1, "right"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2587
    iget-object p3, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget p3, p3, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->top:I

    const-string v1, "top"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2588
    iget-object p3, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget p3, p3, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->bottom:I

    const-string v1, "bottom"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p3, 0x4

    if-eq p2, p3, :cond_2

    .line 2590
    iget p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    float-to-double p2, p2

    const-string v1, "level"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 2591
    iget p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->rotation:I

    int-to-double p2, p2

    const-string v1, "rotation"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 2592
    iget p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->overlooking:I

    int-to-double p2, p2

    const-string v1, "overlooking"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 2594
    iget-wide p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtX:D

    const-string v1, "centerptx"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 2595
    iget-wide p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtY:D

    const-string v1, "centerpty"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 2596
    iget-wide p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtZ:D

    const-string v1, "centerptz"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 2598
    iget-object p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    iget-wide p2, p2, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->left:J

    const-string v1, "gleft"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2599
    iget-object p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    iget-wide p2, p2, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->right:J

    const-string v1, "gright"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2600
    iget-object p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    iget-wide p2, p2, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->bottom:J

    const-string v1, "gbottom"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2601
    iget-object p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    iget-wide p2, p2, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->top:J

    const-string v1, "gtop"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2603
    iget p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->xOffset:F

    const-string/jumbo p3, "xoffset"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2604
    iget p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->yOffset:F

    const-string/jumbo p3, "yoffset"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2605
    iget-boolean p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->bfpp:Z

    const-string p3, "bfpp"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2606
    iget-object p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->panoId:Ljava/lang/String;

    const-string p3, "panoid"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    const-string p3, "autolink"

    .line 2607
    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2608
    iget p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->streetIndicateAngle:F

    const-string p3, "siangle"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2609
    iget-boolean p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->isBirdEye:Z

    const-string p3, "isbirdeye"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2610
    iget p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->streetExt:I

    const-string p3, "ssext"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2611
    iget p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->roadOffsetX:F

    const-string p3, "roadOffsetX"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2612
    iget p1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->roadOffsetY:F

    const-string p2, "roadOffsetY"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2614
    :cond_2
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetNewMapStatus(Landroid/os/Bundle;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setMapStatusWithAnimation(Lcom/baidu/platform/comapi/map/MapStatus;IZ)V
    .locals 4

    .line 2478
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2481
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 2484
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2485
    iget v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    float-to-double v1, v1

    const-string v3, "level"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 2486
    iget v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->rotation:I

    int-to-double v1, v1

    const-string v3, "rotation"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 2487
    iget v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->overlooking:I

    int-to-double v1, v1

    const-string v3, "overlooking"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 2489
    iget-wide v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtX:D

    const-string v3, "centerptx"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 2490
    iget-wide v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtY:D

    const-string v3, "centerpty"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 2491
    iget-wide v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtZ:D

    const-string v3, "centerptz"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 2493
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->left:I

    const-string v2, "left"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2494
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->right:I

    const-string v2, "right"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2495
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->top:I

    const-string v2, "top"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2496
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->bottom:I

    const-string v2, "bottom"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2498
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->left:J

    const-string v3, "gleft"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2499
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->right:J

    const-string v3, "gright"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2500
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->bottom:J

    const-string v3, "gbottom"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2501
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->top:J

    const-string v3, "gtop"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2503
    iget v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->xOffset:F

    const-string/jumbo v2, "xoffset"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2504
    iget v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->yOffset:F

    const-string/jumbo v2, "yoffset"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const/4 v1, 0x1

    const-string v2, "animation"

    .line 2505
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "animatime"

    .line 2506
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2507
    iget-boolean p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->bfpp:Z

    const-string v1, "bfpp"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2508
    iget-object p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->panoId:Ljava/lang/String;

    const-string v1, "panoid"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "autolink"

    .line 2509
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2510
    iget p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->streetIndicateAngle:F

    const-string p3, "siangle"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2511
    iget-boolean p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->isBirdEye:Z

    const-string p3, "isbirdeye"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2512
    iget p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->streetExt:I

    const-string p3, "ssext"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2513
    iget p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->roadOffsetX:F

    const-string p3, "roadOffsetX"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2514
    iget p1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->roadOffsetY:F

    const-string p2, "roadOffsetY"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2515
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetMapStatus(Landroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setMapTheme(ILandroid/os/Bundle;)Z
    .locals 1

    .line 3792
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3795
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getMapTheme()I

    move-result v0

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 3798
    :cond_1
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapController;->p:I

    .line 3799
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->setMapTheme(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public setMapThemeScene(IILandroid/os/Bundle;)Z
    .locals 1

    .line 3803
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3806
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getMapTheme()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getMapScene()I

    move-result v0

    if-ne v0, p2, :cond_1

    const/4 p1, 0x1

    return p1

    .line 3809
    :cond_1
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapController;->p:I

    .line 3810
    iput p2, p0, Lcom/baidu/platform/comapi/map/MapController;->o:I

    .line 3811
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->setMapThemeScene(IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public setMapViewInterface(Lcom/baidu/platform/comapi/map/MapViewInterface;)V
    .locals 1

    .line 556
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->i:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public setMapViewListener(Lcom/baidu/platform/comapi/map/MapViewListener;)V
    .locals 0

    .line 493
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/MapController;->b:Lcom/baidu/platform/comapi/map/MapViewListener;

    return-void
.end method

.method public setMapViewSurfaceListener(Lcom/baidu/platform/comapi/map/MapViewSurfaceListener;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/MapController;->h:Lcom/baidu/platform/comapi/map/MapViewSurfaceListener;

    return-void
.end method

.method public setMaxAndMinZoomLevel(FF)V
    .locals 0

    .line 651
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapController;->mMaxZoomLevel:F

    .line 652
    iput p2, p0, Lcom/baidu/platform/comapi/map/MapController;->mMinZoomLevel:F

    return-void
.end method

.method public setNaviMapViewListener(Lcom/baidu/platform/comapi/map/NaviMapViewListener;)V
    .locals 0

    .line 1365
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/MapController;->j:Lcom/baidu/platform/comapi/map/NaviMapViewListener;

    return-void
.end method

.method public setNetStatus(I)V
    .locals 2

    .line 3434
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->g:Lcom/baidu/platform/comapi/map/EngineMsgListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 3438
    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/EngineMsgListener;->onLongLinkConnect()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 3439
    iget v1, p0, Lcom/baidu/platform/comapi/map/MapController;->a:I

    if-eq v1, p1, :cond_2

    .line 3441
    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/EngineMsgListener;->onLongLinkDisConnect()V

    .line 3443
    :cond_2
    :goto_0
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapController;->a:I

    return-void
.end method

.method public setOverlayMapCallBack(Lcom/baidu/platform/comapi/map/af;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2890
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_0

    .line 2891
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetCallback(Lcom/baidu/platform/comjni/map/basemap/a;)Z

    :cond_0
    return-void
.end method

.method public setOverlookGestureEnable(Z)V
    .locals 0

    .line 2184
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapController;->T:Z

    return-void
.end method

.method public setRecommendPOIScene(Lcom/baidu/platform/comapi/map/MapController$RecommendPoiScene;)V
    .locals 1

    .line 3928
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3929
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget p1, p1, Lcom/baidu/platform/comapi/map/MapController$RecommendPoiScene;->value:I

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->setRecommendPOIScene(I)V

    :cond_0
    return-void
.end method

.method public setScreenSize(II)V
    .locals 0

    .line 2347
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapController;->w:I

    .line 2348
    iput p2, p0, Lcom/baidu/platform/comapi/map/MapController;->x:I

    return-void
.end method

.method public setStreetArrowClickListener(Lcom/baidu/platform/comapi/map/an;)V
    .locals 0

    .line 520
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/MapController;->e:Lcom/baidu/platform/comapi/map/an;

    return-void
.end method

.method public setStreetArrowShow(Z)V
    .locals 1

    .line 3744
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3745
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetStreetArrowShow(Z)V

    :cond_0
    return-void
.end method

.method public setStreetMarkerClickable(Ljava/lang/String;Z)V
    .locals 1

    .line 3720
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3723
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetStreetMarkerClickable(Ljava/lang/String;Z)V

    return-void
.end method

.method public setStreetRoadClickable(Z)V
    .locals 1

    .line 3767
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3768
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetStreetRoadClickable(Z)V

    :cond_0
    return-void
.end method

.method public setStyleMode(Lcom/baidu/platform/comapi/map/MapController$MapStyleMode;)V
    .locals 1

    .line 3515
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3518
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController$MapStyleMode;->getMode()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetStyleMode(I)V

    return-void
.end method

.method public setTargetStreetCustomMarkerVisibility(ZLjava/lang/String;)V
    .locals 1

    .line 3673
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3676
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetTargetStreetCustomMarkerVisibility(ZLjava/lang/String;)V

    return-void
.end method

.method public setTravelMode(Z)V
    .locals 0

    .line 3506
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapController;->q:Z

    return-void
.end method

.method public setTwoTouchClickZoomEnabled(Z)V
    .locals 0

    .line 2197
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapController;->J:Z

    return-void
.end method

.method public setUniversalFilter(Ljava/lang/String;)V
    .locals 1

    .line 3922
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3923
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->setUniversalFilter(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showBaseIndoorMap(Z)V
    .locals 1

    .line 3544
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3547
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowBaseIndoorMap(Z)V

    return-void
.end method

.method public showStreetPOIMarker(Z)V
    .locals 1

    .line 3649
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3652
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowStreetPOIMarker(Z)V

    return-void
.end method

.method public showUniversalLayer(Landroid/os/Bundle;)V
    .locals 1

    .line 3910
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3911
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->showUniversalLayer(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public startIndoorAnimation()V
    .locals 1

    .line 2458
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2461
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->StartIndoorAnimation()V

    return-void
.end method

.method public switchBaseIndoorMapFloor(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 3558
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3561
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SwitchBaseIndoorMapFloor(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public unInit()V
    .locals 3

    .line 2925
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->e()V

    .line 2926
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->v:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2927
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2928
    iput-object v1, p0, Lcom/baidu/platform/comapi/map/MapController;->v:Landroid/os/Handler;

    .line 2931
    :cond_0
    sget-object v0, Lcom/baidu/platform/comapi/map/MapController;->W:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2932
    iget-object v2, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2934
    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2935
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2938
    :cond_2
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->E:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_3

    .line 2939
    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->Release()Z

    .line 2940
    iput-object v1, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v0, 0x0

    .line 2941
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->E:Z

    .line 2943
    :cond_3
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->f:Lcom/baidu/platform/comapi/map/MapRenderModeChangeListener;

    if-eqz v0, :cond_4

    .line 2944
    iput-object v1, p0, Lcom/baidu/platform/comapi/map/MapController;->f:Lcom/baidu/platform/comapi/map/MapRenderModeChangeListener;

    :cond_4
    return-void
.end method

.method public unInitForMultiTextureView()V
    .locals 1

    .line 2950
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->E:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_0

    .line 2951
    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->Release()Z

    const/4 v0, 0x0

    .line 2952
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v0, 0x0

    .line 2953
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapController;->E:Z

    :cond_0
    return-void
.end method

.method public updateDrawFPS()V
    .locals 1

    .line 3941
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/MapController;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3942
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->updateDrawFPS()V

    :cond_0
    return-void
.end method

.method public updateOneOverlayItem(Landroid/os/Bundle;)V
    .locals 1

    .line 3902
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapController;->t:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->updateOneOverlayItem(Landroid/os/Bundle;)V

    return-void
.end method
