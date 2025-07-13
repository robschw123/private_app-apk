.class public final Lcom/baidu/mapapi/map/MapView;
.super Landroid/view/ViewGroup;
.source "MapView.java"


# static fields
.field private static final a:Ljava/lang/String; = "MapView"

.field private static b:Ljava/lang/String;

.field private static c:I

.field private static d:I

.field private static final q:Landroid/util/SparseIntArray;


# instance fields
.field private A:I

.field private B:Z

.field private e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

.field private f:Lcom/baidu/mapapi/map/BaiduMap;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/graphics/Bitmap;

.field private i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

.field private j:Landroid/graphics/Point;

.field private k:Landroid/graphics/Point;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/content/Context;

.field private r:I

.field private s:Z

.field private t:Z

.field private u:F

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 83
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/map/MapView;->q:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const v2, 0x1e8480

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v1, 0x4

    const v2, 0xf4240

    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v1, 0x5

    const v2, 0x7a120

    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v2, 0x6

    const v3, 0x30d40

    .line 89
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v2, 0x7

    const v3, 0x186a0

    .line 90
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v2, 0x8

    const v3, 0xc350

    .line 91
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v2, 0x9

    const/16 v3, 0x61a8

    .line 92
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v2, 0xa

    const/16 v3, 0x4e20

    .line 93
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v3, 0xb

    const/16 v4, 0x2710

    .line 94
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v3, 0xc

    const/16 v4, 0x1388

    .line 95
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v3, 0xd

    const/16 v4, 0x7d0

    .line 96
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v3, 0xe

    const/16 v4, 0x3e8

    .line 97
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v3, 0xf

    const/16 v4, 0x1f4

    .line 98
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v3, 0x10

    const/16 v4, 0xc8

    .line 99
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v3, 0x11

    const/16 v4, 0x64

    .line 100
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v3, 0x12

    const/16 v4, 0x32

    .line 101
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v3, 0x13

    const/16 v4, 0x14

    .line 102
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 103
    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v2, 0x15

    .line 104
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x16

    const/4 v2, 0x2

    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x17

    .line 106
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x18

    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x19

    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x1a

    .line 109
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 138
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 112
    sget-object v0, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionleftBottom:Lcom/baidu/mapapi/map/LogoPosition;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/LogoPosition;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/map/MapView;->r:I

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/MapView;->s:Z

    .line 114
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/MapView;->t:Z

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/MapView;->B:Z

    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, p1, v0}, Lcom/baidu/mapapi/map/MapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 148
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    sget-object p2, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionleftBottom:Lcom/baidu/mapapi/map/LogoPosition;

    invoke-virtual {p2}, Lcom/baidu/mapapi/map/LogoPosition;->ordinal()I

    move-result p2

    iput p2, p0, Lcom/baidu/mapapi/map/MapView;->r:I

    const/4 p2, 0x1

    .line 113
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/MapView;->s:Z

    .line 114
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/MapView;->t:Z

    const/4 p2, 0x0

    .line 130
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/MapView;->B:Z

    const/4 p2, 0x0

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/MapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 158
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    sget-object p2, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionleftBottom:Lcom/baidu/mapapi/map/LogoPosition;

    invoke-virtual {p2}, Lcom/baidu/mapapi/map/LogoPosition;->ordinal()I

    move-result p2

    iput p2, p0, Lcom/baidu/mapapi/map/MapView;->r:I

    const/4 p2, 0x1

    .line 113
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/MapView;->s:Z

    .line 114
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/MapView;->t:Z

    const/4 p2, 0x0

    .line 130
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/MapView;->B:Z

    const/4 p2, 0x0

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/MapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V
    .locals 1

    .line 169
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 112
    sget-object v0, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionleftBottom:Lcom/baidu/mapapi/map/LogoPosition;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/LogoPosition;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/map/MapView;->r:I

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/MapView;->s:Z

    .line 114
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/MapView;->t:Z

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/MapView;->B:Z

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/MapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/MapView;F)F
    .locals 0

    .line 53
    iput p1, p0, Lcom/baidu/mapapi/map/MapView;->u:F

    return p1
.end method

.method static synthetic a()Landroid/util/SparseIntArray;
    .locals 1

    .line 53
    sget-object v0, Lcom/baidu/mapapi/map/MapView;->q:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 9

    .line 634
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensityDpi()I

    move-result v0

    const/16 v1, 0xb4

    if-ge v0, v1, :cond_0

    const-string v1, "logo_l.png"

    goto :goto_0

    :cond_0
    const-string v1, "logo_h.png"

    .line 638
    :goto_0
    invoke-static {v1, p1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/a;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/16 v1, 0x1e0

    if-le v0, v1, :cond_2

    .line 645
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    .line 646
    invoke-virtual {v7, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 647
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    const/16 v1, 0x140

    if-le v0, v1, :cond_3

    .line 649
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 650
    invoke-virtual {v7, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 651
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 653
    :cond_3
    iput-object v2, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/graphics/Bitmap;

    .line 655
    :goto_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 656
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    .line 657
    iget-object p1, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 658
    iget-object p1, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/map/MapView;->addView(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V
    .locals 2

    .line 404
    iput-object p1, p0, Lcom/baidu/mapapi/map/MapView;->p:Landroid/content/Context;

    .line 405
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/map/j;->a()V

    .line 406
    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->init()V

    .line 408
    sget-object v0, Lcom/baidu/mapapi/map/MapView;->b:Ljava/lang/String;

    sget v1, Lcom/baidu/mapapi/map/MapView;->c:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/baidu/mapapi/map/MapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;Ljava/lang/String;I)V

    .line 410
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/MapView;->a(Landroid/content/Context;)V

    .line 412
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/MapView;->b(Landroid/content/Context;)V

    const/4 v0, 0x4

    if-eqz p2, :cond_0

    .line 414
    iget-boolean v1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->h:Z

    if-nez v1, :cond_0

    .line 415
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->setVisibility(I)V

    .line 418
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/MapView;->c(Landroid/content/Context;)V

    if-eqz p2, :cond_1

    .line 420
    iget-boolean p1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->i:Z

    if-nez p1, :cond_1

    .line 421
    iget-object p1, p0, Lcom/baidu/mapapi/map/MapView;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    if-eqz p2, :cond_2

    .line 423
    iget-object p1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->j:Lcom/baidu/mapapi/map/LogoPosition;

    if-eqz p1, :cond_2

    .line 424
    iget-object p1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->j:Lcom/baidu/mapapi/map/LogoPosition;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/LogoPosition;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/MapView;->r:I

    :cond_2
    if-eqz p2, :cond_3

    .line 426
    iget-object p1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->l:Landroid/graphics/Point;

    if-eqz p1, :cond_3

    .line 427
    iget-object p1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->l:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/baidu/mapapi/map/MapView;->k:Landroid/graphics/Point;

    :cond_3
    if-eqz p2, :cond_4

    .line 429
    iget-object p1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->k:Landroid/graphics/Point;

    if-eqz p1, :cond_4

    .line 430
    iget-object p1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->k:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/baidu/mapapi/map/MapView;->j:Landroid/graphics/Point;

    :cond_4
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;Ljava/lang/String;I)V
    .locals 0

    .line 436
    new-instance p3, Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-direct {p3, p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-eqz p2, :cond_0

    .line 439
    new-instance p3, Lcom/baidu/mapapi/map/BaiduMap;

    iget-object p4, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {p2}, Lcom/baidu/mapapi/map/BaiduMapOptions;->a()Lcom/baidu/mapsdkplatform/comapi/map/v;

    move-result-object p2

    invoke-direct {p3, p1, p4, p2}, Lcom/baidu/mapapi/map/BaiduMap;-><init>(Landroid/content/Context;Lcom/baidu/platform/comapi/map/MapSurfaceView;Lcom/baidu/mapsdkplatform/comapi/map/v;)V

    iput-object p3, p0, Lcom/baidu/mapapi/map/MapView;->f:Lcom/baidu/mapapi/map/BaiduMap;

    goto :goto_0

    .line 441
    :cond_0
    new-instance p2, Lcom/baidu/mapapi/map/BaiduMap;

    iget-object p3, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    const/4 p4, 0x0

    invoke-direct {p2, p1, p3, p4}, Lcom/baidu/mapapi/map/BaiduMap;-><init>(Landroid/content/Context;Lcom/baidu/platform/comapi/map/MapSurfaceView;Lcom/baidu/mapsdkplatform/comapi/map/v;)V

    iput-object p2, p0, Lcom/baidu/mapapi/map/MapView;->f:Lcom/baidu/mapapi/map/BaiduMap;

    .line 444
    :goto_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/map/MapView;->addView(Landroid/view/View;)V

    .line 446
    new-instance p1, Lcom/baidu/mapapi/map/r;

    invoke-direct {p1, p0}, Lcom/baidu/mapapi/map/r;-><init>(Lcom/baidu/mapapi/map/MapView;)V

    .line 626
    iget-object p2, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 627
    iget-object p2, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Lcom/baidu/platform/comapi/map/al;)V

    :cond_1
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .line 1058
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1060
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1062
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-lez v1, :cond_1

    .line 1065
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0

    .line 1067
    :cond_1
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1069
    :goto_0
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_2

    .line 1072
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_1

    .line 1074
    :cond_2
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1076
    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/MapView;Ljava/lang/String;Lcom/baidu/mapapi/map/MapCustomStyleOptions;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/MapView;->a(Ljava/lang/String;Lcom/baidu/mapapi/map/MapCustomStyleOptions;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/MapView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/MapView;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/baidu/mapapi/map/MapCustomStyleOptions;)V
    .locals 3

    .line 375
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, ""

    if-nez v0, :cond_0

    .line 376
    invoke-direct {p0, p1, v2}, Lcom/baidu/mapapi/map/MapView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0, v1}, Lcom/baidu/mapapi/map/MapView;->setMapCustomStyleEnable(Z)V

    goto :goto_0

    .line 379
    :cond_0
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/MapCustomStyleOptions;->getLocalCustomStyleFilePath()Ljava/lang/String;

    move-result-object p1

    .line 380
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 381
    invoke-direct {p0, p1, v2}, Lcom/baidu/mapapi/map/MapView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0, v1}, Lcom/baidu/mapapi/map/MapView;->setMapCustomStyleEnable(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1343
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1348
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1349
    sget-object p1, Lcom/baidu/mapapi/map/MapView;->a:Ljava/lang/String;

    const-string p2, "customStyleFilePath is empty or null, please check!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, ".sty"

    .line 1353
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1354
    sget-object p1, Lcom/baidu/mapapi/map/MapView;->a:Ljava/lang/String;

    const-string p2, "customStyleFile format is incorrect , please check!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1358
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1359
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1360
    sget-object p1, Lcom/baidu/mapapi/map/MapView;->a:Ljava/lang/String;

    const-string p2, "customStyleFile does not exist , please check!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1365
    :cond_3
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/map/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/MapView;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/baidu/mapapi/map/MapView;->B:Z

    return p0
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/MapView;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/MapView;->B:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/mapapi/map/MapView;)Lcom/baidu/platform/comapi/map/MapSurfaceView;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    return-object p0
.end method

.method private b()V
    .locals 5

    .line 706
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    .line 707
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->D()Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object v0

    iget v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/x;->a:F

    .line 712
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    iget-object v2, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object v2

    iget v2, v2, Lcom/baidu/mapsdkplatform/comapi/map/d;->b:F

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b(Z)V

    .line 713
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    iget-object v2, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object v2

    iget v2, v2, Lcom/baidu/mapsdkplatform/comapi/map/d;->a:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v3}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a(Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .line 663
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/ad;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/baidu/mapsdkplatform/comapi/map/ad;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    .line 664
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 668
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    new-instance v0, Lcom/baidu/mapapi/map/s;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/s;-><init>(Lcom/baidu/mapapi/map/MapView;)V

    invoke-virtual {p1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b(Landroid/view/View$OnClickListener;)V

    .line 685
    iget-object p1, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    new-instance v0, Lcom/baidu/mapapi/map/t;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/t;-><init>(Lcom/baidu/mapapi/map/MapView;)V

    invoke-virtual {p1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a(Landroid/view/View$OnClickListener;)V

    .line 702
    iget-object p1, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/map/MapView;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/baidu/mapapi/map/MapView;)F
    .locals 0

    .line 53
    iget p0, p0, Lcom/baidu/mapapi/map/MapView;->u:F

    return p0
.end method

.method private c(Landroid/content/Context;)V
    .locals 8

    .line 718
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapView;->l:Landroid/widget/RelativeLayout;

    .line 719
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 721
    iget-object v2, p0, Lcom/baidu/mapapi/map/MapView;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 723
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapView;->m:Landroid/widget/TextView;

    .line 724
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xe

    .line 726
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 727
    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->m:Landroid/widget/TextView;

    const-string v4, "#FFFFFF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 728
    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->m:Landroid/widget/TextView;

    const/4 v4, 0x2

    const/high16 v5, 0x41300000    # 11.0f

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 729
    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->m:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 730
    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->m:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 731
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->m:Landroid/widget/TextView;

    const v3, 0x7fffffff

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setId(I)V

    .line 732
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->l:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 734
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapView;->n:Landroid/widget/TextView;

    .line 735
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 737
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 738
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 739
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 740
    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->n:Landroid/widget/TextView;

    const-string v6, "#000000"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 741
    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->n:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 742
    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->n:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 743
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->l:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 745
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapView;->o:Landroid/widget/ImageView;

    .line 746
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 748
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 749
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 750
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 751
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->m:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 752
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->o:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 753
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "icon_scale.9.png"

    .line 754
    invoke-static {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/a;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 756
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    .line 757
    invoke-static {v0}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 759
    new-instance v1, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, p1, v0, v2, v3}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 760
    iget-object p1, p0, Lcom/baidu/mapapi/map/MapView;->o:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 763
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/MapView;->l:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->o:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 766
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapapi/map/MapView;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/map/MapView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private c()Z
    .locals 2

    .line 880
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic d(Lcom/baidu/mapapi/map/MapView;)Landroid/widget/ImageView;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/baidu/mapapi/map/MapView;->o:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic e(Lcom/baidu/mapapi/map/MapView;)Landroid/widget/TextView;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/baidu/mapapi/map/MapView;->m:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic f(Lcom/baidu/mapapi/map/MapView;)Landroid/widget/TextView;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/baidu/mapapi/map/MapView;->n:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic g(Lcom/baidu/mapapi/map/MapView;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/baidu/mapapi/map/MapView;->b()V

    return-void
.end method

.method public static setCustomMapStylePath(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_1

    .line 184
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    sput-object p0, Lcom/baidu/mapapi/map/MapView;->b:Ljava/lang/String;

    return-void

    .line 189
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "BDMapSDKException: please check whether the customMapStylePath file exits"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 185
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

    .line 202
    sput p0, Lcom/baidu/mapapi/map/MapView;->d:I

    return-void
.end method

.method public static setLoadCustomMapStyleFileMode(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 220
    sput p0, Lcom/baidu/mapapi/map/MapView;->c:I

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

    .line 866
    instance-of v0, p2, Lcom/baidu/mapapi/map/MapViewLayoutParams;

    if-eqz v0, :cond_1

    .line 868
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 869
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 871
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public cancelRenderMap()V
    .locals 0

    return-void
.end method

.method public final getLogoPosition()Lcom/baidu/mapapi/map/LogoPosition;
    .locals 2

    .line 821
    iget v0, p0, Lcom/baidu/mapapi/map/MapView;->r:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 833
    sget-object v0, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionleftBottom:Lcom/baidu/mapapi/map/LogoPosition;

    return-object v0

    .line 831
    :cond_0
    sget-object v0, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionRightTop:Lcom/baidu/mapapi/map/LogoPosition;

    return-object v0

    .line 829
    :cond_1
    sget-object v0, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionRightBottom:Lcom/baidu/mapapi/map/LogoPosition;

    return-object v0

    .line 827
    :cond_2
    sget-object v0, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionCenterTop:Lcom/baidu/mapapi/map/LogoPosition;

    return-object v0

    .line 825
    :cond_3
    sget-object v0, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionCenterBottom:Lcom/baidu/mapapi/map/LogoPosition;

    return-object v0

    .line 823
    :cond_4
    sget-object v0, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionleftTop:Lcom/baidu/mapapi/map/LogoPosition;

    return-object v0
.end method

.method public final getMap()Lcom/baidu/mapapi/map/BaiduMap;
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->f:Lcom/baidu/mapapi/map/BaiduMap;

    iput-object p0, v0, Lcom/baidu/mapapi/map/BaiduMap;->a:Lcom/baidu/mapapi/map/MapView;

    .line 774
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->f:Lcom/baidu/mapapi/map/BaiduMap;

    return-object v0
.end method

.method public final getMapLevel()I
    .locals 2

    .line 843
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getZoomLevel()F

    move-result v0

    .line 844
    sget-object v1, Lcom/baidu/mapapi/map/MapView;->q:Landroid/util/SparseIntArray;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public getScaleControlPosition()Landroid/graphics/Point;
    .locals 1

    .line 1173
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->j:Landroid/graphics/Point;

    return-object v0
.end method

.method public getScaleControlViewHeight()I
    .locals 1

    .line 1149
    iget v0, p0, Lcom/baidu/mapapi/map/MapView;->z:I

    return v0
.end method

.method public getScaleControlViewWidth()I
    .locals 1

    .line 1140
    iget v0, p0, Lcom/baidu/mapapi/map/MapView;->A:I

    return v0
.end method

.method public getZoomControlsPosition()Landroid/graphics/Point;
    .locals 1

    .line 1112
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->k:Landroid/graphics/Point;

    return-object v0
.end method

.method public handleMultiTouch(FFFF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public handleTouchDown(FF)V
    .locals 0

    .line 1261
    iget-object p1, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method

.method public handleTouchMove(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public handleTouchUp(FF)Z
    .locals 0

    .line 1275
    iget-object p1, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    :cond_0
    return p2
.end method

.method public inRangeOfView(FF)Z
    .locals 1

    .line 1291
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->inRangeOfView(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isShowScaleControl()Z
    .locals 1

    .line 1131
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/MapView;->t:Z

    return v0
.end method

.method public onCreate(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "mapstatus"

    .line 1216
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/MapStatus;

    .line 1217
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->j:Landroid/graphics/Point;

    if-eqz v1, :cond_1

    const-string v1, "scalePosition"

    .line 1218
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iput-object v1, p0, Lcom/baidu/mapapi/map/MapView;->j:Landroid/graphics/Point;

    .line 1220
    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->k:Landroid/graphics/Point;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "zoomPosition"

    .line 1221
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iput-object v1, p0, Lcom/baidu/mapapi/map/MapView;->k:Landroid/graphics/Point;

    :cond_2
    const-string v1, "mZoomControlEnabled"

    .line 1223
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/baidu/mapapi/map/MapView;->s:Z

    const-string v1, "mScaleControlEnabled"

    .line 1224
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/baidu/mapapi/map/MapView;->t:Z

    const-string v1, "logoPosition"

    .line 1225
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/baidu/mapapi/map/MapView;->r:I

    const-string v1, "paddingLeft"

    .line 1226
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "paddingTop"

    .line 1227
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "paddingRight"

    .line 1228
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "paddingBottom"

    .line 1229
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 1226
    invoke-virtual {p0, v1, v2, v3, p2}, Lcom/baidu/mapapi/map/MapView;->setPadding(IIII)V

    .line 1230
    new-instance p2, Lcom/baidu/mapapi/map/BaiduMapOptions;

    invoke-direct {p2}, Lcom/baidu/mapapi/map/BaiduMapOptions;-><init>()V

    invoke-virtual {p2, v0}, Lcom/baidu/mapapi/map/BaiduMapOptions;->mapStatus(Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/BaiduMapOptions;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/MapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 781
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->f:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_0

    .line 782
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->c()V

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-eqz v0, :cond_1

    .line 785
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->unInit()V

    .line 787
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 788
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 789
    iput-object v1, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/graphics/Bitmap;

    .line 793
    :cond_2
    sget-object v0, Lcom/baidu/mapapi/map/MapView;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 794
    sput-object v1, Lcom/baidu/mapapi/map/MapView;->b:Ljava/lang/String;

    .line 797
    :cond_3
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b()V

    .line 798
    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->destroy()V

    .line 799
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/map/j;->b()V

    .line 800
    iput-object v1, p0, Lcom/baidu/mapapi/map/MapView;->p:Landroid/content/Context;

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 9

    .line 916
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getChildCount()I

    move-result p1

    .line 919
    iget-object p2, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcom/baidu/mapapi/map/MapView;->a(Landroid/view/View;)V

    .line 920
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getWidth()I

    move-result p2

    iget p3, p0, Lcom/baidu/mapapi/map/MapView;->v:I

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/baidu/mapapi/map/MapView;->w:I

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 p4, 0x0

    if-lez p2, :cond_0

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getHeight()I

    move-result p2

    iget p5, p0, Lcom/baidu/mapapi/map/MapView;->x:I

    sub-int/2addr p2, p5

    iget p5, p0, Lcom/baidu/mapapi/map/MapView;->y:I

    sub-int/2addr p2, p5

    iget-object p5, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {p5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p5

    sub-int/2addr p2, p5

    if-lez p2, :cond_0

    .line 921
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getWidth()I

    move-result p2

    iget p3, p0, Lcom/baidu/mapapi/map/MapView;->v:I

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/baidu/mapapi/map/MapView;->w:I

    sub-int/2addr p2, p3

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float p3, p2, p3

    .line 922
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getHeight()I

    move-result p2

    iget p5, p0, Lcom/baidu/mapapi/map/MapView;->x:I

    sub-int/2addr p2, p5

    iget p5, p0, Lcom/baidu/mapapi/map/MapView;->y:I

    sub-int/2addr p2, p5

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getHeight()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p2, p5

    goto :goto_0

    .line 924
    :cond_0
    iput p4, p0, Lcom/baidu/mapapi/map/MapView;->v:I

    .line 925
    iput p4, p0, Lcom/baidu/mapapi/map/MapView;->w:I

    .line 926
    iput p4, p0, Lcom/baidu/mapapi/map/MapView;->y:I

    .line 927
    iput p4, p0, Lcom/baidu/mapapi/map/MapView;->x:I

    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    const/4 p5, 0x0

    :goto_1
    if-ge p5, p1, :cond_12

    .line 931
    invoke-virtual {p0, p5}, Lcom/baidu/mapapi/map/MapView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_5

    .line 935
    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-ne v0, v1, :cond_2

    .line 936
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getHeight()I

    move-result v2

    invoke-virtual {v1, p4, p4, v0, v2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->layout(IIII)V

    goto/16 :goto_5

    .line 938
    :cond_2
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    const/4 v2, 0x4

    const/high16 v3, 0x40a00000    # 5.0f

    if-ne v0, v1, :cond_8

    .line 943
    iget v0, p0, Lcom/baidu/mapapi/map/MapView;->v:I

    int-to-float v0, v0

    mul-float v4, p3, v3

    add-float/2addr v0, v4

    float-to-int v0, v0

    .line 944
    iget v5, p0, Lcom/baidu/mapapi/map/MapView;->w:I

    int-to-float v5, v5

    add-float/2addr v5, v4

    float-to-int v4, v5

    .line 945
    iget v5, p0, Lcom/baidu/mapapi/map/MapView;->x:I

    int-to-float v5, v5

    mul-float v3, v3, p2

    add-float/2addr v5, v3

    float-to-int v5, v5

    .line 946
    iget v6, p0, Lcom/baidu/mapapi/map/MapView;->y:I

    int-to-float v6, v6

    add-float/2addr v6, v3

    float-to-int v3, v6

    .line 947
    iget v6, p0, Lcom/baidu/mapapi/map/MapView;->r:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_7

    const/4 v7, 0x2

    if-eq v6, v7, :cond_6

    const/4 v8, 0x3

    if-eq v6, v8, :cond_5

    if-eq v6, v2, :cond_4

    const/4 v2, 0x5

    if-eq v6, v2, :cond_3

    .line 980
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v3

    .line 981
    iget-object v2, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    .line 982
    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    sub-int v5, v1, v3

    goto/16 :goto_3

    .line 974
    :cond_3
    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    add-int v1, v5, v0

    .line 975
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getWidth()I

    move-result v0

    sub-int v2, v0, v4

    .line 976
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    goto :goto_2

    .line 967
    :cond_4
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getHeight()I

    move-result v0

    sub-int v1, v0, v3

    .line 968
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    sub-int v5, v1, v0

    .line 969
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getWidth()I

    move-result v0

    sub-int v2, v0, v4

    .line 970
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    :goto_2
    sub-int v0, v2, v0

    goto :goto_3

    .line 962
    :cond_5
    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    add-int v1, v5, v0

    .line 963
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/baidu/mapapi/map/MapView;->v:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/baidu/mapapi/map/MapView;->w:I

    sub-int/2addr v0, v2

    div-int/2addr v0, v7

    .line 964
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/baidu/mapapi/map/MapView;->v:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/baidu/mapapi/map/MapView;->w:I

    sub-int/2addr v2, v3

    div-int/2addr v2, v7

    goto :goto_3

    .line 955
    :cond_6
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getHeight()I

    move-result v0

    sub-int v1, v0, v3

    .line 956
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    sub-int v5, v1, v0

    .line 957
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/baidu/mapapi/map/MapView;->v:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/baidu/mapapi/map/MapView;->w:I

    sub-int/2addr v0, v2

    div-int/2addr v0, v7

    .line 958
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/baidu/mapapi/map/MapView;->v:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/baidu/mapapi/map/MapView;->w:I

    sub-int/2addr v2, v3

    div-int/2addr v2, v7

    goto :goto_3

    .line 951
    :cond_7
    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v5

    .line 952
    iget-object v2, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    .line 985
    :goto_3
    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v3, v0, v5, v2, v1}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_5

    .line 987
    :cond_8
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    if-ne v0, v1, :cond_c

    .line 988
    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a()Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_5

    .line 991
    :cond_9
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/MapView;->a(Landroid/view/View;)V

    .line 992
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->k:Landroid/graphics/Point;

    if-nez v0, :cond_b

    .line 993
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0xf

    int-to-float v0, v0

    mul-float v0, v0, p2

    iget v1, p0, Lcom/baidu/mapapi/map/MapView;->x:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 994
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0xf

    int-to-float v1, v1

    mul-float v1, v1, p3

    iget v3, p0, Lcom/baidu/mapapi/map/MapView;->v:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 995
    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v3}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v1, v3

    .line 996
    iget-object v4, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v4}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->getMeasuredHeight()I

    move-result v4

    sub-int v4, v0, v4

    .line 997
    iget v5, p0, Lcom/baidu/mapapi/map/MapView;->r:I

    if-ne v5, v2, :cond_a

    .line 998
    iget-object v2, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 999
    iget-object v2, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v4, v2

    .line 1001
    :cond_a
    iget-object v2, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->layout(IIII)V

    goto/16 :goto_5

    .line 1003
    :cond_b
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/baidu/mapapi/map/MapView;->k:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->k:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v4}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/baidu/mapapi/map/MapView;->k:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    .line 1004
    invoke-virtual {v5}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 1003
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->layout(IIII)V

    goto/16 :goto_5

    .line 1007
    :cond_c
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->l:Landroid/widget/RelativeLayout;

    if-ne v0, v1, :cond_e

    .line 1008
    invoke-direct {p0, v1}, Lcom/baidu/mapapi/map/MapView;->a(Landroid/view/View;)V

    .line 1009
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->j:Landroid/graphics/Point;

    if-nez v0, :cond_d

    .line 1010
    iget v0, p0, Lcom/baidu/mapapi/map/MapView;->y:I

    int-to-float v0, v0

    mul-float v1, p2, v3

    add-float/2addr v0, v1

    const/high16 v1, 0x42600000    # 56.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1011
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/baidu/mapapi/map/MapView;->A:I

    .line 1012
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/baidu/mapapi/map/MapView;->z:I

    .line 1013
    iget v1, p0, Lcom/baidu/mapapi/map/MapView;->v:I

    int-to-float v1, v1

    mul-float v3, v3, p3

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 1014
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v2, v0

    .line 1015
    iget v0, p0, Lcom/baidu/mapapi/map/MapView;->A:I

    add-int/2addr v0, v1

    .line 1016
    iget v3, p0, Lcom/baidu/mapapi/map/MapView;->z:I

    add-int/2addr v3, v2

    .line 1018
    iget-object v4, p0, Lcom/baidu/mapapi/map/MapView;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v1, v2, v0, v3}, Landroid/widget/RelativeLayout;->layout(IIII)V

    goto/16 :goto_5

    .line 1020
    :cond_d
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->l:Landroid/widget/RelativeLayout;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/baidu/mapapi/map/MapView;->j:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->j:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/baidu/mapapi/map/MapView;->l:Landroid/widget/RelativeLayout;

    .line 1021
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/baidu/mapapi/map/MapView;->j:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/baidu/mapapi/map/MapView;->l:Landroid/widget/RelativeLayout;

    .line 1022
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 1020
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/RelativeLayout;->layout(IIII)V

    goto :goto_5

    .line 1026
    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1027
    instance-of v2, v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;

    if-eqz v2, :cond_11

    .line 1028
    check-cast v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;

    .line 1029
    iget-object v2, v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;->c:Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;

    .line 1031
    sget-object v3, Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;->absoluteMode:Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;

    if-ne v2, v3, :cond_f

    .line 1032
    iget-object v2, v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;->b:Landroid/graphics/Point;

    goto :goto_4

    .line 1034
    :cond_f
    iget-object v2, v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;->a:Lcom/baidu/mapapi/model/LatLng;

    .line 1035
    invoke-static {v2}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v2

    .line 1036
    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 1037
    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Landroid/graphics/Point;

    move-result-object v2

    goto :goto_4

    .line 1039
    :cond_10
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1042
    :goto_4
    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/MapView;->a(Landroid/view/View;)V

    .line 1043
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1044
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 1045
    iget v5, v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;->d:F

    .line 1046
    iget v6, v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;->e:F

    .line 1047
    iget v7, v2, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    int-to-float v8, v3

    mul-float v5, v5, v8

    sub-float/2addr v7, v5

    float-to-int v5, v7

    .line 1048
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

    .line 1049
    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    :cond_11
    :goto_5
    add-int/lit8 p5, p5, 0x1

    goto/16 :goto_1

    :cond_12
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 858
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1181
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->f:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1185
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v0

    const-string v1, "mapstatus"

    .line 1186
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1196
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/MapView;->s:Z

    const-string v1, "mZoomControlEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1197
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/MapView;->t:Z

    const-string v1, "mScaleControlEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1198
    iget v0, p0, Lcom/baidu/mapapi/map/MapView;->r:I

    const-string v1, "logoPosition"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1199
    iget v0, p0, Lcom/baidu/mapapi/map/MapView;->v:I

    const-string v1, "paddingLeft"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1200
    iget v0, p0, Lcom/baidu/mapapi/map/MapView;->x:I

    const-string v1, "paddingTop"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1201
    iget v0, p0, Lcom/baidu/mapapi/map/MapView;->w:I

    const-string v1, "paddingRight"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1202
    iget v0, p0, Lcom/baidu/mapapi/map/MapView;->y:I

    const-string v1, "paddingBottom"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 3

    .line 888
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    return-void

    .line 892
    :cond_0
    invoke-direct {p0}, Lcom/baidu/mapapi/map/MapView;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 893
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 895
    :cond_1
    new-instance v0, Lcom/baidu/mapapi/map/u;

    invoke-direct {v0, p0, p1}, Lcom/baidu/mapapi/map/u;-><init>(Lcom/baidu/mapapi/map/MapView;Landroid/view/View;)V

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/baidu/platform/comapi/util/j;->a(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method

.method public renderMap()V
    .locals 0

    return-void
.end method

.method public setCustomStyleFilePathAndMode(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public final setLogoPosition(Lcom/baidu/mapapi/map/LogoPosition;)V
    .locals 0

    if-nez p1, :cond_0

    .line 810
    sget-object p1, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionleftBottom:Lcom/baidu/mapapi/map/LogoPosition;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/LogoPosition;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/MapView;->r:I

    goto :goto_0

    .line 812
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/LogoPosition;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/MapView;->r:I

    .line 814
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->requestLayout()V

    return-void
.end method

.method public setMapCustomStyle(Lcom/baidu/mapapi/map/MapCustomStyleOptions;Lcom/baidu/mapapi/map/CustomMapStyleCallBack;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 301
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MapCustomStyleOptions;->getCustomMapStyleId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 302
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 311
    :cond_1
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/map/f;->a()Lcom/baidu/mapsdkplatform/comapi/map/f;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mapapi/map/MapView;->p:Landroid/content/Context;

    new-instance v3, Lcom/baidu/mapapi/map/q;

    invoke-direct {v3, p0, p2, p1}, Lcom/baidu/mapapi/map/q;-><init>(Lcom/baidu/mapapi/map/MapView;Lcom/baidu/mapapi/map/CustomMapStyleCallBack;Lcom/baidu/mapapi/map/MapCustomStyleOptions;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/baidu/mapsdkplatform/comapi/map/f;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mapsdkplatform/comapi/map/f$a;)V

    return-void

    .line 303
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MapCustomStyleOptions;->getLocalCustomStyleFilePath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 304
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, ""

    .line 305
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/MapView;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 306
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/map/MapView;->setMapCustomStyleEnable(Z)V

    :cond_3
    return-void
.end method

.method public setMapCustomStyleEnable(Z)V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->p(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMapCustomStylePath(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 264
    invoke-direct {p0, p1, v0}, Lcom/baidu/mapapi/map/MapView;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 908
    iput p1, p0, Lcom/baidu/mapapi/map/MapView;->v:I

    .line 909
    iput p2, p0, Lcom/baidu/mapapi/map/MapView;->x:I

    .line 910
    iput p3, p0, Lcom/baidu/mapapi/map/MapView;->w:I

    .line 911
    iput p4, p0, Lcom/baidu/mapapi/map/MapView;->y:I

    return-void
.end method

.method public setScaleControlPosition(Landroid/graphics/Point;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1161
    :cond_0
    iget v0, p1, Landroid/graphics/Point;->x:I

    if-ltz v0, :cond_1

    iget v0, p1, Landroid/graphics/Point;->y:I

    if-ltz v0, :cond_1

    iget v0, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 1162
    iput-object p1, p0, Lcom/baidu/mapapi/map/MapView;->j:Landroid/graphics/Point;

    .line 1163
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setUpViewEventToMapView(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1250
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public final setZOrderMediaOverlay(Z)V
    .locals 1

    .line 1239
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-nez v0, :cond_0

    return-void

    .line 1242
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->setZOrderMediaOverlay(Z)V

    return-void
.end method

.method public setZoomControlsPosition(Landroid/graphics/Point;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1100
    :cond_0
    iget v0, p1, Landroid/graphics/Point;->x:I

    if-ltz v0, :cond_1

    iget v0, p1, Landroid/graphics/Point;->y:I

    if-ltz v0, :cond_1

    iget v0, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 1101
    iput-object p1, p0, Lcom/baidu/mapapi/map/MapView;->k:Landroid/graphics/Point;

    .line 1102
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public showScaleControl(Z)V
    .locals 2

    .line 1121
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->l:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1122
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/MapView;->t:Z

    return-void
.end method

.method public showZoomControls(Z)V
    .locals 2

    .line 1085
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1086
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->setVisibility(I)V

    .line 1087
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/MapView;->s:Z

    :cond_1
    return-void
.end method
