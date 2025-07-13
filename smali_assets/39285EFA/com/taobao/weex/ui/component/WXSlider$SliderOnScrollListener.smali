.class public Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;
.super Ljava/lang/Object;
.source "WXSlider.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SliderOnScrollListener"
.end annotation


# instance fields
.field private lastPositionOffset:F

.field private selectedPosition:I

.field private target:Lcom/taobao/weex/ui/component/WXSlider;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/component/WXSlider;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42c60000    # 99.0f

    .line 493
    iput v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->lastPositionOffset:F

    .line 498
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->target:Lcom/taobao/weex/ui/component/WXSlider;

    .line 499
    iget-object p1, p1, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superGetCurrentItem()I

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->selectedPosition:I

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

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 547
    :cond_0
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->target:Lcom/taobao/weex/ui/component/WXSlider;

    const-string v0, "scrollstart"

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/component/WXSlider;->fireEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/high16 p1, 0x42c60000    # 99.0f

    .line 543
    iput p1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->lastPositionOffset:F

    .line 544
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->target:Lcom/taobao/weex/ui/component/WXSlider;

    const-string v0, "scrollend"

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/component/WXSlider;->fireEvent(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3
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

    .line 504
    iget p3, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->lastPositionOffset:F

    const/high16 v0, 0x42c60000    # 99.0f

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    .line 505
    iput p2, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->lastPositionOffset:F

    return-void

    :cond_0
    sub-float p3, p2, p3

    .line 511
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->target:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/WXSlider;->access$600(Lcom/taobao/weex/ui/component/WXSlider;)F

    move-result v0

    cmpl-float p3, p3, v0

    if-ltz p3, :cond_3

    .line 512
    iget p3, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->selectedPosition:I

    const-string v0, "scroll"

    const-string v1, "offsetXRatio"

    const/4 v2, 0x1

    if-ne p1, p3, :cond_1

    .line 514
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(I)V

    neg-float p3, p2

    .line 515
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-interface {p1, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    iget-object p3, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->target:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-virtual {p3, v0, p1}, Lcom/taobao/weex/ui/component/WXSlider;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    if-ge p1, p3, :cond_2

    .line 519
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(I)V

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p3, p2

    .line 520
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-interface {p1, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    iget-object p3, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->target:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-virtual {p3, v0, p1}, Lcom/taobao/weex/ui/component/WXSlider;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 523
    :cond_2
    :goto_0
    iput p2, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->lastPositionOffset:F

    :cond_3
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 529
    iput p1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->selectedPosition:I

    return-void
.end method
