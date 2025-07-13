.class public final Lcom/baidu/mapapi/map/TextureMapView;
.super Landroid/view/ViewGroup;
.source "TextureMapView.java"


# static fields
.field private static final a:Ljava/lang/String; = "TextureMapView"

.field private static i:Ljava/lang/String;

.field private static j:I

.field private static k:I

.field private static final q:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:I

.field private B:Z

.field private b:Lcom/baidu/platform/comapi/map/MapTextureView;

.field private c:Lcom/baidu/mapapi/map/BaiduMap;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/graphics/Bitmap;

.field private f:Lcom/baidu/mapsdkplatform/comapi/map/ad;

.field private g:Landroid/graphics/Point;

.field private h:Landroid/graphics/Point;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/content/Context;

.field private r:F

.field private s:I

.field private t:Z

.field private u:Z

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/map/TextureMapView;->q:Landroid/util/SparseArray;

    const v1, 0x1e8480

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const v1, 0xf4240

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const v1, 0x7a120

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const v1, 0x30d40

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const v1, 0x186a0

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const v1, 0xc350

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x61a8

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x4e20

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x2710

    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0xb

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x1388

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0xc

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x7d0

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0xd

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x3e8

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0xe

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x1f4

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0xf

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xc8

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x10

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x64

    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x11

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x32

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x12

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x14

    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x13

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 99
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 100
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v1, 0x2

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 127
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 104
    sget-object v0, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionleftBottom:Lcom/baidu/mapapi/map/LogoPosition;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/LogoPosition;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->s:I

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->t:Z

    .line 106
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->u:Z

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->B:Z

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, p1, v0}, Lcom/baidu/mapapi/map/TextureMapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 138
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    sget-object p2, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionleftBottom:Lcom/baidu/mapapi/map/LogoPosition;

    invoke-virtual {p2}, Lcom/baidu/mapapi/map/LogoPosition;->ordinal()I

    move-result p2

    iput p2, p0, Lcom/baidu/mapapi/map/TextureMapView;->s:I

    const/4 p2, 0x1

    .line 105
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/TextureMapView;->t:Z

    .line 106
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/TextureMapView;->u:Z

    const/4 p2, 0x0

    .line 119
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/TextureMapView;->B:Z

    const/4 p2, 0x0

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/TextureMapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 150
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    sget-object p2, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionleftBottom:Lcom/baidu/mapapi/map/LogoPosition;

    invoke-virtual {p2}, Lcom/baidu/mapapi/map/LogoPosition;->ordinal()I

    move-result p2

    iput p2, p0, Lcom/baidu/mapapi/map/TextureMapView;->s:I

    const/4 p2, 0x1

    .line 105
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/TextureMapView;->t:Z

    .line 106
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/TextureMapView;->u:Z

    const/4 p2, 0x0

    .line 119
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/TextureMapView;->B:Z

    const/4 p2, 0x0

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/TextureMapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V
    .locals 1

    .line 161
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 104
    sget-object v0, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionleftBottom:Lcom/baidu/mapapi/map/LogoPosition;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/LogoPosition;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->s:I

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->t:Z

    .line 106
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->u:Z

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->B:Z

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/TextureMapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/TextureMapView;F)F
    .locals 0

    .line 53
    iput p1, p0, Lcom/baidu/mapapi/map/TextureMapView;->r:F

    return p1
.end method

.method static synthetic a()Landroid/util/SparseArray;
    .locals 1

    .line 53
    sget-object v0, Lcom/baidu/mapapi/map/TextureMapView;->q:Landroid/util/SparseArray;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 9

    .line 635
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensityDpi()I

    move-result v0

    const/16 v1, 0xb4

    if-ge v0, v1, :cond_0

    const-string v1, "logo_l.png"

    goto :goto_0

    :cond_0
    const-string v1, "logo_h.png"

    .line 639
    :goto_0
    invoke-static {v1, p1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/a;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v1, 0x1e0

    if-le v0, v1, :cond_1

    .line 642
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    .line 643
    invoke-virtual {v7, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 644
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->e:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_1
    const/16 v3, 0x140

    if-le v0, v3, :cond_2

    if-gt v0, v1, :cond_2

    .line 647
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 648
    invoke-virtual {v7, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 649
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->e:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 652
    :cond_2
    iput-object v2, p0, Lcom/baidu/mapapi/map/TextureMapView;->e:Landroid/graphics/Bitmap;

    .line 654
    :goto_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 655
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->d:Landroid/widget/ImageView;

    .line 656
    iget-object p1, p0, Lcom/baidu/mapapi/map/TextureMapView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 657
    iget-object p1, p0, Lcom/baidu/mapapi/map/TextureMapView;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/map/TextureMapView;->addView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V
    .locals 2

    const/4 v0, -0x1

    .line 387
    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/TextureMapView;->setBackgroundColor(I)V

    .line 388
    iput-object p1, p0, Lcom/baidu/mapapi/map/TextureMapView;->p:Landroid/content/Context;

    .line 389
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/map/j;->a()V

    .line 390
    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->init()V

    .line 392
    sget-object v0, Lcom/baidu/mapapi/map/TextureMapView;->i:Ljava/lang/String;

    sget v1, Lcom/baidu/mapapi/map/TextureMapView;->k:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/baidu/mapapi/map/TextureMapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;Ljava/lang/String;I)V

    .line 394
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/TextureMapView;->a(Landroid/content/Context;)V

    .line 395
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/TextureMapView;->b(Landroid/content/Context;)V

    const/4 v0, 0x4

    if-eqz p2, :cond_0

    .line 396
    iget-boolean v1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->h:Z

    if-nez v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/baidu/mapapi/map/TextureMapView;->f:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->setVisibility(I)V

    .line 400
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/TextureMapView;->c(Landroid/content/Context;)V

    if-eqz p2, :cond_1

    .line 401
    iget-boolean p1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->i:Z

    if-nez p1, :cond_1

    .line 402
    iget-object p1, p0, Lcom/baidu/mapapi/map/TextureMapView;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    if-eqz p2, :cond_2

    .line 404
    iget-object p1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->j:Lcom/baidu/mapapi/map/LogoPosition;

    if-eqz p1, :cond_2

    .line 405
    iget-object p1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->j:Lcom/baidu/mapapi/map/LogoPosition;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/LogoPosition;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/TextureMapView;->s:I

    :cond_2
    if-eqz p2, :cond_3

    .line 407
    iget-object p1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->l:Landroid/graphics/Point;

    if-eqz p1, :cond_3

    .line 408
    iget-object p1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->l:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/baidu/mapapi/map/TextureMapView;->h:Landroid/graphics/Point;

    :cond_3
    if-eqz p2, :cond_4

    .line 410
    iget-object p1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->k:Landroid/graphics/Point;

    if-eqz p1, :cond_4

    .line 411
    iget-object p1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->k:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/baidu/mapapi/map/TextureMapView;->g:Landroid/graphics/Point;

    :cond_4
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;Ljava/lang/String;I)V
    .locals 0

    .line 421
    new-instance p3, Lcom/baidu/platform/comapi/map/MapTextureView;

    invoke-direct {p3, p1}, Lcom/baidu/platform/comapi/map/MapTextureView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/baidu/mapapi/map/TextureMapView;->b:Lcom/baidu/platform/comapi/map/MapTextureView;

    .line 423
    invoke-virtual {p0, p3}, Lcom/baidu/mapapi/map/TextureMapView;->addView(Landroid/view/View;)V

    if-eqz p2, :cond_0

    .line 426
    new-instance p3, Lcom/baidu/mapapi/map/BaiduMap;

    iget-object p4, p0, Lcom/baidu/mapapi/map/TextureMapView;->b:Lcom/baidu/platform/comapi/map/MapTextureView;

    invoke-virtual {p2}, Lcom/baidu/mapapi/map/BaiduMapOptions;->a()Lcom/baidu/mapsdkplatform/comapi/map/v;

    move-result-object p2

    invoke-direct {p3, p1, p4, p2}, Lcom/baidu/mapapi/map/BaiduMap;-><init>(Landroid/content/Context;Lcom/baidu/platform/comapi/map/MapTextureView;Lcom/baidu/mapsdkplatform/comapi/map/v;)V

    iput-object p3, p0, Lcom/baidu/mapapi/map/TextureMapView;->c:Lcom/baidu/mapapi/map/BaiduMap;

    goto :goto_0

    .line 428
    :cond_0
    new-instance p2, Lcom/baidu/mapapi/map/BaiduMap;

    iget-object p3, p0, Lcom/baidu/mapapi/map/TextureMapView;->b:Lcom/baidu/platform/comapi/map/MapTextureView;

    const/4 p4, 0x0

    invoke-direct {p2, p1, p3, p4}, Lcom/baidu/mapapi/map/BaiduMap;-><init>(Landroid/content/Context;Lcom/baidu/platform/comapi/map/MapTextureView;Lcom/baidu/mapsdkplatform/comapi/map/v;)V

    iput-object p2, p0, Lcom/baidu/mapapi/map/TextureMapView;->c:Lcom/baidu/mapapi/map/BaiduMap;

    .line 431
    :goto_0
    new-instance p1, Lcom/baidu/mapapi/map/ab;

    invoke-direct {p1, p0}, Lcom/baidu/mapapi/map/ab;-><init>(Lcom/baidu/mapapi/map/TextureMapView;)V

    .line 622
    iget-object p2, p0, Lcom/baidu/mapapi/map/TextureMapView;->b:Lcom/baidu/platform/comapi/map/MapTextureView;

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/map/MapTextureView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Lcom/baidu/platform/comapi/map/al;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .line 1034
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1036
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1038
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-lez v1, :cond_1

    .line 1041
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0

    .line 1043
    :cond_1
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1045
    :goto_0
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_2

    .line 1048
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_1

    .line 1050
    :cond_2
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1052
    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/TextureMapView;Ljava/lang/String;Lcom/baidu/mapapi/map/MapCustomStyleOptions;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/TextureMapView;->a(Ljava/lang/String;Lcom/baidu/mapapi/map/MapCustomStyleOptions;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/TextureMapView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/TextureMapView;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/baidu/mapapi/map/MapCustomStyleOptions;)V
    .locals 3

    .line 358
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, ""

    if-nez v0, :cond_0

    .line 359
    invoke-direct {p0, p1, v2}, Lcom/baidu/mapapi/map/TextureMapView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0, v1}, Lcom/baidu/mapapi/map/TextureMapView;->setMapCustomStyleEnable(Z)V

    goto :goto_0

    .line 362
    :cond_0
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/MapCustomStyleOptions;->getLocalCustomStyleFilePath()Ljava/lang/String;

    move-result-object p1

    .line 363
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 364
    invoke-direct {p0, p1, v2}, Lcom/baidu/mapapi/map/TextureMapView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0, v1}, Lcom/baidu/mapapi/map/TextureMapView;->setMapCustomStyleEnable(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1204
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->b:Lcom/baidu/platform/comapi/map/MapTextureView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapTextureView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1209
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1210
    sget-object p1, Lcom/baidu/mapapi/map/TextureMapView;->a:Ljava/lang/String;

    const-string p2, "customStyleFilePath is empty or null, please check!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, ".sty"

    .line 1214
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1215
    sget-object p1, Lcom/baidu/mapapi/map/TextureMapView;->a:Ljava/lang/String;

    const-string p2, "customStyleFile format is incorrect , please check!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1219
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1220
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1221
    sget-object p1, Lcom/baidu/mapapi/map/TextureMapView;->a:Ljava/lang/String;

    const-string p2, "customStyleFile does not exist , please check!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1225
    :cond_3
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->b:Lcom/baidu/platform/comapi/map/MapTextureView;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapTextureView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/map/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/TextureMapView;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/baidu/mapapi/map/TextureMapView;->B:Z

    return p0
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/TextureMapView;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/TextureMapView;->B:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/mapapi/map/TextureMapView;)Lcom/baidu/platform/comapi/map/MapTextureView;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/baidu/mapapi/map/TextureMapView;->b:Lcom/baidu/platform/comapi/map/MapTextureView;

    return-object p0
.end method

.method private b()V
    .locals 5

    .line 704
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->f:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->b:Lcom/baidu/platform/comapi/map/MapTextureView;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapTextureView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->D()Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object v0

    iget v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/x;->a:F

    .line 709
    iget-object v1, p0, Lcom/baidu/mapapi/map/TextureMapView;->f:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    iget-object v2, p0, Lcom/baidu/mapapi/map/TextureMapView;->b:Lcom/baidu/platform/comapi/map/MapTextureView;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/MapTextureView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

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

    .line 710
    iget-object v1, p0, Lcom/baidu/mapapi/map/TextureMapView;->f:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    iget-object v2, p0, Lcom/baidu/mapapi/map/TextureMapView;->b:Lcom/baidu/platform/comapi/map/MapTextureView;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/MapTextureView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

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
    .locals 1

    .line 662
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-direct {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/ad;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->f:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    .line 663
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 667
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/TextureMapView;->f:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    new-instance v0, Lcom/baidu/mapapi/map/ac;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/ac;-><init>(Lcom/baidu/mapapi/map/TextureMapView;)V

    invoke-virtual {p1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b(Landroid/view/View$OnClickListener;)V

    .line 684
    iget-object p1, p0, Lcom/baidu/mapapi/map/TextureMapView;->f:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    new-instance v0, Lcom/baidu/mapapi/map/ad;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/ad;-><init>(Lcom/baidu/mapapi/map/TextureMapView;)V

    invoke-virtual {p1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a(Landroid/view/View$OnClickListener;)V

    .line 700
    iget-object p1, p0, Lcom/baidu/mapapi/map/TextureMapView;->f:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/map/TextureMapView;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/baidu/mapapi/map/TextureMapView;)F
    .locals 0

    .line 53
    iget p0, p0, Lcom/baidu/mapapi/map/TextureMapView;->r:F

    return p0
.end method

.method private c(Landroid/content/Context;)V
    .locals 8

    .line 715
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->l:Landroid/widget/RelativeLayout;

    .line 716
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 718
    iget-object v2, p0, Lcom/baidu/mapapi/map/TextureMapView;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 720
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->m:Landroid/widget/TextView;

    .line 721
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xe

    .line 724
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 725
    iget-object v3, p0, Lcom/baidu/mapapi/map/TextureMapView;->m:Landroid/widget/TextView;

    const-string v4, "#FFFFFF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 726
    iget-object v3, p0, Lcom/baidu/mapapi/map/TextureMapView;->m:Landroid/widget/TextView;

    const/4 v4, 0x2

    const/high16 v5, 0x41300000    # 11.0f

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 727
    iget-object v3, p0, Lcom/baidu/mapapi/map/TextureMapView;->m:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 728
    iget-object v3, p0, Lcom/baidu/mapapi/map/TextureMapView;->m:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 729
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->m:Landroid/widget/TextView;

    const v3, 0x7fffffff

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setId(I)V

    .line 730
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->l:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/baidu/mapapi/map/TextureMapView;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 732
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->n:Landroid/widget/TextView;

    .line 733
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 736
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 737
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 738
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 739
    iget-object v3, p0, Lcom/baidu/mapapi/map/TextureMapView;->n:Landroid/widget/TextView;

    const-string v6, "#000000"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 740
    iget-object v3, p0, Lcom/baidu/mapapi/map/TextureMapView;->n:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 741
    iget-object v3, p0, Lcom/baidu/mapapi/map/TextureMapView;->n:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 742
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->l:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/baidu/mapapi/map/TextureMapView;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 744
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->o:Landroid/widget/ImageView;

    .line 745
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 748
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 749
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 750
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 751
    iget-object v1, p0, Lcom/baidu/mapapi/map/TextureMapView;->m:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 752
    iget-object v1, p0, Lcom/baidu/mapapi/map/TextureMapView;->o:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "icon_scale.9.png"

    .line 754
    invoke-static {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/a;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 755
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    .line 756
    invoke-static {v0}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    .line 757
    new-instance v1, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, p1, v0, v2, v3}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 759
    iget-object p1, p0, Lcom/baidu/mapapi/map/TextureMapView;->o:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 760
    iget-object p1, p0, Lcom/baidu/mapapi/map/TextureMapView;->l:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->o:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 761
    iget-object p1, p0, Lcom/baidu/mapapi/map/TextureMapView;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/map/TextureMapView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private c()Z
    .locals 2

    .line 857
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

.method static synthetic d(Lcom/baidu/mapapi/map/TextureMapView;)Landroid/widget/ImageView;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/baidu/mapapi/map/TextureMapView;->o:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic e(Lcom/baidu/mapapi/map/TextureMapView;)Landroid/widget/TextView;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/baidu/mapapi/map/TextureMapView;->m:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic f(Lcom/baidu/mapapi/map/TextureMapView;)Landroid/widget/TextView;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/baidu/mapapi/map/TextureMapView;->n:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic g(Lcom/baidu/mapapi/map/TextureMapView;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/baidu/mapapi/map/TextureMapView;->b()V

    return-void
.end method

.method public static setCustomMapStylePath(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_1

    .line 176
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    sput-object p0, Lcom/baidu/mapapi/map/TextureMapView;->i:Ljava/lang/String;

    return-void

    .line 181
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "BDMapSDKException: please check whether the customMapStylePath file exits"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 177
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

    .line 193
    sput p0, Lcom/baidu/mapapi/map/TextureMapView;->k:I

    return-void
.end method

.method public static setLoadCustomMapStyleFileMode(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 211
    sput p0, Lcom/baidu/mapapi/map/TextureMapView;->j:I

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

    .line 843
    instance-of v0, p2, Lcom/baidu/mapapi/map/MapViewLayoutParams;

    if-eqz v0, :cond_1

    .line 845
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 846
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 848
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public final getLogoPosition()Lcom/baidu/mapapi/map/LogoPosition;
    .locals 2

    .line 808
    iget v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->s:I

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

    .line 820
    sget-object v0, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionleftBottom:Lcom/baidu/mapapi/map/LogoPosition;

    return-object v0

    .line 818
    :cond_0
    sget-object v0, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionRightTop:Lcom/baidu/mapapi/map/LogoPosition;

    return-object v0

    .line 816
    :cond_1
    sget-object v0, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionRightBottom:Lcom/baidu/mapapi/map/LogoPosition;

    return-object v0

    .line 814
    :cond_2
    sget-object v0, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionCenterTop:Lcom/baidu/mapapi/map/LogoPosition;

    return-object v0

    .line 812
    :cond_3
    sget-object v0, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionCenterBottom:Lcom/baidu/mapapi/map/LogoPosition;

    return-object v0

    .line 810
    :cond_4
    sget-object v0, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionleftTop:Lcom/baidu/mapapi/map/LogoPosition;

    return-object v0
.end method

.method public final getMap()Lcom/baidu/mapapi/map/BaiduMap;
    .locals 1

    .line 770
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->c:Lcom/baidu/mapapi/map/BaiduMap;

    iput-object p0, v0, Lcom/baidu/mapapi/map/BaiduMap;->b:Lcom/baidu/mapapi/map/TextureMapView;

    .line 771
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->c:Lcom/baidu/mapapi/map/BaiduMap;

    return-object v0
.end method

.method public final getMapLevel()I
    .locals 2

    .line 1137
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->b:Lcom/baidu/platform/comapi/map/MapTextureView;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapTextureView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->D()Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object v0

    iget v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/x;->a:F

    .line 1138
    sget-object v1, Lcom/baidu/mapapi/map/TextureMapView;->q:Landroid/util/SparseArray;

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getScaleControlPosition()Landroid/graphics/Point;
    .locals 1

    .line 1113
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->g:Landroid/graphics/Point;

    return-object v0
.end method

.method public getScaleControlViewHeight()I
    .locals 1

    .line 1129
    iget v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->A:I

    return v0
.end method

.method public getScaleControlViewWidth()I
    .locals 1

    .line 1121
    iget v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->A:I

    return v0
.end method

.method public onCreate(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "mapstatus"

    .line 1185
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/MapStatus;

    .line 1186
    iget-object v1, p0, Lcom/baidu/mapapi/map/TextureMapView;->g:Landroid/graphics/Point;

    if-eqz v1, :cond_1

    const-string v1, "scalePosition"

    .line 1187
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iput-object v1, p0, Lcom/baidu/mapapi/map/TextureMapView;->g:Landroid/graphics/Point;

    .line 1189
    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/map/TextureMapView;->h:Landroid/graphics/Point;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "zoomPosition"

    .line 1190
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iput-object v1, p0, Lcom/baidu/mapapi/map/TextureMapView;->h:Landroid/graphics/Point;

    :cond_2
    const-string v1, "mZoomControlEnabled"

    .line 1192
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/baidu/mapapi/map/TextureMapView;->t:Z

    const-string v1, "mScaleControlEnabled"

    .line 1193
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/baidu/mapapi/map/TextureMapView;->u:Z

    const-string v1, "logoPosition"

    .line 1194
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/baidu/mapapi/map/TextureMapView;->s:I

    const-string v1, "paddingLeft"

    .line 1195
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "paddingTop"

    .line 1196
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "paddingRight"

    .line 1197
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "paddingBottom"

    .line 1198
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 1195
    invoke-virtual {p0, v1, v2, v3, p2}, Lcom/baidu/mapapi/map/TextureMapView;->setPadding(IIII)V

    .line 1199
    new-instance p2, Lcom/baidu/mapapi/map/BaiduMapOptions;

    invoke-direct {p2}, Lcom/baidu/mapapi/map/BaiduMapOptions;-><init>()V

    invoke-virtual {p2, v0}, Lcom/baidu/mapapi/map/BaiduMapOptions;->mapStatus(Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/BaiduMapOptions;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/TextureMapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->p:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->b:Lcom/baidu/platform/comapi/map/MapTextureView;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapTextureView;->onDestroy()V

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 782
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 784
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->f:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b()V

    .line 785
    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->destroy()V

    .line 786
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/map/j;->b()V

    const/4 v0, 0x0

    .line 787
    iput-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->p:Landroid/content/Context;

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 9

    .line 884
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/TextureMapView;->getChildCount()I

    move-result p1

    .line 887
    iget-object p2, p0, Lcom/baidu/mapapi/map/TextureMapView;->d:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcom/baidu/mapapi/map/TextureMapView;->a(Landroid/view/View;)V

    .line 888
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/TextureMapView;->getWidth()I

    move-result p2

    iget p3, p0, Lcom/baidu/mapapi/map/TextureMapView;->v:I

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/baidu/mapapi/map/TextureMapView;->w:I

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/baidu/mapapi/map/TextureMapView;->d:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 p4, 0x0

    if-lez p2, :cond_0

    .line 889
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/TextureMapView;->getHeight()I

    move-result p2

    iget p5, p0, Lcom/baidu/mapapi/map/TextureMapView;->x:I

    sub-int/2addr p2, p5

    iget p5, p0, Lcom/baidu/mapapi/map/TextureMapView;->y:I

    sub-int/2addr p2, p5

    iget-object p5, p0, Lcom/baidu/mapapi/map/TextureMapView;->d:Landroid/widget/ImageView;

    invoke-virtual {p5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p5

    sub-int/2addr p2, p5

    if-lez p2, :cond_0

    .line 890
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/TextureMapView;->getWidth()I

    move-result p2

    iget p3, p0, Lcom/baidu/mapapi/map/TextureMapView;->v:I

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/baidu/mapapi/map/TextureMapView;->w:I

    sub-int/2addr p2, p3

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/TextureMapView;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float p3, p2, p3

    .line 891
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/TextureMapView;->getHeight()I

    move-result p2

    iget p5, p0, Lcom/baidu/mapapi/map/TextureMapView;->x:I

    sub-int/2addr p2, p5

    iget p5, p0, Lcom/baidu/mapapi/map/TextureMapView;->y:I

    sub-int/2addr p2, p5

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/TextureMapView;->getHeight()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p2, p5

    goto :goto_0

    .line 893
    :cond_0
    iput p4, p0, Lcom/baidu/mapapi/map/TextureMapView;->v:I

    .line 894
    iput p4, p0, Lcom/baidu/mapapi/map/TextureMapView;->w:I

    .line 895
    iput p4, p0, Lcom/baidu/mapapi/map/TextureMapView;->y:I

    .line 896
    iput p4, p0, Lcom/baidu/mapapi/map/TextureMapView;->x:I

    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    const/4 p5, 0x0

    :goto_1
    if-ge p5, p1, :cond_12

    .line 900
    invoke-virtual {p0, p5}, Lcom/baidu/mapapi/map/TextureMapView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_5

    .line 904
    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/map/TextureMapView;->b:Lcom/baidu/platform/comapi/map/MapTextureView;

    if-ne v0, v1, :cond_2

    .line 905
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/TextureMapView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/TextureMapView;->getHeight()I

    move-result v2

    invoke-virtual {v1, p4, p4, v0, v2}, Lcom/baidu/platform/comapi/map/MapTextureView;->layout(IIII)V

    goto/16 :goto_5

    .line 907
    :cond_2
    iget-object v1, p0, Lcom/baidu/mapapi/map/TextureMapView;->d:Landroid/widget/ImageView;

    const/4 v2, 0x4

    const/high16 v3, 0x40a00000    # 5.0f

    if-ne v0, v1, :cond_8

    .line 910
    iget v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->v:I

    int-to-float v0, v0

    mul-float v4, p3, v3

    add-float/2addr v0, v4

    float-to-int v0, v0

    .line 911
    iget v5, p0, Lcom/baidu/mapapi/map/TextureMapView;->w:I

    int-to-float v5, v5

    add-float/2addr v5, v4

    float-to-int v4, v5

    .line 912
    iget v5, p0, Lcom/baidu/mapapi/map/TextureMapView;->x:I

    int-to-float v5, v5

    mul-float v3, v3, p2

    add-float/2addr v5, v3

    float-to-int v5, v5

    .line 913
    iget v6, p0, Lcom/baidu/mapapi/map/TextureMapView;->y:I

    int-to-float v6, v6

    add-float/2addr v6, v3

    float-to-int v3, v6

    .line 914
    iget v6, p0, Lcom/baidu/mapapi/map/TextureMapView;->s:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_7

    const/4 v7, 0x2

    if-eq v6, v7, :cond_6

    const/4 v8, 0x3

    if-eq v6, v8, :cond_5

    if-eq v6, v2, :cond_4

    const/4 v2, 0x5

    if-eq v6, v2, :cond_3

    .line 947
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/TextureMapView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v3

    .line 948
    iget-object v2, p0, Lcom/baidu/mapapi/map/TextureMapView;->d:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    .line 949
    iget-object v3, p0, Lcom/baidu/mapapi/map/TextureMapView;->d:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    sub-int v5, v1, v3

    goto/16 :goto_3

    .line 941
    :cond_3
    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    add-int v1, v5, v0

    .line 942
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/TextureMapView;->getWidth()I

    move-result v0

    sub-int v2, v0, v4

    .line 943
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    goto :goto_2

    .line 934
    :cond_4
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/TextureMapView;->getHeight()I

    move-result v0

    sub-int v1, v0, v3

    .line 935
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    sub-int v5, v1, v0

    .line 936
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/TextureMapView;->getWidth()I

    move-result v0

    sub-int v2, v0, v4

    .line 937
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    :goto_2
    sub-int v0, v2, v0

    goto :goto_3

    .line 929
    :cond_5
    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    add-int v1, v5, v0

    .line 930
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/TextureMapView;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/baidu/mapapi/map/TextureMapView;->d:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/baidu/mapapi/map/TextureMapView;->v:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/baidu/mapapi/map/TextureMapView;->w:I

    sub-int/2addr v0, v2

    div-int/2addr v0, v7

    .line 931
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/TextureMapView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/baidu/mapapi/map/TextureMapView;->d:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/baidu/mapapi/map/TextureMapView;->v:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/baidu/mapapi/map/TextureMapView;->w:I

    sub-int/2addr v2, v3

    div-int/2addr v2, v7

    goto :goto_3

    .line 922
    :cond_6
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/TextureMapView;->getHeight()I

    move-result v0

    sub-int v1, v0, v3

    .line 923
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    sub-int v5, v1, v0

    .line 924
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/TextureMapView;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/baidu/mapapi/map/TextureMapView;->d:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/baidu/mapapi/map/TextureMapView;->v:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/baidu/mapapi/map/TextureMapView;->w:I

    sub-int/2addr v0, v2

    div-int/2addr v0, v7

    .line 925
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/TextureMapView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/baidu/mapapi/map/TextureMapView;->d:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/baidu/mapapi/map/TextureMapView;->v:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/baidu/mapapi/map/TextureMapView;->w:I

    sub-int/2addr v2, v3

    div-int/2addr v2, v7

    goto :goto_3

    .line 918
    :cond_7
    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v5

    .line 919
    iget-object v2, p0, Lcom/baidu/mapapi/map/TextureMapView;->d:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    .line 952
    :goto_3
    iget-object v3, p0, Lcom/baidu/mapapi/map/TextureMapView;->d:Landroid/widget/ImageView;

    invoke-virtual {v3, v0, v5, v2, v1}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_5

    .line 954
    :cond_8
    iget-object v1, p0, Lcom/baidu/mapapi/map/TextureMapView;->f:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    if-ne v0, v1, :cond_c

    .line 955
    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a()Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_5

    .line 958
    :cond_9
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->f:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/TextureMapView;->a(Landroid/view/View;)V

    .line 959
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->h:Landroid/graphics/Point;

    if-nez v0, :cond_b

    .line 960
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/TextureMapView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0xf

    int-to-float v0, v0

    mul-float v0, v0, p2

    iget v1, p0, Lcom/baidu/mapapi/map/TextureMapView;->x:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 961
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/TextureMapView;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0xf

    int-to-float v1, v1

    mul-float v1, v1, p3

    iget v3, p0, Lcom/baidu/mapapi/map/TextureMapView;->v:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 962
    iget-object v3, p0, Lcom/baidu/mapapi/map/TextureMapView;->f:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v3}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v1, v3

    .line 963
    iget-object v4, p0, Lcom/baidu/mapapi/map/TextureMapView;->f:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v4}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->getMeasuredHeight()I

    move-result v4

    sub-int v4, v0, v4

    .line 964
    iget v5, p0, Lcom/baidu/mapapi/map/TextureMapView;->s:I

    if-ne v5, v2, :cond_a

    .line 965
    iget-object v2, p0, Lcom/baidu/mapapi/map/TextureMapView;->d:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 966
    iget-object v2, p0, Lcom/baidu/mapapi/map/TextureMapView;->d:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v4, v2

    .line 968
    :cond_a
    iget-object v2, p0, Lcom/baidu/mapapi/map/TextureMapView;->f:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->layout(IIII)V

    goto/16 :goto_5

    .line 970
    :cond_b
    iget-object v1, p0, Lcom/baidu/mapapi/map/TextureMapView;->f:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/baidu/mapapi/map/TextureMapView;->h:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/baidu/mapapi/map/TextureMapView;->h:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/baidu/mapapi/map/TextureMapView;->f:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    .line 971
    invoke-virtual {v4}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/baidu/mapapi/map/TextureMapView;->h:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/baidu/mapapi/map/TextureMapView;->f:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    .line 972
    invoke-virtual {v5}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 970
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->layout(IIII)V

    goto/16 :goto_5

    .line 975
    :cond_c
    iget-object v1, p0, Lcom/baidu/mapapi/map/TextureMapView;->l:Landroid/widget/RelativeLayout;

    if-ne v0, v1, :cond_e

    .line 976
    invoke-direct {p0, v1}, Lcom/baidu/mapapi/map/TextureMapView;->a(Landroid/view/View;)V

    .line 977
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->g:Landroid/graphics/Point;

    if-nez v0, :cond_d

    .line 978
    iget v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->y:I

    int-to-float v0, v0

    mul-float v1, p2, v3

    add-float/2addr v0, v1

    const/high16 v1, 0x42600000    # 56.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 979
    iget-object v1, p0, Lcom/baidu/mapapi/map/TextureMapView;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/baidu/mapapi/map/TextureMapView;->A:I

    .line 980
    iget-object v1, p0, Lcom/baidu/mapapi/map/TextureMapView;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/baidu/mapapi/map/TextureMapView;->z:I

    .line 981
    iget v1, p0, Lcom/baidu/mapapi/map/TextureMapView;->v:I

    int-to-float v1, v1

    mul-float v3, v3, p3

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 982
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/TextureMapView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v2, v0

    .line 983
    iget v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->A:I

    add-int/2addr v0, v1

    .line 984
    iget v3, p0, Lcom/baidu/mapapi/map/TextureMapView;->z:I

    add-int/2addr v3, v2

    .line 986
    iget-object v4, p0, Lcom/baidu/mapapi/map/TextureMapView;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v1, v2, v0, v3}, Landroid/widget/RelativeLayout;->layout(IIII)V

    goto/16 :goto_5

    .line 988
    :cond_d
    iget-object v1, p0, Lcom/baidu/mapapi/map/TextureMapView;->l:Landroid/widget/RelativeLayout;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/baidu/mapapi/map/TextureMapView;->g:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/baidu/mapapi/map/TextureMapView;->g:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/baidu/mapapi/map/TextureMapView;->l:Landroid/widget/RelativeLayout;

    .line 992
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/baidu/mapapi/map/TextureMapView;->g:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/baidu/mapapi/map/TextureMapView;->l:Landroid/widget/RelativeLayout;

    .line 994
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 988
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/RelativeLayout;->layout(IIII)V

    goto :goto_5

    .line 998
    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 999
    instance-of v2, v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;

    if-eqz v2, :cond_11

    .line 1000
    check-cast v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;

    .line 1001
    iget-object v2, v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;->c:Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;

    .line 1003
    sget-object v3, Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;->absoluteMode:Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;

    if-ne v2, v3, :cond_f

    .line 1004
    iget-object v2, v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;->b:Landroid/graphics/Point;

    goto :goto_4

    .line 1006
    :cond_f
    iget-object v2, v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;->a:Lcom/baidu/mapapi/model/LatLng;

    .line 1007
    invoke-static {v2}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v2

    .line 1008
    iget-object v3, p0, Lcom/baidu/mapapi/map/TextureMapView;->b:Lcom/baidu/platform/comapi/map/MapTextureView;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/map/MapTextureView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 1009
    iget-object v3, p0, Lcom/baidu/mapapi/map/TextureMapView;->b:Lcom/baidu/platform/comapi/map/MapTextureView;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/map/MapTextureView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Landroid/graphics/Point;

    move-result-object v2

    goto :goto_4

    .line 1011
    :cond_10
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1014
    :goto_4
    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/TextureMapView;->a(Landroid/view/View;)V

    .line 1015
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1016
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 1017
    iget v5, v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;->d:F

    .line 1018
    iget v6, v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;->e:F

    .line 1019
    iget v7, v2, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    int-to-float v8, v3

    mul-float v5, v5, v8

    sub-float/2addr v7, v5

    float-to-int v5, v7

    .line 1020
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

    .line 1021
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

    .line 828
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->b:Lcom/baidu/platform/comapi/map/MapTextureView;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapTextureView;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->b:Lcom/baidu/platform/comapi/map/MapTextureView;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapTextureView;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 1149
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->c:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1153
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v0

    const-string v1, "mapstatus"

    .line 1154
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1155
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->g:Landroid/graphics/Point;

    if-eqz v0, :cond_1

    const-string v1, "scalePosition"

    .line 1156
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1159
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->h:Landroid/graphics/Point;

    if-eqz v0, :cond_2

    const-string/jumbo v1, "zoomPosition"

    .line 1160
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1163
    :cond_2
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->t:Z

    const-string v1, "mZoomControlEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1164
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->u:Z

    const-string v1, "mScaleControlEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1165
    iget v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->s:I

    const-string v1, "logoPosition"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1166
    iget v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->v:I

    const-string v1, "paddingLeft"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1167
    iget v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->x:I

    const-string v1, "paddingTop"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1168
    iget v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->w:I

    const-string v1, "paddingRight"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1169
    iget v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->y:I

    const-string v1, "paddingBottom"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 3

    .line 865
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->d:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    return-void

    .line 868
    :cond_0
    invoke-direct {p0}, Lcom/baidu/mapapi/map/TextureMapView;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 869
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 871
    :cond_1
    new-instance v0, Lcom/baidu/mapapi/map/ae;

    invoke-direct {v0, p0, p1}, Lcom/baidu/mapapi/map/ae;-><init>(Lcom/baidu/mapapi/map/TextureMapView;Landroid/view/View;)V

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/baidu/platform/comapi/util/j;->a(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method

.method public setCustomStyleFilePathAndMode(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public final setLogoPosition(Lcom/baidu/mapapi/map/LogoPosition;)V
    .locals 0

    if-nez p1, :cond_0

    .line 796
    sget-object p1, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionleftBottom:Lcom/baidu/mapapi/map/LogoPosition;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/LogoPosition;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/TextureMapView;->s:I

    goto :goto_0

    .line 798
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/LogoPosition;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/TextureMapView;->s:I

    .line 800
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/TextureMapView;->requestLayout()V

    return-void
.end method

.method public setMapCustomStyle(Lcom/baidu/mapapi/map/MapCustomStyleOptions;Lcom/baidu/mapapi/map/CustomMapStyleCallBack;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 285
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MapCustomStyleOptions;->getCustomMapStyleId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 286
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 294
    :cond_1
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/map/f;->a()Lcom/baidu/mapsdkplatform/comapi/map/f;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mapapi/map/TextureMapView;->p:Landroid/content/Context;

    new-instance v3, Lcom/baidu/mapapi/map/aa;

    invoke-direct {v3, p0, p2, p1}, Lcom/baidu/mapapi/map/aa;-><init>(Lcom/baidu/mapapi/map/TextureMapView;Lcom/baidu/mapapi/map/CustomMapStyleCallBack;Lcom/baidu/mapapi/map/MapCustomStyleOptions;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/baidu/mapsdkplatform/comapi/map/f;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mapsdkplatform/comapi/map/f$a;)V

    return-void

    .line 287
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MapCustomStyleOptions;->getLocalCustomStyleFilePath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 288
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, ""

    .line 289
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/TextureMapView;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public setMapCustomStyleEnable(Z)V
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->b:Lcom/baidu/platform/comapi/map/MapTextureView;

    if-nez v0, :cond_0

    return-void

    .line 383
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapTextureView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->p(Z)V

    return-void
.end method

.method public setMapCustomStylePath(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 255
    invoke-direct {p0, p1, v0}, Lcom/baidu/mapapi/map/TextureMapView;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 627
    iput p1, p0, Lcom/baidu/mapapi/map/TextureMapView;->v:I

    .line 628
    iput p2, p0, Lcom/baidu/mapapi/map/TextureMapView;->x:I

    .line 629
    iput p3, p0, Lcom/baidu/mapapi/map/TextureMapView;->w:I

    .line 630
    iput p4, p0, Lcom/baidu/mapapi/map/TextureMapView;->y:I

    return-void
.end method

.method public setScaleControlPosition(Landroid/graphics/Point;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1101
    :cond_0
    iget v0, p1, Landroid/graphics/Point;->x:I

    if-ltz v0, :cond_1

    iget v0, p1, Landroid/graphics/Point;->y:I

    if-ltz v0, :cond_1

    iget v0, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/TextureMapView;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/TextureMapView;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 1102
    iput-object p1, p0, Lcom/baidu/mapapi/map/TextureMapView;->g:Landroid/graphics/Point;

    .line 1103
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/TextureMapView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setZoomControlsPosition(Landroid/graphics/Point;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1076
    :cond_0
    iget v0, p1, Landroid/graphics/Point;->x:I

    if-ltz v0, :cond_1

    iget v0, p1, Landroid/graphics/Point;->y:I

    if-ltz v0, :cond_1

    iget v0, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/TextureMapView;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/TextureMapView;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 1077
    iput-object p1, p0, Lcom/baidu/mapapi/map/TextureMapView;->h:Landroid/graphics/Point;

    .line 1078
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/TextureMapView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public showScaleControl(Z)V
    .locals 2

    .line 1088
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->l:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1089
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/TextureMapView;->u:Z

    return-void
.end method

.method public showZoomControls(Z)V
    .locals 2

    .line 1061
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->f:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1062
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapView;->f:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->setVisibility(I)V

    .line 1063
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/TextureMapView;->t:Z

    :cond_1
    return-void
.end method
