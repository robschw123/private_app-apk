.class public Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;
.super Landroid/widget/ImageView;
.source "DCWeexCircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView$OvalShadow;
    }
.end annotation


# static fields
.field private static final FILL_SHADOW_COLOR:I = 0x3d000000

.field private static final KEY_SHADOW_COLOR:I = 0x5e000000

.field private static final SHADOW_ELEVATION:I = 0x4

.field private static final SHADOW_RADIUS:F = 2.5f

.field private static final X_OFFSET:F = 0.0f

.field private static final Y_OFFSET:F = 1.0f


# instance fields
.field private mListener:Landroid/view/animation/Animation$AnimationListener;

.field private mShadowRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IF)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "context",
            "color",
            "radius"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p3, p3, p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p3, p3, v0

    float-to-int p3, p3

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v0, v0, p1

    float-to-int v0, v0

    const/4 v1, 0x0

    mul-float v1, v1, p1

    float-to-int v1, v1

    const/high16 v2, 0x40200000    # 2.5f

    mul-float v2, v2, p1

    float-to-int v2, v2

    .line 58
    iput v2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->mShadowRadius:I

    .line 61
    invoke-direct {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->elevationSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    new-instance p3, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {p3, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/high16 v0, 0x40800000    # 4.0f

    mul-float p1, p1, v0

    .line 63
    invoke-static {p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    goto :goto_0

    .line 65
    :cond_0
    new-instance p1, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView$OvalShadow;

    iget v2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->mShadowRadius:I

    invoke-direct {p1, p0, v2, p3}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView$OvalShadow;-><init>(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;II)V

    .line 66
    new-instance p3, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p3, p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/4 p1, 0x1

    .line 67
    invoke-virtual {p3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcom/dcloud/android/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 68
    invoke-virtual {p3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget v2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->mShadowRadius:I

    int-to-float v2, v2

    int-to-float v1, v1

    int-to-float v0, v0

    const/high16 v3, 0x5e000000

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 70
    iget p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->mShadowRadius:I

    .line 72
    invoke-virtual {p0, p1, p1, p1, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->setPadding(IIII)V

    .line 74
    :goto_0
    invoke-virtual {p3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    invoke-virtual {p0, p3}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;)I
    .locals 0

    .line 39
    iget p0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->mShadowRadius:I

    return p0
.end method

.method static synthetic access$002(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;I)I
    .locals 0

    .line 39
    iput p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->mShadowRadius:I

    return p1
.end method

.method private elevationSupported()Z
    .locals 2

    .line 79
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


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .line 105
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationEnd()V

    .line 106
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    .line 97
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationStart()V

    .line 98
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    :cond_0
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

    .line 84
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 85
    invoke-direct {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->elevationSupported()Z

    move-result p1

    if-nez p1, :cond_0

    .line 86
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->mShadowRadius:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->getMeasuredHeight()I

    move-result p2

    iget v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->mShadowRadius:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->setMeasuredDimension(II)V

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

    .line 92
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

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

    .line 122
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundColorRes(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorRes"
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexCircleImageView;->setBackgroundColor(I)V

    return-void
.end method
