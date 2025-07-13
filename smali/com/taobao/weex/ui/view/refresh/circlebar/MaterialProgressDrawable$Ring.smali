.class Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Ring"
.end annotation


# instance fields
.field private mAlpha:I

.field private mArrow:Landroid/graphics/Path;

.field private mArrowHeight:I

.field private final mArrowPaint:Landroid/graphics/Paint;

.field private mArrowScale:F

.field private mArrowWidth:I

.field private mBackgroundColor:I

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private mColorIndex:I

.field private mColors:[I

.field private mCurrentColor:I

.field private mEndTrim:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mRingCenterRadius:D

.field private mRotation:F

.field private mShowArrow:Z

.field private mStartTrim:F

.field private mStartingEndTrim:F

.field private mStartingRotation:F

.field private mStartingStartTrim:F

.field private mStrokeInset:F

.field private mStrokeWidth:F

.field private final mTempBounds:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    .line 474
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    .line 475
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    .line 479
    iput v2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStartTrim:F

    .line 480
    iput v2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mEndTrim:F

    .line 481
    iput v2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mRotation:F

    const/high16 v2, 0x40a00000    # 5.0f

    .line 482
    iput v2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    const/high16 v2, 0x40200000    # 2.5f

    .line 483
    iput v2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStrokeInset:F

    .line 500
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    .line 505
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 507
    sget-object p1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 508
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 509
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 511
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 512
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private drawTriangle(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "startAngle",
            "sweepAngle",
            "bounds"
        }
    .end annotation

    .line 556
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mShowArrow:Z

    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 558
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    .line 559
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_0

    .line 561
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 566
    :goto_0
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStrokeInset:F

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 567
    iget-wide v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v0, v0, v4

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v4

    double-to-float v0, v0

    .line 568
    iget-wide v4, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double v4, v4, v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v1

    double-to-float v1, v4

    .line 574
    iget-object v2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 575
    iget-object v2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget v4, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float v4, v4, v5

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 576
    iget-object v2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget v3, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float v3, v3, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    iget v5, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrowHeight:I

    int-to-float v5, v5

    mul-float v5, v5, v4

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 579
    iget-object v2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget v3, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrowWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 580
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 582
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mCurrentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-float/2addr p2, p3

    const/high16 p3, 0x40a00000    # 5.0f

    sub-float/2addr p2, p3

    .line 583
    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result p3

    .line 584
    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p4

    .line 583
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 585
    iget-object p2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private getNextColorIndex()I
    .locals 2

    .line 628
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mColorIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mColors:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    return v0
.end method

.method private invalidateSelf()V
    .locals 2

    .line 795
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "c",
            "bounds"
        }
    .end annotation

    .line 534
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    .line 535
    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 536
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStrokeInset:F

    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 538
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStartTrim:F

    iget v2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mRotation:F

    add-float/2addr v0, v2

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float v6, v0, v3

    .line 539
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mEndTrim:F

    add-float/2addr v0, v2

    mul-float v0, v0, v3

    sub-float v7, v0, v6

    .line 542
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mCurrentColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 543
    iget-object v5, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v0, p1

    move v2, v6

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 545
    invoke-direct {p0, p1, v6, v7, p2}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->drawTriangle(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V

    .line 547
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mAlpha:I

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    .line 548
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mBackgroundColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 549
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mAlpha:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 550
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    iget-object v2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 655
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mAlpha:I

    return v0
.end method

.method public getCenterRadius()D
    .locals 2

    .line 742
    iget-wide v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    return-wide v0
.end method

.method public getEndTrim()F
    .locals 1

    .line 703
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mEndTrim:F

    return v0
.end method

.method public getInsets()F
    .locals 1

    .line 730
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStrokeInset:F

    return v0
.end method

.method public getNextColor()I
    .locals 2

    .line 624
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mColors:[I

    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->getNextColorIndex()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getRotation()F
    .locals 1

    .line 714
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mRotation:F

    return v0
.end method

.method public getStartTrim()F
    .locals 1

    .line 680
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStartTrim:F

    return v0
.end method

.method public getStartingColor()I
    .locals 2

    .line 692
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mColors:[I

    iget v1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mColorIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public getStartingEndTrim()F
    .locals 1

    .line 688
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    return v0
.end method

.method public getStartingRotation()F
    .locals 1

    .line 769
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStartingRotation:F

    return v0
.end method

.method public getStartingStartTrim()F
    .locals 1

    .line 684
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 669
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    return v0
.end method

.method public goToNextColor()V
    .locals 1

    .line 636
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->getNextColorIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    return-void
.end method

.method public resetOriginals()V
    .locals 1

    const/4 v0, 0x0

    .line 786
    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    .line 787
    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    .line 788
    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStartingRotation:F

    .line 789
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 790
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 791
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->setRotation(F)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 648
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mAlpha:I

    return-void
.end method

.method public setArrowDimensions(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    float-to-int p1, p1

    .line 526
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrowWidth:I

    float-to-int p1, p2

    .line 527
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrowHeight:I

    return-void
.end method

.method public setArrowScale(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    .line 759
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrowScale:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 760
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mArrowScale:F

    .line 761
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 516
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mBackgroundColor:I

    return-void
.end method

.method public setCenterRadius(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "centerRadius"
        }
    .end annotation

    .line 738
    iput-wide p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    return-void
.end method

.method public setColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 608
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mCurrentColor:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    .line 640
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 641
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->invalidateSelf()V

    return-void
.end method

.method public setColorIndex(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 616
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mColorIndex:I

    .line 617
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mColors:[I

    aget p1, v0, p1

    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mCurrentColor:I

    return-void
.end method

.method public setColors([I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colors"
        }
    .end annotation

    .line 595
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mColors:[I

    const/4 p1, 0x0

    .line 597
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    return-void
.end method

.method public setEndTrim(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endTrim"
        }
    .end annotation

    .line 697
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mEndTrim:F

    .line 698
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->invalidateSelf()V

    return-void
.end method

.method public setInsets(II)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 718
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    .line 720
    iget-wide v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    const/high16 p2, 0x40000000    # 2.0f

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-lez v4, :cond_1

    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr p1, p2

    float-to-double p1, p1

    .line 723
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p1, v0

    goto :goto_1

    .line 721
    :cond_1
    :goto_0
    iget p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    :goto_1
    double-to-float p1, p1

    .line 725
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStrokeInset:F

    return-void
.end method

.method public setRotation(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    .line 708
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mRotation:F

    .line 709
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->invalidateSelf()V

    return-void
.end method

.method public setShowArrow(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .line 749
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mShowArrow:Z

    if-eq v0, p1, :cond_0

    .line 750
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mShowArrow:Z

    .line 751
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setStartTrim(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startTrim"
        }
    .end annotation

    .line 674
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStartTrim:F

    .line 675
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->invalidateSelf()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strokeWidth"
        }
    .end annotation

    .line 662
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    .line 663
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 664
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->invalidateSelf()V

    return-void
.end method

.method public storeOriginals()V
    .locals 1

    .line 777
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStartTrim:F

    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    .line 778
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mEndTrim:F

    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    .line 779
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mRotation:F

    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable$Ring;->mStartingRotation:F

    return-void
.end method
