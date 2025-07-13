.class public Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;
.super Landroid/widget/ScrollView;
.source "DCWXScrollView.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/taobao/weex/ui/view/IWXScroller;
.implements Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;
.implements Landroidx/core/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;
    }
.end annotation


# instance fields
.field private childHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field private consumed:[I

.field private decelerationRate:F

.field private isExecScrollerTask:Z

.field private isTouch:Z

.field private lowwer:F

.field private mCheckTime:I

.field private mCurrentStickyView:Landroid/view/View;

.field private mHasNotDoneActionDown:Z

.field private mInitialPosition:I

.field private mRedirectTouchToStickyView:Z

.field private mScrollRect:Landroid/graphics/Rect;

.field private mScrollViewListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;",
            ">;"
        }
    .end annotation
.end field

.field mScrollX:I

.field mScrollY:I

.field private mScrollerTask:Landroid/os/Handler;

.field private mStickyOffset:I

.field private mStickyP:[I

.field private mWAScroller:Lcom/taobao/weex/ui/component/DCWXScroller;

.field private offsetInWindow:[I

.field private ox:F

.field private oy:F

.field private scrollable:Z

.field private scroller:Ljava/lang/reflect/Field;

.field private shouldBeTriggerLower:Z

.field private shouldBeTriggerUpper:Z

.field private stickyScrollerP:[I

.field private stickyViewP:[I

.field private upper:F

.field private wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array v0, p1, [I

    .line 67
    iput-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->consumed:[I

    new-array v0, p1, [I

    .line 68
    iput-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->offsetInWindow:[I

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mHasNotDoneActionDown:Z

    const/16 v1, 0x64

    .line 83
    iput v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCheckTime:I

    new-array v1, p1, [I

    .line 87
    iput-object v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mStickyP:[I

    new-array v1, p1, [I

    .line 92
    iput-object v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->stickyScrollerP:[I

    new-array p1, p1, [I

    .line 93
    iput-object p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->stickyViewP:[I

    .line 94
    iput-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->scrollable:Z

    const/4 p1, 0x0

    .line 96
    iput-object p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->scroller:Ljava/lang/reflect/Field;

    const/4 p1, 0x0

    .line 97
    iput-boolean p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->isTouch:Z

    .line 135
    iput-boolean p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->isExecScrollerTask:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 378
    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->decelerationRate:F

    .line 389
    iput-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->shouldBeTriggerUpper:Z

    .line 390
    iput-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->shouldBeTriggerLower:Z

    const/high16 p1, 0x42480000    # 50.0f

    .line 425
    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->upper:F

    .line 426
    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->lowwer:F

    .line 101
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollViewListeners:Ljava/util/List;

    .line 102
    invoke-direct {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->init()V

    :try_start_0
    const-string p1, "mMinimumVelocity"

    const/4 v0, 0x5

    .line 104
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/taobao/weex/utils/WXReflectionUtils;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "[WXScrollView] WXScrollView: "

    .line 106
    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
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

    .line 147
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p2, p1, [I

    .line 67
    iput-object p2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->consumed:[I

    new-array p2, p1, [I

    .line 68
    iput-object p2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->offsetInWindow:[I

    const/4 p2, 0x1

    .line 79
    iput-boolean p2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mHasNotDoneActionDown:Z

    const/16 v0, 0x64

    .line 83
    iput v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCheckTime:I

    new-array v0, p1, [I

    .line 87
    iput-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mStickyP:[I

    new-array v0, p1, [I

    .line 92
    iput-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->stickyScrollerP:[I

    new-array p1, p1, [I

    .line 93
    iput-object p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->stickyViewP:[I

    .line 94
    iput-boolean p2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->scrollable:Z

    const/4 p1, 0x0

    .line 96
    iput-object p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->scroller:Ljava/lang/reflect/Field;

    const/4 p1, 0x0

    .line 97
    iput-boolean p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->isTouch:Z

    .line 135
    iput-boolean p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->isExecScrollerTask:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 378
    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->decelerationRate:F

    .line 389
    iput-boolean p2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->shouldBeTriggerUpper:Z

    .line 390
    iput-boolean p2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->shouldBeTriggerLower:Z

    const/high16 p1, 0x42480000    # 50.0f

    .line 425
    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->upper:F

    .line 426
    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->lowwer:F

    .line 148
    invoke-direct {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    new-array p2, p1, [I

    .line 67
    iput-object p2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->consumed:[I

    new-array p2, p1, [I

    .line 68
    iput-object p2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->offsetInWindow:[I

    const/4 p2, 0x1

    .line 79
    iput-boolean p2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mHasNotDoneActionDown:Z

    const/16 p3, 0x64

    .line 83
    iput p3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCheckTime:I

    new-array p3, p1, [I

    .line 87
    iput-object p3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mStickyP:[I

    new-array p3, p1, [I

    .line 92
    iput-object p3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->stickyScrollerP:[I

    new-array p3, p1, [I

    .line 93
    iput-object p3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->stickyViewP:[I

    .line 94
    iput-boolean p2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->scrollable:Z

    const/4 p3, 0x0

    .line 96
    iput-object p3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->scroller:Ljava/lang/reflect/Field;

    const/4 p3, 0x0

    .line 97
    iput-boolean p3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->isTouch:Z

    .line 135
    iput-boolean p3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->isExecScrollerTask:Z

    const/high16 p3, 0x3f800000    # 1.0f

    .line 378
    iput p3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->decelerationRate:F

    .line 389
    iput-boolean p2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->shouldBeTriggerUpper:Z

    .line 390
    iput-boolean p2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->shouldBeTriggerLower:Z

    const/high16 p2, 0x42480000    # 50.0f

    .line 425
    iput p2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->upper:F

    .line 426
    iput p2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->lowwer:F

    .line 153
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->setOverScrollMode(I)V

    return-void
.end method

.method private init()V
    .locals 3

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->setWillNotDraw(Z)V

    const/4 v0, 0x2

    .line 113
    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->setOverScrollMode(I)V

    .line 114
    new-instance v0, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->childHelper:Landroidx/core/view/NestedScrollingChildHelper;

    const/4 v1, 0x1

    .line 115
    invoke-virtual {v0, v1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 118
    :try_start_0
    const-class v0, Landroid/widget/ScrollView;

    const-string v2, "mScroller"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->scroller:Ljava/lang/reflect/Field;

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private procSticky(Ljava/util/Map;)Landroid/view/View;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mStickyMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;>;)",
            "Landroid/view/View;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 474
    :cond_0
    iget-object v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mWAScroller:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/DCWXScroller;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_1

    return-object v0

    .line 479
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 482
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 483
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 484
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/WXComponent;

    .line 486
    iget-object v2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->stickyScrollerP:[I

    invoke-virtual {p0, v2}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getLocationOnScreen([I)V

    .line 487
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->stickyViewP:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 489
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXVContainer;->getRealView()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 490
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXVContainer;->getRealView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 492
    :goto_1
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 493
    iget-object v5, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->stickyScrollerP:[I

    const/4 v6, 0x1

    aget v7, v5, v6

    neg-int v2, v2

    .line 494
    aget v8, v5, v6

    add-int/2addr v2, v8

    add-int/2addr v2, v4

    .line 495
    iget-object v8, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->stickyViewP:[I

    aget v9, v8, v6

    if-gt v9, v7, :cond_3

    aget v7, v8, v6

    sub-int v4, v2, v4

    if-lt v7, v4, :cond_3

    .line 496
    aget p1, v8, v6

    sub-int/2addr p1, v2

    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mStickyOffset:I

    .line 497
    aget p1, v8, v6

    aget v0, v5, v6

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setStickyOffset(I)V

    .line 498
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 500
    :cond_3
    invoke-virtual {v1, v3}, Lcom/taobao/weex/ui/component/WXComponent;->setStickyOffset(I)V

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private showStickyView()V
    .locals 1

    .line 458
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mWAScroller:Lcom/taobao/weex/ui/component/DCWXScroller;

    if-nez v0, :cond_0

    return-void

    .line 461
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getStickMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->procSticky(Ljava/util/Map;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 464
    iput-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCurrentStickyView:Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 466
    iput-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCurrentStickyView:Landroid/view/View;

    :goto_0
    return-void
.end method


# virtual methods
.method public addScrollViewListener(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollViewListener"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 540
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 541
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollerTask:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 542
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 223
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 224
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCurrentStickyView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 226
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCurrentStickyView:Landroid/view/View;

    iget-object v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mStickyP:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 227
    iget v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mStickyOffset:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 228
    :goto_0
    iget-object v2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mStickyP:[I

    aget v2, v2, v1

    int-to-float v2, v2

    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getScrollY()I

    move-result v3

    add-int/2addr v3, v0

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 229
    iget-object v2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCurrentStickyView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCurrentStickyView:Landroid/view/View;

    .line 230
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 229
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 231
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCurrentStickyView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 232
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "velocityX",
            "velocityY",
            "consumed"
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->childHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "velocityX",
            "velocityY"
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->childHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy",
            "consumed",
            "offsetInWindow"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->childHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dxConsumed",
            "dyConsumed",
            "dxUnconsumed",
            "dyUnconsumed",
            "offsetInWindow"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->childHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 193
    iput-boolean v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mRedirectTouchToStickyView:Z

    .line 196
    :cond_0
    iget-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mRedirectTouchToStickyView:Z

    if-eqz v0, :cond_3

    .line 197
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCurrentStickyView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mRedirectTouchToStickyView:Z

    if-eqz v0, :cond_3

    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCurrentStickyView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCurrentStickyView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCurrentStickyView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mRedirectTouchToStickyView:Z

    .line 206
    :cond_3
    iget-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mRedirectTouchToStickyView:Z

    if-eqz v0, :cond_5

    .line 207
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollRect:Landroid/graphics/Rect;

    if-nez v0, :cond_4

    .line 208
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollRect:Landroid/graphics/Rect;

    .line 209
    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 211
    :cond_4
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCurrentStickyView:Landroid/view/View;

    iget-object v2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->stickyViewP:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    .line 212
    iget-object v2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->stickyViewP:[I

    aget v1, v2, v1

    iget-object v2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 214
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 215
    iget-object v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v1, :cond_6

    .line 216
    invoke-virtual {v1, p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_6
    return v0
.end method

.method public fling(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "velocityY"
        }
    .end annotation

    int-to-float p1, p1

    .line 382
    iget v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->decelerationRate:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    .line 383
    iget-object p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollerTask:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 384
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 386
    :cond_0
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->startScrollerTask()V

    return-void
.end method

.method public getContentFrame()Landroid/graphics/Rect;
    .locals 4

    .line 557
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->computeHorizontalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->computeVerticalScrollRange()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getGestureListener()Lcom/taobao/weex/ui/view/gesture/WXGesture;
    .locals 1

    .line 553
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 508
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 510
    :cond_0
    iget-object p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollerTask:Landroid/os/Handler;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 511
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 513
    :cond_1
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getScrollY()I

    move-result p1

    .line 514
    iget v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mInitialPosition:I

    sub-int/2addr v1, p1

    if-nez v1, :cond_2

    .line 515
    iput-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->isExecScrollerTask:Z

    .line 516
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getScrollY()I

    move-result v0

    invoke-virtual {p0, p0, p1, v0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->onScrollStopped(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;II)V

    goto :goto_0

    .line 518
    :cond_2
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, p0, p1, v1}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->onScroll(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;II)V

    .line 519
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getScrollY()I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mInitialPosition:I

    .line 520
    iget-object p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollerTask:Landroid/os/Handler;

    if-eqz p1, :cond_3

    .line 521
    iget v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCheckTime:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 331
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->childHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 316
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->childHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isScrollable()Z
    .locals 1

    .line 335
    iget-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->scrollable:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->isScrollable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 174
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "velocityX",
            "velocityY",
            "consumed"
        }
    .end annotation

    .line 371
    invoke-virtual {p0, p2, p3, p4}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "velocityX",
            "velocityY"
        }
    .end annotation

    .line 365
    invoke-virtual {p0, p2, p3}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method protected onScroll(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "scrollView",
            "x",
            "y"
        }
    .end annotation

    .line 437
    iget-object p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollViewListeners:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_0
    if-ge v0, p1, :cond_1

    .line 439
    iget-object v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;

    invoke-interface {v1, p0, p2, p3}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;->onScroll(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "oldx",
            "oldy"
        }
    .end annotation

    .line 394
    invoke-static {p1, p2}, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->onScrollChanged(II)V

    .line 395
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->startScrollerTask()V

    .line 396
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getScrollX()I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollX:I

    .line 397
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getScrollY()I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollY:I

    .line 398
    iget v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollX:I

    invoke-virtual {p0, p0, v1, v0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->onScroll(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;II)V

    .line 399
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 403
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 404
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollY:I

    add-int/2addr v2, v3

    sub-int/2addr v0, v2

    int-to-float v0, v0

    .line 405
    iget v2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->lowwer:F

    const/4 v4, 0x0

    cmpg-float v5, v0, v2

    if-gtz v5, :cond_1

    iget-boolean v5, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->shouldBeTriggerLower:Z

    if-nez v5, :cond_1

    .line 406
    iput-boolean v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->shouldBeTriggerLower:Z

    .line 407
    iget v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollX:I

    invoke-virtual {p0, v0, v3}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->onScrollToBottom(II)V

    goto :goto_0

    :cond_1
    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 409
    iput-boolean v4, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->shouldBeTriggerLower:Z

    .line 411
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->upper:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_3

    iget-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->shouldBeTriggerUpper:Z

    if-nez v0, :cond_3

    .line 412
    iput-boolean v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->shouldBeTriggerUpper:Z

    .line 413
    iget v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollX:I

    iget v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->onScrollToTop(II)V

    goto :goto_1

    .line 414
    :cond_3
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->upper:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 415
    iput-boolean v4, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->shouldBeTriggerUpper:Z

    .line 417
    :cond_4
    :goto_1
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollViewListeners:Ljava/util/List;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    if-ge v4, v0, :cond_6

    .line 419
    iget-object v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;

    sub-int v9, p3, p1

    sub-int v10, p4, p2

    move-object v6, p0

    move v7, p1

    move v8, p2

    invoke-interface/range {v5 .. v10}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;->onScrollChanged(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;IIII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 422
    :cond_6
    invoke-direct {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->showStickyView()V

    return-void
.end method

.method protected onScrollStopped(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "scrollView",
            "x",
            "y"
        }
    .end annotation

    .line 532
    iget-object p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollViewListeners:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_0
    if-ge v0, p1, :cond_1

    .line 534
    iget-object v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;

    invoke-interface {v1, p0, p2, p3}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;->onScrollStopped(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onScrollToBottom(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollViewListeners:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 446
    iget-object v2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;

    invoke-interface {v2, p0, p1, p2}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;->onScrollToBottom(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onScrollToTop(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 451
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollViewListeners:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 453
    iget-object v2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;

    invoke-interface {v2, p0, p1, p2}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;->onScrollToTop(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 238
    iget-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->scrollable:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 241
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 247
    :cond_1
    iput-boolean v3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->isTouch:Z

    goto :goto_0

    .line 243
    :cond_2
    iput-boolean v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->isTouch:Z

    .line 250
    :goto_0
    iget-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mRedirectTouchToStickyView:Z

    if-eqz v0, :cond_4

    .line 252
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollRect:Landroid/graphics/Rect;

    if-nez v0, :cond_3

    .line 253
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollRect:Landroid/graphics/Rect;

    .line 254
    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 256
    :cond_3
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCurrentStickyView:Landroid/view/View;

    iget-object v4, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->stickyViewP:[I

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    .line 257
    iget-object v4, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->stickyViewP:[I

    aget v4, v4, v1

    iget-object v5, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v0, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 260
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    .line 261
    iput-boolean v3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mHasNotDoneActionDown:Z

    .line 264
    :cond_5
    iget-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mHasNotDoneActionDown:Z

    if-eqz v0, :cond_6

    .line 265
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 266
    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 267
    iput-boolean v3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mHasNotDoneActionDown:Z

    .line 268
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 271
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7

    .line 272
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->ox:F

    .line 273
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->oy:F

    .line 275
    invoke-virtual {p0, v2}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->startNestedScroll(I)Z

    .line 278
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_9

    .line 279
    :cond_8
    iput-boolean v3, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->isExecScrollerTask:Z

    .line 280
    iput-boolean v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mHasNotDoneActionDown:Z

    .line 282
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->stopNestedScroll()V

    .line 292
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    const/16 v0, 0x13

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_b

    .line 293
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 295
    iget v4, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->ox:F

    sub-float/2addr v4, v0

    float-to-int v4, v4

    .line 296
    iget v5, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->oy:F

    sub-float/2addr v5, v2

    float-to-int v5, v5

    .line 298
    iget-object v6, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->consumed:[I

    iget-object v7, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->offsetInWindow:[I

    invoke-virtual {p0, v4, v5, v6, v7}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 300
    iget-object v4, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->consumed:[I

    aget v3, v4, v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    aget v1, v4, v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 302
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->ox:F

    .line 303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->oy:F

    .line 306
    :cond_b
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wxGesture"
        }
    .end annotation

    .line 548
    iput-object p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-void
.end method

.method public removeScrollViewListener(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollViewListener"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setLowwerLength(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    .line 433
    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->lowwer:F

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->childHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setRate(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "picker"
        }
    .end annotation

    .line 375
    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->decelerationRate:F

    return-void
.end method

.method public setScrollable(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollable"
        }
    .end annotation

    .line 339
    iput-boolean p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->scrollable:Z

    return-void
.end method

.method public setUpperLength(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    .line 429
    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->upper:F

    return-void
.end method

.method public setWAScroller(Lcom/taobao/weex/ui/component/DCWXScroller;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mWAScroller"
        }
    .end annotation

    .line 574
    iput-object p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mWAScroller:Lcom/taobao/weex/ui/component/DCWXScroller;

    .line 575
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/DCWXScroller;->getViewPortWidth()I

    move-result p1

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result p1

    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->upper:F

    .line 576
    iget-object p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mWAScroller:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/DCWXScroller;->getViewPortWidth()I

    move-result p1

    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result p1

    iput p1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->lowwer:F

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "axes"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->childHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p1

    return p1
.end method

.method public startScrollerTask()V
    .locals 4

    .line 137
    iget-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->isExecScrollerTask:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->isExecScrollerTask:Z

    .line 139
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollerTask:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 140
    new-instance v0, Landroid/os/Handler;

    invoke-static {p0}, Lcom/taobao/weex/common/WXThread;->secure(Landroid/os/Handler$Callback;)Landroid/os/Handler$Callback;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollerTask:Landroid/os/Handler;

    .line 142
    :cond_1
    invoke-virtual {p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getScrollY()I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mInitialPosition:I

    .line 143
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mScrollerTask:Landroid/os/Handler;

    const/4 v1, 0x0

    iget v2, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->mCheckTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 326
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->childHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method

.method public stopScroll()V
    .locals 4

    .line 124
    iget-object v0, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->scroller:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->isTouch:Z

    if-nez v1, :cond_0

    .line 126
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "abortAnimation"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 127
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 130
    iget-object v1, p0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->scroller:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
