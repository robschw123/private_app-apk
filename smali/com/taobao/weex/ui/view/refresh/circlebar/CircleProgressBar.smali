.class public Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;
.super Landroid/widget/ImageView;
.source "CircleProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;
    }
.end annotation


# static fields
.field public static final DEFAULT_CIRCLE_BG_LIGHT:I = -0x50506

.field public static final DEFAULT_CIRCLE_COLOR:I = -0x100000

.field private static final DEFAULT_CIRCLE_DIAMETER:I = 0x28

.field private static final FILL_SHADOW_COLOR:I = 0x3d000000

.field private static final KEY_SHADOW_COLOR:I = 0x1e000000

.field private static final SHADOW_ELEVATION:I = 0x4

.field private static final SHADOW_RADIUS:F = 3.5f

.field private static final STROKE_WIDTH_LARGE:I = 0x3

.field private static final X_OFFSET:F = 0.0f

.field private static final Y_OFFSET:F = 1.75f


# instance fields
.field private isLayoutFinished:Z

.field private mArrowHeight:I

.field private mArrowWidth:I

.field private mBackGroundColor:I

.field private mBgCircle:Landroid/graphics/drawable/ShapeDrawable;

.field private mCircleBackgroundEnabled:Z

.field private mColors:[I

.field private mDiameter:I

.field private mHandler:Landroid/os/Handler;

.field private mInnerRadius:I

.field private mListener:Landroid/view/animation/Animation$AnimationListener;

.field private mMax:I

.field private mProgress:I

.field private mProgressColor:I

.field public mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

.field private mProgressStokeWidth:I

.field private mShadowRadius:I

.field private mShowArrow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/high16 v1, -0x1000000

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 70
    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mColors:[I

    .line 180
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->isLayoutFinished:Z

    .line 318
    new-instance v0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1;-><init>(Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0, v2}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/high16 v1, -0x1000000

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 70
    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mColors:[I

    .line 180
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->isLayoutFinished:Z

    .line 318
    new-instance v0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1;-><init>(Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mHandler:Landroid/os/Handler;

    .line 80
    invoke-direct {p0, p1, p2, v2}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/high16 v1, -0x1000000

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 70
    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mColors:[I

    .line 180
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->isLayoutFinished:Z

    .line 318
    new-instance v0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1;-><init>(Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mHandler:Landroid/os/Handler;

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->isLayoutFinished:Z

    return p0
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private elevationSupported()Z
    .locals 2

    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const p2, -0x50506

    .line 92
    iput p2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mBackGroundColor:I

    const/high16 p2, -0x100000

    .line 93
    iput p2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressColor:I

    const/4 p3, 0x1

    new-array v0, p3, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 94
    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mColors:[I

    const/4 p2, -0x1

    .line 95
    iput p2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mInnerRadius:I

    const/high16 v0, 0x40400000    # 3.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 96
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressStokeWidth:I

    .line 97
    iput p2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mArrowWidth:I

    .line 98
    iput p2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mArrowHeight:I

    .line 99
    iput-boolean p3, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mShowArrow:Z

    .line 100
    iput-boolean p3, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mCircleBackgroundEnabled:Z

    .line 101
    iput v1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgress:I

    const/16 p1, 0x64

    .line 102
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mMax:I

    .line 103
    new-instance p1, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    .line 104
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public circleBackgroundEnabled()Z
    .locals 1

    .line 260
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mCircleBackgroundEnabled:Z

    return v0
.end method

.method public destory()V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->stop()V

    const/4 v0, 0x0

    .line 356
    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    return-void
.end method

.method public getMax()I
    .locals 1

    .line 241
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 249
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgress:I

    return v0
.end method

.method public getProgressStokeWidth()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressStokeWidth:I

    return v0
.end method

.method public isShowArrow()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mShowArrow:Z

    return v0
.end method

.method public onAnimationEnd()V
    .locals 2

    .line 204
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationEnd()V

    .line 205
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    .line 196
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationStart()V

    .line 197
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 269
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 270
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->stop()V

    .line 272
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->setVisible(ZZ)Z

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 278
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 279
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->stop()V

    .line 281
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->setVisible(ZZ)Z

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "changed",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 135
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 136
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 137
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getMeasuredHeight()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mDiameter:I

    if-gtz p2, :cond_0

    float-to-int p2, p1

    mul-int/lit8 p2, p2, 0x28

    .line 139
    iput p2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mDiameter:I

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mCircleBackgroundEnabled:Z

    if-eqz p2, :cond_2

    const/high16 p2, 0x3fe00000    # 1.75f

    mul-float p2, p2, p1

    float-to-int p2, p2

    mul-float p5, p1, p3

    float-to-int p5, p5

    const/high16 v0, 0x40600000    # 3.5f

    mul-float v0, v0, p1

    float-to-int v0, v0

    .line 144
    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mShadowRadius:I

    .line 146
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->elevationSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    new-instance p2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance p5, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {p5}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {p2, p5}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object p2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mBgCircle:Landroid/graphics/drawable/ShapeDrawable;

    const/high16 p2, 0x40800000    # 4.0f

    mul-float p1, p1, p2

    .line 148
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    goto :goto_0

    .line 150
    :cond_1
    new-instance p1, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;

    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mShadowRadius:I

    iget v1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mDiameter:I

    mul-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    invoke-direct {p1, p0, v0, v1}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;-><init>(Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;II)V

    .line 151
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mBgCircle:Landroid/graphics/drawable/ShapeDrawable;

    .line 152
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-static {p0, p4, p1}, Landroidx/core/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 153
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mBgCircle:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mShadowRadius:I

    int-to-float v0, v0

    int-to-float p5, p5

    int-to-float p2, p2

    const/high16 v1, 0x1e000000

    invoke-virtual {p1, v0, p5, p2, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 155
    iget p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mShadowRadius:I

    .line 157
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->setPadding(IIII)V

    .line 159
    :goto_0
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mBgCircle:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget p2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mBackGroundColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mBgCircle:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    :cond_2
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    if-nez p1, :cond_3

    return-void

    .line 165
    :cond_3
    iget p2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mBackGroundColor:I

    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->setBackgroundColor(I)V

    .line 166
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    iget-object p2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mColors:[I

    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->setColorSchemeColors([I)V

    .line 167
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->isShowArrow()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 168
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->setArrowScale(F)V

    .line 169
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    invoke-virtual {p1, p4}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->showArrow(Z)V

    :cond_4
    const/4 p1, 0x0

    .line 171
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->setAlpha(I)V

    .line 174
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    .line 175
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    const p2, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, p3, p2}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->setStartEndTrim(FF)V

    .line 177
    :cond_5
    iput-boolean p4, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->isLayoutFinished:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 117
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 118
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->elevationSupported()Z

    move-result p1

    if-nez p1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mShadowRadius:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getMeasuredHeight()I

    move-result p2

    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mShadowRadius:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 191
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 235
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundColorResource(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorRes"
        }
    .end annotation

    .line 228
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 230
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setCircleBackgroundEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableCircleBackground"
        }
    .end annotation

    .line 264
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mCircleBackgroundEnabled:Z

    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colors"
        }
    .end annotation

    .line 218
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mColors:[I

    .line 219
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->setColorSchemeColors([I)V

    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "max"
        }
    .end annotation

    .line 245
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mMax:I

    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 253
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getMax()I

    move-result v0

    if-lez v0, :cond_0

    .line 254
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgress:I

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->invalidate()V

    return-void
.end method

.method public setProgressBackGroundColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 108
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mBackGroundColor:I

    return-void
.end method

.method public setProgressRotation(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->setProgressRotation(F)V

    :cond_0
    return-void
.end method

.method public setProgressStokeWidth(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mProgressStokeWidth"
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 130
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressStokeWidth:I

    return-void
.end method

.method public setShowArrow(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showArrow"
        }
    .end annotation

    .line 187
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mShowArrow:Z

    return-void
.end method

.method public setStartEndTrim(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startAngle",
            "endAngle"
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->setStartEndTrim(FF)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x271a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stop()V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->stop()V

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x271a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
