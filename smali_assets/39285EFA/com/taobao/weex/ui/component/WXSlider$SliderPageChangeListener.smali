.class public Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;
.super Ljava/lang/Object;
.source "WXSlider.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SliderPageChangeListener"
.end annotation


# instance fields
.field private lastPos:I

.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXSlider;


# direct methods
.method protected constructor <init>(Lcom/taobao/weex/ui/component/WXSlider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 436
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 438
    iput p1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->lastPos:I

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 485
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXSlider;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    .line 487
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
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

    return-void
.end method

.method public onPageSelected(I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 447
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealPosition(I)I

    move-result v0

    iget v1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->lastPos:I

    if-ne v0, v1, :cond_0

    return-void

    .line 450
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageSelected >>>>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v1, p1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " lastPos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->lastPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 457
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealPosition(I)I

    move-result v0

    .line 458
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/WXSlider;->access$400(Lcom/taobao/weex/ui/component/WXSlider;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/WXSlider;->access$500(Lcom/taobao/weex/ui/component/WXSlider;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    goto/16 :goto_0

    .line 462
    :cond_3
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXSlider;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/dom/WXEvent;->size()I

    move-result v1

    if-nez v1, :cond_4

    return-void

    .line 465
    :cond_4
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXSlider;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    .line 466
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXSlider;->getRef()Ljava/lang/String;

    move-result-object v5

    const-string v2, "change"

    .line 467
    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXSlider;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXViewUtils;->onScreenArea(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 468
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/WXSlider;->params:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "index"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 471
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 472
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "attrs"

    .line 473
    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v3

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXSlider;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    iget-object v7, v0, Lcom/taobao/weex/ui/component/WXSlider;->params:Ljava/util/Map;

    const-string v6, "change"

    invoke-virtual/range {v3 .. v8}, Lcom/taobao/weex/WXSDKManager;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 478
    :cond_5
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->requestLayout()V

    .line 479
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXSlider;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 480
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealPosition(I)I

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->lastPos:I

    :cond_6
    :goto_0
    return-void
.end method
