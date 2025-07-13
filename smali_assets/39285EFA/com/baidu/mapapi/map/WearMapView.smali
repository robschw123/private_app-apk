.class public Lcom/baidu/mapapi/map/WearMapView;
.super Landroid/view/ViewGroup;
.source "WearMapView.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/map/WearMapView$a;,
        Lcom/baidu/mapapi/map/WearMapView$AnimationTask;,
        Lcom/baidu/mapapi/map/WearMapView$ScreenShape;,
        Lcom/baidu/mapapi/map/WearMapView$OnDismissCallback;
    }
.end annotation


# static fields
.field public static final BT_INVIEW:I = 0x1

.field private static final b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:I

.field private static e:I

.field private static s:I

.field private static t:I

.field private static u:I

.field private static final x:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:F

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:Z

.field a:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

.field private f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

.field private g:Lcom/baidu/mapapi/map/BaiduMap;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/graphics/Bitmap;

.field private j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

.field private k:Z

.field private l:Landroid/graphics/Point;

.field private m:Landroid/graphics/Point;

.field public mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

.field public mTimer:Ljava/util/Timer;

.field public mTimerHandler:Lcom/baidu/mapapi/map/WearMapView$a;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Lcom/baidu/mapapi/map/SwipeDismissView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/ImageView;

.field private v:Z

.field private w:Landroid/content/Context;

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 67
    const-class v0, Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/map/WearMapView;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 72
    sput v0, Lcom/baidu/mapapi/map/WearMapView;->d:I

    .line 74
    sput v0, Lcom/baidu/mapapi/map/WearMapView;->e:I

    .line 96
    sput v0, Lcom/baidu/mapapi/map/WearMapView;->s:I

    .line 97
    sput v0, Lcom/baidu/mapapi/map/WearMapView;->t:I

    const/16 v0, 0xa

    .line 99
    sput v0, Lcom/baidu/mapapi/map/WearMapView;->u:I

    .line 106
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/baidu/mapapi/map/WearMapView;->x:Landroid/util/SparseArray;

    const v2, 0x1e8480

    .line 180
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const v2, 0xf4240

    .line 181
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const v2, 0x7a120

    .line 182
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const v2, 0x30d40

    .line 183
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x6

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const v2, 0x186a0

    .line 184
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x7

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const v2, 0xc350

    .line 185
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v2, 0x61a8

    .line 186
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x9

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v2, 0x4e20

    .line 187
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v2, 0x2710

    .line 188
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0xb

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v2, 0x1388

    .line 189
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0xc

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v2, 0x7d0

    .line 190
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0xd

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v2, 0x3e8

    .line 191
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0xe

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v2, 0x1f4

    .line 192
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0xf

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v2, 0xc8

    .line 193
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x10

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v2, 0x64

    .line 194
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x11

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v2, 0x32

    .line 195
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x12

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v2, 0x14

    .line 196
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x13

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 197
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 198
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v0, 0x2

    .line 199
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x16

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 227
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->k:Z

    .line 104
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->v:Z

    .line 177
    sget-object v1, Lcom/baidu/mapapi/map/WearMapView$ScreenShape;->ROUND:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    iput-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->a:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    .line 201
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->y:Z

    .line 202
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->z:Z

    const/4 v0, 0x0

    .line 218
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->H:Z

    const/4 v0, 0x0

    .line 228
    invoke-direct {p0, p1, v0}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 239
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 83
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/WearMapView;->k:Z

    .line 104
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/WearMapView;->v:Z

    .line 177
    sget-object v0, Lcom/baidu/mapapi/map/WearMapView$ScreenShape;->ROUND:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->a:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    .line 201
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/WearMapView;->y:Z

    .line 202
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/WearMapView;->z:Z

    const/4 p2, 0x0

    .line 218
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/WearMapView;->H:Z

    const/4 p2, 0x0

    .line 240
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 252
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 83
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/WearMapView;->k:Z

    .line 104
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/WearMapView;->v:Z

    .line 177
    sget-object p3, Lcom/baidu/mapapi/map/WearMapView$ScreenShape;->ROUND:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    iput-object p3, p0, Lcom/baidu/mapapi/map/WearMapView;->a:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    .line 201
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/WearMapView;->y:Z

    .line 202
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/WearMapView;->z:Z

    const/4 p2, 0x0

    .line 218
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/WearMapView;->H:Z

    const/4 p2, 0x0

    .line 253
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V
    .locals 2

    .line 265
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->k:Z

    .line 104
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->v:Z

    .line 177
    sget-object v1, Lcom/baidu/mapapi/map/WearMapView$ScreenShape;->ROUND:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    iput-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->a:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    .line 201
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->y:Z

    .line 202
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->z:Z

    const/4 v0, 0x0

    .line 218
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->H:Z

    .line 266
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/WearMapView;F)F
    .locals 0

    .line 64
    iput p1, p0, Lcom/baidu/mapapi/map/WearMapView;->A:F

    return p1
.end method

.method private a(II)I
    .locals 6

    int-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 160
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    int-to-double v4, p2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int p2, v0

    sub-int/2addr p1, p2

    return p1
.end method

.method static synthetic a()Landroid/util/SparseArray;
    .locals 1

    .line 64
    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->x:Landroid/util/SparseArray;

    return-object v0
.end method

.method private a(I)V
    .locals 2

    .line 984
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 993
    :cond_1
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->onResume()V

    .line 994
    invoke-direct {p0}, Lcom/baidu/mapapi/map/WearMapView;->c()V

    goto :goto_0

    .line 989
    :cond_2
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->onPause()V

    .line 990
    invoke-direct {p0}, Lcom/baidu/mapapi/map/WearMapView;->b()V

    :goto_0
    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "window"

    .line 120
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 121
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V
    .locals 4

    .line 488
    invoke-static {p1}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/content/Context;)V

    .line 489
    invoke-virtual {p0, p0}, Lcom/baidu/mapapi/map/WearMapView;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 490
    iput-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->w:Landroid/content/Context;

    .line 491
    new-instance v0, Lcom/baidu/mapapi/map/WearMapView$a;

    invoke-direct {v0, p0, p1}, Lcom/baidu/mapapi/map/WearMapView$a;-><init>(Lcom/baidu/mapapi/map/WearMapView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimerHandler:Lcom/baidu/mapapi/map/WearMapView$a;

    .line 492
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/WearMapView$AnimationTask;->cancel()Z

    .line 498
    :cond_0
    new-instance v0, Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/WearMapView$AnimationTask;-><init>(Lcom/baidu/mapapi/map/WearMapView;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    .line 499
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 500
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/map/j;->a()V

    .line 501
    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->init()V

    .line 503
    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->c:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getController()Lcom/baidu/platform/comapi/map/MapController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/map/MapController;->set3DGestureEnable(Z)V

    .line 506
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getController()Lcom/baidu/platform/comapi/map/MapController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/map/MapController;->setOverlookGestureEnable(Z)V

    .line 507
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/WearMapView;->c(Landroid/content/Context;)V

    .line 508
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/WearMapView;->d(Landroid/content/Context;)V

    .line 509
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/WearMapView;->b(Landroid/content/Context;)V

    const/4 v0, 0x4

    if-eqz p2, :cond_1

    .line 510
    iget-boolean v1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->h:Z

    if-nez v1, :cond_1

    .line 511
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->setVisibility(I)V

    .line 513
    :cond_1
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/WearMapView;->e(Landroid/content/Context;)V

    if-eqz p2, :cond_2

    .line 514
    iget-boolean p1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->i:Z

    if-nez p1, :cond_2

    .line 515
    iget-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    if-eqz p2, :cond_3

    .line 517
    iget-object p1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->l:Landroid/graphics/Point;

    if-eqz p1, :cond_3

    .line 518
    iget-object p1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->l:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/graphics/Point;

    :cond_3
    if-eqz p2, :cond_4

    .line 520
    iget-object p1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->k:Landroid/graphics/Point;

    if-eqz p1, :cond_4

    .line 521
    iget-object p1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->k:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->l:Landroid/graphics/Point;

    :cond_4
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;Ljava/lang/String;)V
    .locals 1

    .line 537
    new-instance p3, Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-direct {p3, p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-eqz p2, :cond_0

    .line 540
    new-instance p3, Lcom/baidu/mapapi/map/BaiduMap;

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {p2}, Lcom/baidu/mapapi/map/BaiduMapOptions;->a()Lcom/baidu/mapsdkplatform/comapi/map/v;

    move-result-object p2

    invoke-direct {p3, p1, v0, p2}, Lcom/baidu/mapapi/map/BaiduMap;-><init>(Landroid/content/Context;Lcom/baidu/platform/comapi/map/MapSurfaceView;Lcom/baidu/mapsdkplatform/comapi/map/v;)V

    iput-object p3, p0, Lcom/baidu/mapapi/map/WearMapView;->g:Lcom/baidu/mapapi/map/BaiduMap;

    goto :goto_0

    .line 542
    :cond_0
    new-instance p2, Lcom/baidu/mapapi/map/BaiduMap;

    iget-object p3, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    const/4 v0, 0x0

    invoke-direct {p2, p1, p3, v0}, Lcom/baidu/mapapi/map/BaiduMap;-><init>(Landroid/content/Context;Lcom/baidu/platform/comapi/map/MapSurfaceView;Lcom/baidu/mapsdkplatform/comapi/map/v;)V

    iput-object p2, p0, Lcom/baidu/mapapi/map/WearMapView;->g:Lcom/baidu/mapapi/map/BaiduMap;

    .line 545
    :goto_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/map/WearMapView;->addView(Landroid/view/View;)V

    .line 547
    new-instance p1, Lcom/baidu/mapapi/map/ah;

    invoke-direct {p1, p0}, Lcom/baidu/mapapi/map/ah;-><init>(Lcom/baidu/mapapi/map/WearMapView;)V

    .line 692
    iget-object p2, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Lcom/baidu/platform/comapi/map/al;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .line 1196
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1198
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1201
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-lez v1, :cond_1

    .line 1204
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0

    .line 1207
    :cond_1
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1210
    :goto_0
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_2

    .line 1213
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_1

    .line 1216
    :cond_2
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1219
    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private a(Landroid/view/View;Z)V
    .locals 8

    const-wide/16 v0, 0x4b0

    const/4 v2, 0x1

    const-string v3, "alpha"

    const-string v4, "TranslationY"

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz p2, :cond_0

    .line 1349
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v7, v6, [F

    .line 1350
    fill-array-data v7, :array_0

    invoke-static {p1, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v7, v6, [F

    .line 1351
    fill-array-data v7, :array_1

    invoke-static {p1, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v4, v6, v5

    aput-object v3, v6, v2

    .line 1352
    invoke-virtual {p2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1353
    new-instance v2, Lcom/baidu/mapapi/map/ak;

    invoke-direct {v2, p0, p1}, Lcom/baidu/mapapi/map/ak;-><init>(Lcom/baidu/mapapi/map/WearMapView;Landroid/view/View;)V

    invoke-virtual {p2, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1361
    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1362
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 1364
    :cond_0
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1365
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v7, v6, [F

    .line 1366
    fill-array-data v7, :array_2

    invoke-static {p1, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v7, v6, [F

    .line 1367
    fill-array-data v7, :array_3

    invoke-static {p1, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v4, v3, v5

    aput-object p1, v3, v2

    .line 1368
    invoke-virtual {p2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1369
    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1370
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        -0x3db80000    # -50.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        -0x3db80000    # -50.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/WearMapView;Ljava/lang/String;Lcom/baidu/mapapi/map/MapCustomStyleOptions;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/WearMapView;->a(Ljava/lang/String;Lcom/baidu/mapapi/map/MapCustomStyleOptions;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/WearMapView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/WearMapView;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/baidu/mapapi/map/MapCustomStyleOptions;)V
    .locals 3

    .line 459
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, ""

    if-nez v0, :cond_0

    .line 460
    invoke-direct {p0, p1, v2}, Lcom/baidu/mapapi/map/WearMapView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0, v1}, Lcom/baidu/mapapi/map/WearMapView;->setMapCustomStyleEnable(Z)V

    goto :goto_0

    .line 463
    :cond_0
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/MapCustomStyleOptions;->getLocalCustomStyleFilePath()Ljava/lang/String;

    move-result-object p1

    .line 464
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 465
    invoke-direct {p0, p1, v2}, Lcom/baidu/mapapi/map/WearMapView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0, v1}, Lcom/baidu/mapapi/map/WearMapView;->setMapCustomStyleEnable(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1381
    iget-object p2, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1386
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1387
    sget-object p1, Lcom/baidu/mapapi/map/WearMapView;->b:Ljava/lang/String;

    const-string p2, "customStyleFilePath is empty or null, please check!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p2, ".sty"

    .line 1391
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1392
    sget-object p1, Lcom/baidu/mapapi/map/WearMapView;->b:Ljava/lang/String;

    const-string p2, "customStyleFile format is incorrect , please check!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1396
    :cond_2
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1397
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_3

    .line 1398
    sget-object p1, Lcom/baidu/mapapi/map/WearMapView;->b:Ljava/lang/String;

    const-string p2, "customStyleFile does not exist , please check!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1402
    :cond_3
    iget-object p2, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p2, p1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 777
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->k:Z

    if-nez v0, :cond_0

    return-void

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-direct {p0, v0, p1}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/WearMapView;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/baidu/mapapi/map/WearMapView;->H:Z

    return p0
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/WearMapView;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/WearMapView;->H:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/mapapi/map/WearMapView;)Lcom/baidu/platform/comapi/map/MapSurfaceView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    return-object p0
.end method

.method private b()V
    .locals 1

    .line 949
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-nez v0, :cond_0

    return-void

    .line 952
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->v:Z

    if-nez v0, :cond_1

    .line 953
    invoke-direct {p0}, Lcom/baidu/mapapi/map/WearMapView;->d()V

    const/4 v0, 0x1

    .line 954
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->v:Z

    :cond_1
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .line 527
    new-instance v0, Lcom/baidu/mapapi/map/SwipeDismissView;

    invoke-direct {v0, p1, p0}, Lcom/baidu/mapapi/map/SwipeDismissView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->o:Lcom/baidu/mapapi/map/SwipeDismissView;

    .line 528
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x42080000    # 34.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 529
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    sget v1, Lcom/baidu/mapapi/map/WearMapView;->t:I

    invoke-direct {v0, p1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 531
    iget-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->o:Lcom/baidu/mapapi/map/SwipeDismissView;

    const/4 v1, 0x0

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/baidu/mapapi/map/SwipeDismissView;->setBackgroundColor(I)V

    .line 532
    iget-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->o:Lcom/baidu/mapapi/map/SwipeDismissView;

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/SwipeDismissView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 533
    iget-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->o:Lcom/baidu/mapapi/map/SwipeDismissView;

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/map/WearMapView;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/mapapi/map/WearMapView;Z)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/WearMapView;->a(Z)V

    return-void
.end method

.method static synthetic c(Lcom/baidu/mapapi/map/WearMapView;)F
    .locals 0

    .line 64
    iget p0, p0, Lcom/baidu/mapapi/map/WearMapView;->A:F

    return p0
.end method

.method private c()V
    .locals 1

    .line 959
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-nez v0, :cond_0

    return-void

    .line 962
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->v:Z

    if-eqz v0, :cond_1

    .line 963
    invoke-direct {p0}, Lcom/baidu/mapapi/map/WearMapView;->e()V

    const/4 v0, 0x0

    .line 964
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->v:Z

    :cond_1
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 9

    .line 794
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensityDpi()I

    move-result v0

    const/16 v1, 0xb4

    if-ge v0, v1, :cond_0

    const-string v1, "logo_l.png"

    goto :goto_0

    :cond_0
    const-string v1, "logo_h.png"

    .line 798
    :goto_0
    invoke-static {v1, p1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/a;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v1, 0x1e0

    if-le v0, v1, :cond_1

    .line 801
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    .line 802
    invoke-virtual {v7, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 803
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_1
    const/16 v3, 0x140

    if-le v0, v3, :cond_2

    if-gt v0, v1, :cond_2

    .line 806
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 807
    invoke-virtual {v7, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 808
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 811
    :cond_2
    iput-object v2, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Landroid/graphics/Bitmap;

    .line 813
    :goto_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 814
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->h:Landroid/widget/ImageView;

    .line 815
    iget-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 816
    iget-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/map/WearMapView;->addView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method static synthetic d(Lcom/baidu/mapapi/map/WearMapView;)Landroid/widget/ImageView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/baidu/mapapi/map/WearMapView;->r:Landroid/widget/ImageView;

    return-object p0
.end method

.method private d()V
    .locals 1

    .line 969
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-nez v0, :cond_0

    return-void

    .line 972
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->onBackground()V

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    .line 821
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/ad;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/baidu/mapsdkplatform/comapi/map/ad;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    .line 822
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 825
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    new-instance v0, Lcom/baidu/mapapi/map/ai;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/ai;-><init>(Lcom/baidu/mapapi/map/WearMapView;)V

    invoke-virtual {p1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b(Landroid/view/View$OnClickListener;)V

    .line 832
    iget-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    new-instance v0, Lcom/baidu/mapapi/map/aj;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/aj;-><init>(Lcom/baidu/mapapi/map/WearMapView;)V

    invoke-virtual {p1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a(Landroid/view/View$OnClickListener;)V

    .line 839
    iget-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/map/WearMapView;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic e(Lcom/baidu/mapapi/map/WearMapView;)Landroid/widget/TextView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/baidu/mapapi/map/WearMapView;->p:Landroid/widget/TextView;

    return-object p0
.end method

.method private e()V
    .locals 1

    .line 976
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-nez v0, :cond_0

    return-void

    .line 979
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->onForeground()V

    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 8

    .line 844
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Landroid/widget/RelativeLayout;

    .line 845
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 848
    iget-object v2, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 850
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->p:Landroid/widget/TextView;

    .line 851
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xe

    .line 854
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 855
    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->p:Landroid/widget/TextView;

    const-string v4, "#FFFFFF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 856
    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->p:Landroid/widget/TextView;

    const/4 v4, 0x2

    const/high16 v5, 0x41300000    # 11.0f

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 857
    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->p:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 859
    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->p:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 860
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->p:Landroid/widget/TextView;

    const v3, 0x7fffffff

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setId(I)V

    .line 861
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 863
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->q:Landroid/widget/TextView;

    .line 864
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 867
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 868
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 869
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 870
    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->q:Landroid/widget/TextView;

    const-string v6, "#000000"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 871
    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->q:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 872
    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->q:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 873
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 875
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->r:Landroid/widget/ImageView;

    .line 876
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 879
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 880
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 881
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 882
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->p:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 883
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->r:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "icon_scale.9.png"

    .line 885
    invoke-static {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/a;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 886
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    .line 887
    invoke-static {v0}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    .line 888
    new-instance v1, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, p1, v0, v2, v3}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 890
    iget-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->r:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 891
    iget-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->r:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 892
    iget-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/map/WearMapView;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic f(Lcom/baidu/mapapi/map/WearMapView;)Landroid/widget/TextView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/baidu/mapapi/map/WearMapView;->q:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic g(Lcom/baidu/mapapi/map/WearMapView;)Lcom/baidu/mapsdkplatform/comapi/map/ad;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    return-object p0
.end method

.method public static setCustomMapStylePath(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_1

    .line 280
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    sput-object p0, Lcom/baidu/mapapi/map/WearMapView;->c:Ljava/lang/String;

    return-void

    .line 285
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "BDMapSDKException: please check whether the customMapStylePath file exits"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 281
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "BDMapSDKException: customMapStylePath String is illegal"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setIconCustom(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 296
    sput p0, Lcom/baidu/mapapi/map/WearMapView;->e:I

    return-void
.end method

.method public static setLoadCustomMapStyleFileMode(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 314
    sput p0, Lcom/baidu/mapapi/map/WearMapView;->d:I

    return-void
.end method

.method public static setMapCustomEnable(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1016
    instance-of v0, p2, Lcom/baidu/mapapi/map/MapViewLayoutParams;

    if-eqz v0, :cond_0

    .line 1017
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final getMap()Lcom/baidu/mapapi/map/BaiduMap;
    .locals 1

    .line 901
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->g:Lcom/baidu/mapapi/map/BaiduMap;

    iput-object p0, v0, Lcom/baidu/mapapi/map/BaiduMap;->c:Lcom/baidu/mapapi/map/WearMapView;

    .line 902
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->g:Lcom/baidu/mapapi/map/BaiduMap;

    return-object v0
.end method

.method public final getMapLevel()I
    .locals 2

    .line 1006
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getZoomLevel()F

    move-result v0

    .line 1007
    sget-object v1, Lcom/baidu/mapapi/map/WearMapView;->x:Landroid/util/SparseArray;

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getScaleControlViewHeight()I
    .locals 1

    .line 1275
    iget v0, p0, Lcom/baidu/mapapi/map/WearMapView;->F:I

    return v0
.end method

.method public getScaleControlViewWidth()I
    .locals 1

    .line 1267
    iget v0, p0, Lcom/baidu/mapapi/map/WearMapView;->G:I

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 111
    invoke-virtual {p2}, Landroid/view/WindowInsets;->isRound()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 112
    sget-object p1, Lcom/baidu/mapapi/map/WearMapView$ScreenShape;->ROUND:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    iput-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->a:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    goto :goto_0

    .line 114
    :cond_0
    sget-object p1, Lcom/baidu/mapapi/map/WearMapView$ScreenShape;->RECTANGLE:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    iput-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->a:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    :goto_0
    return-object p2
.end method

.method public onCreate(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "mapstatus"

    .line 1332
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/MapStatus;

    .line 1333
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->l:Landroid/graphics/Point;

    if-eqz v1, :cond_1

    const-string v1, "scalePosition"

    .line 1334
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iput-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->l:Landroid/graphics/Point;

    .line 1336
    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/graphics/Point;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "zoomPosition"

    .line 1337
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iput-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/graphics/Point;

    :cond_2
    const-string v1, "mZoomControlEnabled"

    .line 1339
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/baidu/mapapi/map/WearMapView;->y:Z

    const-string v1, "mScaleControlEnabled"

    .line 1340
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/baidu/mapapi/map/WearMapView;->z:Z

    const-string v1, "paddingLeft"

    .line 1341
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "paddingTop"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "paddingRight"

    .line 1342
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "paddingBottom"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 1341
    invoke-virtual {p0, v1, v2, v3, p2}, Lcom/baidu/mapapi/map/WearMapView;->setPadding(IIII)V

    .line 1343
    new-instance p2, Lcom/baidu/mapapi/map/BaiduMapOptions;

    invoke-direct {p2}, Lcom/baidu/mapapi/map/BaiduMapOptions;-><init>()V

    invoke-virtual {p2, v0}, Lcom/baidu/mapapi/map/BaiduMapOptions;->mapStatus(Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/BaiduMapOptions;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 909
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->w:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->unInit()V

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 913
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 914
    iput-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Landroid/graphics/Bitmap;

    .line 916
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b()V

    .line 917
    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->destroy()V

    .line 918
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/map/j;->b()V

    .line 919
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    if-eqz v0, :cond_2

    .line 920
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/WearMapView$AnimationTask;->cancel()Z

    .line 922
    :cond_2
    iput-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->w:Landroid/content/Context;

    return-void
.end method

.method public final onDismiss()V
    .locals 0

    .line 929
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->removeAllViews()V

    return-void
.end method

.method public final onEnterAmbient(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x0

    .line 938
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/WearMapView;->a(I)V

    return-void
.end method

.method public onExitAmbient()V
    .locals 1

    const/4 v0, 0x1

    .line 945
    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/WearMapView;->a(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 698
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 724
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 726
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    if-eqz v0, :cond_1

    .line 727
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/WearMapView$AnimationTask;->cancel()Z

    .line 730
    :cond_1
    new-instance v0, Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/WearMapView$AnimationTask;-><init>(Lcom/baidu/mapapi/map/WearMapView;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    .line 731
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 700
    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 701
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_7

    .line 702
    iget-object v2, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    if-eqz v2, :cond_3

    .line 703
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 704
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/WearMapView$AnimationTask;->cancel()Z

    .line 706
    :cond_3
    iput-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimer:Ljava/util/Timer;

    .line 707
    iput-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    goto :goto_0

    .line 709
    :cond_4
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->getVisibility()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_7

    .line 710
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_6

    .line 711
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    if-eqz v0, :cond_5

    .line 712
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/WearMapView$AnimationTask;->cancel()Z

    .line 714
    :cond_5
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 715
    iput-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    .line 716
    iput-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimer:Ljava/util/Timer;

    :cond_6
    const/4 v0, 0x0

    .line 719
    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/WearMapView;->a(Z)V

    .line 734
    :cond_7
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected final onLayout(ZIIII)V
    .locals 10

    .line 1044
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getChildCount()I

    move-result p1

    .line 1047
    iget-object p2, p0, Lcom/baidu/mapapi/map/WearMapView;->h:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/view/View;)V

    .line 1048
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getWidth()I

    move-result p2

    iget p3, p0, Lcom/baidu/mapapi/map/WearMapView;->B:I

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/baidu/mapapi/map/WearMapView;->C:I

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/baidu/mapapi/map/WearMapView;->h:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 p4, 0x0

    if-lez p2, :cond_0

    .line 1049
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getHeight()I

    move-result p2

    iget p5, p0, Lcom/baidu/mapapi/map/WearMapView;->D:I

    sub-int/2addr p2, p5

    iget p5, p0, Lcom/baidu/mapapi/map/WearMapView;->E:I

    sub-int/2addr p2, p5

    iget-object p5, p0, Lcom/baidu/mapapi/map/WearMapView;->h:Landroid/widget/ImageView;

    invoke-virtual {p5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p5

    sub-int/2addr p2, p5

    if-lez p2, :cond_0

    .line 1050
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getWidth()I

    move-result p2

    iget p3, p0, Lcom/baidu/mapapi/map/WearMapView;->B:I

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/baidu/mapapi/map/WearMapView;->C:I

    sub-int/2addr p2, p3

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float p3, p2, p3

    .line 1051
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getHeight()I

    move-result p2

    iget p5, p0, Lcom/baidu/mapapi/map/WearMapView;->D:I

    sub-int/2addr p2, p5

    iget p5, p0, Lcom/baidu/mapapi/map/WearMapView;->E:I

    sub-int/2addr p2, p5

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getHeight()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p2, p5

    move v9, p3

    move p3, p2

    move p2, v9

    goto :goto_0

    .line 1053
    :cond_0
    iput p4, p0, Lcom/baidu/mapapi/map/WearMapView;->B:I

    .line 1054
    iput p4, p0, Lcom/baidu/mapapi/map/WearMapView;->C:I

    .line 1055
    iput p4, p0, Lcom/baidu/mapapi/map/WearMapView;->E:I

    .line 1056
    iput p4, p0, Lcom/baidu/mapapi/map/WearMapView;->D:I

    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    const/4 p5, 0x0

    :goto_1
    if-ge p5, p1, :cond_f

    .line 1060
    invoke-virtual {p0, p5}, Lcom/baidu/mapapi/map/WearMapView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1061
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-ne v0, v1, :cond_1

    .line 1062
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getHeight()I

    move-result v2

    invoke-virtual {v1, p4, p4, v0, v2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->layout(IIII)V

    goto/16 :goto_6

    .line 1064
    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->h:Landroid/widget/ImageView;

    const/high16 v2, 0x41400000    # 12.0f

    if-ne v0, v1, :cond_3

    .line 1069
    iget v0, p0, Lcom/baidu/mapapi/map/WearMapView;->E:I

    int-to-float v0, v0

    mul-float v2, v2, p3

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 1075
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->a:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    sget-object v2, Lcom/baidu/mapapi/map/WearMapView$ScreenShape;->ROUND:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    if-ne v1, v2, :cond_2

    .line 1076
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-direct {p0, v1}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/view/View;)V

    .line 1078
    sget v1, Lcom/baidu/mapapi/map/WearMapView;->s:I

    div-int/lit8 v1, v1, 0x2

    .line 1079
    iget-object v2, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v2}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/baidu/mapapi/map/WearMapView;->a(II)I

    move-result v2

    .line 1080
    sget v3, Lcom/baidu/mapapi/map/WearMapView;->s:I

    div-int/lit8 v3, v3, 0x2

    sub-int v4, v1, v2

    invoke-direct {p0, v1, v4}, Lcom/baidu/mapapi/map/WearMapView;->a(II)I

    move-result v1

    sub-int/2addr v3, v1

    sget v1, Lcom/baidu/mapapi/map/WearMapView;->u:I

    add-int/2addr v3, v1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1085
    :goto_2
    sget v1, Lcom/baidu/mapapi/map/WearMapView;->t:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    .line 1086
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    sub-int v0, v1, v0

    .line 1087
    sget v2, Lcom/baidu/mapapi/map/WearMapView;->s:I

    sub-int/2addr v2, v3

    .line 1088
    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->h:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v2, v3

    .line 1089
    iget-object v4, p0, Lcom/baidu/mapapi/map/WearMapView;->h:Landroid/widget/ImageView;

    invoke-virtual {v4, v3, v0, v2, v1}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_6

    .line 1092
    :cond_3
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    if-ne v0, v1, :cond_7

    .line 1093
    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a()Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_6

    .line 1096
    :cond_4
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/view/View;)V

    .line 1097
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/graphics/Point;

    if-nez v0, :cond_6

    .line 1100
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->a:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    sget-object v1, Lcom/baidu/mapapi/map/WearMapView$ScreenShape;->ROUND:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    if-ne v0, v1, :cond_5

    .line 1101
    sget v0, Lcom/baidu/mapapi/map/WearMapView;->t:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    .line 1102
    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 1101
    invoke-direct {p0, v0, v1}, Lcom/baidu/mapapi/map/WearMapView;->a(II)I

    move-result v0

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    mul-float v2, v2, p3

    .line 1104
    iget v1, p0, Lcom/baidu/mapapi/map/WearMapView;->D:I

    int-to-float v1, v1

    add-float/2addr v2, v1

    int-to-float v0, v0

    add-float/2addr v2, v0

    float-to-int v0, v2

    .line 1105
    sget v1, Lcom/baidu/mapapi/map/WearMapView;->s:I

    iget-object v2, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v2}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 1106
    iget-object v2, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v2}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    .line 1107
    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v3}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    .line 1108
    iget-object v4, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v4, v1, v0, v2, v3}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->layout(IIII)V

    goto/16 :goto_6

    .line 1111
    :cond_6
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    .line 1112
    invoke-virtual {v4}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    .line 1113
    invoke-virtual {v5}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 1111
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->layout(IIII)V

    goto/16 :goto_6

    .line 1117
    :cond_7
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Landroid/widget/RelativeLayout;

    if-ne v0, v1, :cond_a

    .line 1121
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->a:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    sget-object v1, Lcom/baidu/mapapi/map/WearMapView$ScreenShape;->ROUND:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    if-ne v0, v1, :cond_8

    .line 1122
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/view/View;)V

    .line 1123
    sget v0, Lcom/baidu/mapapi/map/WearMapView;->s:I

    div-int/lit8 v0, v0, 0x2

    .line 1124
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/baidu/mapapi/map/WearMapView;->a(II)I

    move-result v1

    .line 1125
    sget v3, Lcom/baidu/mapapi/map/WearMapView;->s:I

    div-int/lit8 v3, v3, 0x2

    sub-int v4, v0, v1

    invoke-direct {p0, v0, v4}, Lcom/baidu/mapapi/map/WearMapView;->a(II)I

    move-result v0

    sub-int/2addr v3, v0

    sget v0, Lcom/baidu/mapapi/map/WearMapView;->u:I

    add-int/2addr v3, v0

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1127
    :goto_4
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/view/View;)V

    .line 1128
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->l:Landroid/graphics/Point;

    if-nez v0, :cond_9

    .line 1129
    iget v0, p0, Lcom/baidu/mapapi/map/WearMapView;->E:I

    int-to-float v0, v0

    mul-float v2, v2, p3

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 1130
    iget-object v2, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v2

    iput v2, p0, Lcom/baidu/mapapi/map/WearMapView;->G:I

    .line 1131
    iget-object v2, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/baidu/mapapi/map/WearMapView;->F:I

    .line 1132
    iget v2, p0, Lcom/baidu/mapapi/map/WearMapView;->B:I

    int-to-float v2, v2

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float v4, v4, p2

    add-float/2addr v2, v4

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 1133
    sget v3, Lcom/baidu/mapapi/map/WearMapView;->t:I

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    .line 1135
    iget v0, p0, Lcom/baidu/mapapi/map/WearMapView;->G:I

    add-int/2addr v0, v2

    .line 1136
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v3, v1

    .line 1138
    iget-object v4, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2, v1, v0, v3}, Landroid/widget/RelativeLayout;->layout(IIII)V

    goto/16 :goto_6

    .line 1142
    :cond_9
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Landroid/widget/RelativeLayout;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/baidu/mapapi/map/WearMapView;->l:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->l:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Landroid/widget/RelativeLayout;

    .line 1146
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/baidu/mapapi/map/WearMapView;->l:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Landroid/widget/RelativeLayout;

    .line 1148
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 1142
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/RelativeLayout;->layout(IIII)V

    goto :goto_6

    .line 1151
    :cond_a
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->o:Lcom/baidu/mapapi/map/SwipeDismissView;

    if-ne v0, v1, :cond_b

    .line 1152
    invoke-direct {p0, v1}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/view/View;)V

    .line 1154
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->o:Lcom/baidu/mapapi/map/SwipeDismissView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/SwipeDismissView;->getMeasuredWidth()I

    move-result v0

    .line 1155
    sget v1, Lcom/baidu/mapapi/map/WearMapView;->t:I

    .line 1156
    iget-object v2, p0, Lcom/baidu/mapapi/map/WearMapView;->o:Lcom/baidu/mapapi/map/SwipeDismissView;

    invoke-virtual {v2, p4, p4, v0, v1}, Lcom/baidu/mapapi/map/SwipeDismissView;->layout(IIII)V

    goto :goto_6

    .line 1160
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1161
    instance-of v2, v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;

    if-eqz v2, :cond_e

    .line 1162
    check-cast v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;

    .line 1163
    iget-object v2, v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;->c:Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;

    .line 1165
    sget-object v3, Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;->absoluteMode:Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;

    if-ne v2, v3, :cond_c

    .line 1166
    iget-object v2, v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;->b:Landroid/graphics/Point;

    goto :goto_5

    .line 1168
    :cond_c
    iget-object v2, v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;->a:Lcom/baidu/mapapi/model/LatLng;

    .line 1169
    invoke-static {v2}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v2

    .line 1170
    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 1171
    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Landroid/graphics/Point;

    move-result-object v2

    goto :goto_5

    .line 1173
    :cond_d
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1176
    :goto_5
    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/view/View;)V

    .line 1177
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1178
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 1179
    iget v5, v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;->d:F

    .line 1180
    iget v6, v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;->e:F

    .line 1181
    iget v7, v2, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    int-to-float v8, v3

    mul-float v5, v5, v8

    sub-float/2addr v7, v5

    float-to-int v5, v7

    .line 1182
    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    int-to-float v7, v4

    mul-float v6, v6, v7

    sub-float/2addr v2, v6

    float-to-int v2, v2

    iget v1, v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;->f:I

    add-int/2addr v2, v1

    add-int/2addr v3, v5

    add-int/2addr v4, v2

    .line 1183
    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    :cond_e
    :goto_6
    add-int/lit8 p5, p5, 0x1

    goto/16 :goto_1

    :cond_f
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 1301
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->g:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1304
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v0

    const-string v1, "mapstatus"

    .line 1305
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1306
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->l:Landroid/graphics/Point;

    if-eqz v0, :cond_1

    const-string v1, "scalePosition"

    .line 1307
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1309
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/graphics/Point;

    if-eqz v0, :cond_2

    const-string/jumbo v1, "zoomPosition"

    .line 1310
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1312
    :cond_2
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->y:Z

    const-string v1, "mZoomControlEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1313
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->z:Z

    const-string v1, "mScaleControlEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1314
    iget v0, p0, Lcom/baidu/mapapi/map/WearMapView;->B:I

    const-string v1, "paddingLeft"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1315
    iget v0, p0, Lcom/baidu/mapapi/map/WearMapView;->D:I

    const-string v1, "paddingTop"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1316
    iget v0, p0, Lcom/baidu/mapapi/map/WearMapView;->C:I

    const-string v1, "paddingRight"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1317
    iget v0, p0, Lcom/baidu/mapapi/map/WearMapView;->E:I

    const-string v1, "paddingBottom"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 1026
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->h:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    return-void

    .line 1029
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public setCustomStyleFilePathAndMode(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public setMapCustomStyle(Lcom/baidu/mapapi/map/MapCustomStyleOptions;Lcom/baidu/mapapi/map/CustomMapStyleCallBack;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 387
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MapCustomStyleOptions;->getCustomMapStyleId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 388
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 396
    :cond_1
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/map/f;->a()Lcom/baidu/mapsdkplatform/comapi/map/f;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mapapi/map/WearMapView;->w:Landroid/content/Context;

    new-instance v3, Lcom/baidu/mapapi/map/ag;

    invoke-direct {v3, p0, p2, p1}, Lcom/baidu/mapapi/map/ag;-><init>(Lcom/baidu/mapapi/map/WearMapView;Lcom/baidu/mapapi/map/CustomMapStyleCallBack;Lcom/baidu/mapapi/map/MapCustomStyleOptions;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/baidu/mapsdkplatform/comapi/map/f;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mapsdkplatform/comapi/map/f$a;)V

    return-void

    .line 389
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MapCustomStyleOptions;->getLocalCustomStyleFilePath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 390
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, ""

    .line 391
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/WearMapView;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public setMapCustomStyleEnable(Z)V
    .locals 0

    return-void
.end method

.method public setMapCustomStylePath(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 357
    invoke-direct {p0, p1, v0}, Lcom/baidu/mapapi/map/WearMapView;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOnDismissCallbackListener(Lcom/baidu/mapapi/map/WearMapView$OnDismissCallback;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->o:Lcom/baidu/mapapi/map/SwipeDismissView;

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/SwipeDismissView;->setCallback(Lcom/baidu/mapapi/map/WearMapView$OnDismissCallback;)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 1034
    iput p1, p0, Lcom/baidu/mapapi/map/WearMapView;->B:I

    .line 1035
    iput p2, p0, Lcom/baidu/mapapi/map/WearMapView;->D:I

    .line 1036
    iput p3, p0, Lcom/baidu/mapapi/map/WearMapView;->C:I

    .line 1037
    iput p4, p0, Lcom/baidu/mapapi/map/WearMapView;->E:I

    return-void
.end method

.method public setScaleControlPosition(Landroid/graphics/Point;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1288
    :cond_0
    iget v0, p1, Landroid/graphics/Point;->x:I

    if-ltz v0, :cond_1

    iget v0, p1, Landroid/graphics/Point;->y:I

    if-ltz v0, :cond_1

    iget v0, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 1289
    iput-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->l:Landroid/graphics/Point;

    .line 1290
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setShape(Lcom/baidu/mapapi/map/WearMapView$ScreenShape;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->a:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    return-void
.end method

.method public setViewAnimitionEnable(Z)V
    .locals 0

    .line 789
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/WearMapView;->k:Z

    return-void
.end method

.method public setZoomControlsPosition(Landroid/graphics/Point;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1245
    :cond_0
    iget v0, p1, Landroid/graphics/Point;->x:I

    if-ltz v0, :cond_1

    iget v0, p1, Landroid/graphics/Point;->y:I

    if-ltz v0, :cond_1

    iget v0, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 1246
    iput-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/graphics/Point;

    .line 1247
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public showScaleControl(Z)V
    .locals 2

    .line 1258
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1259
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/WearMapView;->z:Z

    return-void
.end method

.method public showZoomControls(Z)V
    .locals 2

    .line 1229
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1230
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->setVisibility(I)V

    .line 1231
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/WearMapView;->y:Z

    :cond_1
    return-void
.end method
