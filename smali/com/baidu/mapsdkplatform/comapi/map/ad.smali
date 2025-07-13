.class public Lcom/baidu/mapsdkplatform/comapi/map/ad;
.super Landroid/widget/LinearLayout;
.source "ZoomContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/content/Context;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/graphics/Bitmap;

.field private k:Landroid/graphics/Bitmap;

.field private l:I

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->m:Z

    .line 49
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->n:Z

    .line 54
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->c:Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->c()V

    .line 57
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->d:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->e:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->f:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->g:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    new-instance p1, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->c:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Landroid/widget/ImageView;

    .line 62
    new-instance p1, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->c:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b:Landroid/widget/ImageView;

    .line 63
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 64
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 65
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x6

    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a(I)I

    move-result p1

    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->l:I

    .line 66
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Landroid/widget/ImageView;

    const-string v1, "main_topbtn_up.9.png"

    invoke-direct {p0, p1, v1}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b:Landroid/widget/ImageView;

    const-string v1, "main_bottombtn_up.9.png"

    invoke-direct {p0, p1, v1}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 69
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 70
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 71
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 72
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 73
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74
    invoke-virtual {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->setOrientation(I)V

    .line 75
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 77
    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->addView(Landroid/view/View;)V

    .line 80
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->addView(Landroid/view/View;)V

    .line 81
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->n:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    .line 85
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->m:Z

    .line 49
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->n:Z

    .line 86
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->c:Landroid/content/Context;

    .line 87
    iput-boolean p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->m:Z

    .line 88
    new-instance p1, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->c:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Landroid/widget/ImageView;

    .line 89
    new-instance p1, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->c:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b:Landroid/widget/ImageView;

    const/4 p1, 0x1

    const/4 v1, -0x2

    if-eqz p2, :cond_2

    .line 93
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->d()V

    .line 94
    iget-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->h:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->i:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->j:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->k:Landroid/graphics/Bitmap;

    if-nez p2, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    iget-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->h:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 101
    iget-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->j:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 102
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 104
    invoke-virtual {p0, p2}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    invoke-virtual {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->setOrientation(I)V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 107
    :cond_2
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->c()V

    .line 108
    iget-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->d:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_4

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->e:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->f:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->g:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    goto :goto_2

    .line 112
    :cond_3
    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 113
    iget-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 114
    iget-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x6

    invoke-direct {p0, p2}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a(I)I

    move-result p2

    iput p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->l:I

    .line 115
    iget-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Landroid/widget/ImageView;

    const-string v2, "main_topbtn_up.9.png"

    invoke-direct {p0, p2, v2}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 116
    iget-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b:Landroid/widget/ImageView;

    const-string v2, "main_bottombtn_up.9.png"

    invoke-direct {p0, p2, v2}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 117
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 119
    invoke-virtual {p0, p2}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->setOrientation(I)V

    .line 123
    :goto_1
    iget-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 124
    iget-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setId(I)V

    .line 125
    iget-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 126
    iget-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 127
    iget-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 128
    iget-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 129
    iget-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->addView(Landroid/view/View;)V

    .line 130
    iget-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->addView(Landroid/view/View;)V

    .line 131
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->n:Z

    :cond_4
    :goto_2
    return-void
.end method

.method private a(I)I
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float v0, v0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    .line 199
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 200
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensityDpi()I

    move-result v0

    const/16 v1, 0x1e0

    if-le v0, v1, :cond_0

    const v0, 0x3fe66666    # 1.8f

    .line 202
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    :cond_0
    const/16 v2, 0x140

    if-le v0, v2, :cond_1

    if-gt v0, v1, :cond_1

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 204
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    :cond_1
    const v0, 0x3f99999a    # 1.2f

    .line 206
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 208
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->c:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/baidu/mapsdkplatform/comapi/commonutils/a;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 212
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)V
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->c:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/baidu/mapsdkplatform/comapi/commonutils/a;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 152
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    .line 153
    invoke-static {v0}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    .line 154
    new-instance v1, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, p2, v0, v2, v3}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    iget p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->l:I

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private c()V
    .locals 1

    const-string v0, "main_icon_zoomin.png"

    .line 135
    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->d:Landroid/graphics/Bitmap;

    const-string v0, "main_icon_zoomin_dis.png"

    .line 136
    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->e:Landroid/graphics/Bitmap;

    const-string v0, "main_icon_zoomout.png"

    .line 137
    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->f:Landroid/graphics/Bitmap;

    const-string v0, "main_icon_zoomout_dis.png"

    .line 138
    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->g:Landroid/graphics/Bitmap;

    return-void
.end method

.method private d()V
    .locals 1

    const-string/jumbo v0, "wear_zoom_in.png"

    .line 143
    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->h:Landroid/graphics/Bitmap;

    const-string/jumbo v0, "wear_zoom_in_pressed.png"

    .line 144
    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->i:Landroid/graphics/Bitmap;

    const-string/jumbo v0, "wear_zoon_out.png"

    .line 145
    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->j:Landroid/graphics/Bitmap;

    const-string/jumbo v0, "wear_zoom_out_pressed.png"

    .line 146
    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->k:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-nez p1, :cond_1

    .line 168
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->e:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 170
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->n:Z

    return v0
.end method

.method public b()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->d:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 218
    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->d:Landroid/graphics/Bitmap;

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 222
    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->e:Landroid/graphics/Bitmap;

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 226
    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->f:Landroid/graphics/Bitmap;

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 229
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 230
    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->g:Landroid/graphics/Bitmap;

    .line 232
    :cond_3
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 233
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 234
    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->h:Landroid/graphics/Bitmap;

    .line 236
    :cond_4
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 237
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 238
    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->i:Landroid/graphics/Bitmap;

    .line 240
    :cond_5
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 241
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 242
    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->j:Landroid/graphics/Bitmap;

    .line 244
    :cond_6
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->k:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 245
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 246
    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->k:Landroid/graphics/Bitmap;

    :cond_7
    return-void
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 179
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-nez p1, :cond_1

    .line 182
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->g:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 184
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 256
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 257
    check-cast p1, Landroid/widget/ImageView;

    .line 258
    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 275
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    .line 276
    iget-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->m:Z

    if-nez p1, :cond_1

    .line 277
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b:Landroid/widget/ImageView;

    const-string p2, "main_bottombtn_down.9.png"

    invoke-direct {p0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 279
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->k:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 281
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_8

    .line 282
    iget-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->m:Z

    if-nez p1, :cond_3

    .line 283
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b:Landroid/widget/ImageView;

    const-string p2, "main_bottombtn_up.9.png"

    invoke-direct {p0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_3
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->j:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 260
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_6

    .line 261
    iget-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->m:Z

    if-nez p1, :cond_5

    .line 262
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Landroid/widget/ImageView;

    const-string p2, "main_topbtn_down.9.png"

    invoke-direct {p0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_5
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->i:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 266
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_8

    .line 267
    iget-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->m:Z

    if-nez p1, :cond_7

    .line 268
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Landroid/widget/ImageView;

    const-string p2, "main_topbtn_up.9.png"

    invoke-direct {p0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_7
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->h:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_8
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
