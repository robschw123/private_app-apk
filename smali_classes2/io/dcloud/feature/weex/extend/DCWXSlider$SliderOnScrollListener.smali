.class public Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;
.super Ljava/lang/Object;
.source "DCWXSlider.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex/extend/DCWXSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SliderOnScrollListener"
.end annotation


# instance fields
.field private lastPositionOffset:F

.field private lastValue:F

.field private pageSelected:Z

.field private preScrollstate:I

.field private scrollState:I

.field private selectedPosition:I

.field private target:Lio/dcloud/feature/weex/extend/DCWXSlider;


# direct methods
.method public constructor <init>(Lio/dcloud/feature/weex/extend/DCWXSlider;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42c60000    # 99.0f

    .line 528
    iput v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->lastPositionOffset:F

    const/4 v0, 0x0

    .line 532
    iput v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->scrollState:I

    .line 533
    iput v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->preScrollstate:I

    .line 535
    iput-boolean v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->pageSelected:Z

    const/4 v0, 0x0

    .line 536
    iput v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->lastValue:F

    .line 539
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->target:Lio/dcloud/feature/weex/extend/DCWXSlider;

    .line 540
    iget-object p1, p1, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {p1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->superGetCurrentItem()I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->selectedPosition:I

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 635
    iput p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->scrollState:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 649
    :cond_0
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->target:Lio/dcloud/feature/weex/extend/DCWXSlider;

    iput-boolean v0, p1, Lio/dcloud/feature/weex/extend/DCWXSlider;->isDrag:Z

    .line 650
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->target:Lio/dcloud/feature/weex/extend/DCWXSlider;

    const-string v0, "scrollstart"

    invoke-virtual {p1, v0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->fireEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/high16 p1, 0x42c60000    # 99.0f

    .line 638
    iput p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->lastPositionOffset:F

    .line 639
    iput p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->lastValue:F

    .line 640
    iget p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->preScrollstate:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 644
    iput p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->preScrollstate:I

    .line 645
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->target:Lio/dcloud/feature/weex/extend/DCWXSlider;

    iput-boolean p1, v0, Lio/dcloud/feature/weex/extend/DCWXSlider;->isDrag:Z

    .line 646
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->target:Lio/dcloud/feature/weex/extend/DCWXSlider;

    const-string v0, "scrollend"

    invoke-virtual {p1, v0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->fireEvent(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "positionOffset",
            "positionOffsetPixels"
        }
    .end annotation

    .line 552
    iget p3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->lastPositionOffset:F

    const/high16 v0, 0x42c60000    # 99.0f

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    .line 553
    iput p2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->lastPositionOffset:F

    .line 554
    iput p2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->lastValue:F

    return-void

    :cond_0
    sub-float p3, p2, p3

    const/4 v0, 0x0

    cmpl-float v1, p3, v0

    if-nez v1, :cond_1

    .line 561
    iput p2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->lastPositionOffset:F

    return-void

    .line 564
    :cond_1
    iget v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->scrollState:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 566
    iput-boolean v3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->pageSelected:Z

    cmpl-float p3, p2, v0

    if-nez p3, :cond_2

    return-void

    .line 570
    :cond_2
    iget-object p3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->target:Lio/dcloud/feature/weex/extend/DCWXSlider;

    iget-object p3, p3, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {p3}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->superGetCurrentItem()I

    move-result p3

    if-ne p1, p3, :cond_3

    .line 571
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    goto/16 :goto_6

    .line 572
    :cond_3
    iget-object p3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->target:Lio/dcloud/feature/weex/extend/DCWXSlider;

    iget-object p3, p3, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {p3}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->superGetCurrentItem()I

    move-result p3

    if-ge p1, p3, :cond_6

    .line 573
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    :cond_4
    :goto_0
    neg-float p1, p1

    goto :goto_6

    :cond_5
    if-eq v1, v2, :cond_7

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    move p1, p2

    goto :goto_6

    :cond_7
    :goto_1
    const/4 p1, -0x1

    cmpl-float v1, p2, v0

    if-nez v1, :cond_a

    .line 578
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    float-to-double v5, p3

    const-wide v7, 0x3feccccccccccccdL    # 0.9

    cmpl-double p3, v5, v7

    if-lez p3, :cond_8

    iget-boolean p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->pageSelected:Z

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_2

    :cond_8
    iget-boolean p3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->pageSelected:Z

    if-eqz p3, :cond_9

    goto :goto_2

    :cond_9
    const/4 p1, 0x0

    :goto_2
    int-to-float p1, p1

    goto :goto_5

    :cond_a
    cmpl-float p3, p3, v0

    if-lez p3, :cond_b

    .line 580
    iget-boolean p3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->pageSelected:Z

    if-eqz p3, :cond_d

    goto :goto_3

    :cond_b
    iget-boolean p3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->pageSelected:Z

    if-eqz p3, :cond_c

    goto :goto_4

    :cond_c
    :goto_3
    const/4 p1, 0x1

    :cond_d
    :goto_4
    int-to-float p1, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p3

    mul-float p1, p1, p3

    .line 583
    :goto_5
    iget p3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->preScrollstate:I

    if-ne p3, v2, :cond_f

    iget p3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->scrollState:I

    if-ne p3, v2, :cond_f

    cmpl-float p3, p1, v0

    if-lez p3, :cond_e

    iget p3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->lastValue:F

    cmpg-float p3, p3, v0

    if-ltz p3, :cond_4

    :cond_e
    cmpg-float p3, p1, v0

    if-gez p3, :cond_f

    iget p3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->lastValue:F

    cmpl-float p3, p3, v0

    if-lez p3, :cond_f

    goto :goto_0

    :cond_f
    :goto_6
    cmpg-float p3, p1, v0

    if-gez p3, :cond_10

    const/high16 p3, -0x40800000    # -1.0f

    cmpl-float p3, p1, p3

    if-lez p3, :cond_10

    const/high16 p3, 0x3f800000    # 1.0f

    add-float/2addr p1, p3

    neg-float p1, p1

    .line 591
    :cond_10
    iget p3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->preScrollstate:I

    if-ne p3, v2, :cond_11

    iget p3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->scrollState:I

    if-ne p3, v4, :cond_11

    .line 592
    iget-object p3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->target:Lio/dcloud/feature/weex/extend/DCWXSlider;

    iget-object p3, p3, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {p3}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->getmScroller()Lcom/taobao/weex/ui/view/WXSmoothScroller;

    move-result-object p3

    invoke-virtual {p3, v4}, Lcom/taobao/weex/ui/view/WXSmoothScroller;->forceFinished(Z)V

    .line 593
    iget-object p3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->target:Lio/dcloud/feature/weex/extend/DCWXSlider;

    const-string v0, "scrollend"

    invoke-virtual {p3, v0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->fireEvent(Ljava/lang/String;)V

    .line 595
    :cond_11
    iget p3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->scrollState:I

    iput p3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->preScrollstate:I

    .line 596
    iput p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->lastValue:F

    .line 597
    iget-object p3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->target:Lio/dcloud/feature/weex/extend/DCWXSlider;

    iget-object p3, p3, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {p3}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->isVertical()Z

    move-result p3

    const-string v0, "scroll"

    const-string v1, "drag"

    if-eqz p3, :cond_13

    .line 600
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3, v4}, Ljava/util/HashMap;-><init>(I)V

    neg-float p1, p1

    .line 601
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v2, "offsetYRatio"

    invoke-interface {p3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->target:Lio/dcloud/feature/weex/extend/DCWXSlider;

    iget-object p1, p1, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {p1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->getPointCounr()I

    move-result p1

    if-lez p1, :cond_12

    const/4 v3, 0x1

    :cond_12
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->target:Lio/dcloud/feature/weex/extend/DCWXSlider;

    invoke-virtual {p1, v0, p3}, Lio/dcloud/feature/weex/extend/DCWXSlider;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 605
    iput p2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->lastPositionOffset:F

    goto :goto_7

    .line 610
    :cond_13
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3, v4}, Ljava/util/HashMap;-><init>(I)V

    neg-float p1, p1

    .line 611
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v2, "offsetXRatio"

    invoke-interface {p3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->target:Lio/dcloud/feature/weex/extend/DCWXSlider;

    iget-object p1, p1, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {p1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->getPointCounr()I

    move-result p1

    if-lez p1, :cond_14

    const/4 v3, 0x1

    :cond_14
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->target:Lio/dcloud/feature/weex/extend/DCWXSlider;

    invoke-virtual {p1, v0, p3}, Lio/dcloud/feature/weex/extend/DCWXSlider;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 615
    iput p2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->lastPositionOffset:F

    :goto_7
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    const/4 v0, 0x1

    .line 622
    iput-boolean v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->pageSelected:Z

    .line 623
    iput p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;->selectedPosition:I

    return-void
.end method
