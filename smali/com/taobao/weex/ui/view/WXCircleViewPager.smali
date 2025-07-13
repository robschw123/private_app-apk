.class public Lcom/taobao/weex/ui/view/WXCircleViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "WXCircleViewPager.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;


# instance fields
.field private final SCROLL_TO_NEXT:I

.field private intervalTime:J

.field private isAutoScroll:Z

.field private mAutoScrollHandler:Landroid/os/Handler;

.field private mScroller:Lcom/taobao/weex/ui/view/WXSmoothScroller;

.field private mState:I

.field private needLoop:Z

.field private scrollable:Z

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

    .line 67
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 44
    iput p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->SCROLL_TO_NEXT:I

    const-wide/16 v0, 0xbb8

    .line 47
    iput-wide v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->intervalTime:J

    .line 49
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->needLoop:Z

    .line 50
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->scrollable:Z

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mState:I

    .line 52
    new-instance p1, Lcom/taobao/weex/ui/view/WXCircleViewPager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager$1;-><init>(Lcom/taobao/weex/ui/view/WXCircleViewPager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    .line 68
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
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

    .line 135
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 44
    iput p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->SCROLL_TO_NEXT:I

    const-wide/16 v0, 0xbb8

    .line 47
    iput-wide v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->intervalTime:J

    .line 49
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->needLoop:Z

    .line 50
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->scrollable:Z

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mState:I

    .line 52
    new-instance p1, Lcom/taobao/weex/ui/view/WXCircleViewPager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/taobao/weex/ui/view/WXCircleViewPager$1;-><init>(Lcom/taobao/weex/ui/view/WXCircleViewPager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    .line 136
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/view/WXCircleViewPager;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->showNextItem()V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/view/WXCircleViewPager;)J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->intervalTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/taobao/weex/ui/view/WXCircleViewPager;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mState:I

    return p1
.end method

.method static synthetic access$301(Lcom/taobao/weex/ui/view/WXCircleViewPager;)I
    .locals 0

    .line 42
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/view/WXCircleViewPager;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->needLoop:Z

    return p0
.end method

.method static synthetic access$500(Lcom/taobao/weex/ui/view/WXCircleViewPager;IZ)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superSetCurrentItem(IZ)V

    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x2

    .line 72
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setOverScrollMode(I)V

    .line 74
    new-instance v0, Lcom/taobao/weex/ui/view/WXCircleViewPager$2;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager$2;-><init>(Lcom/taobao/weex/ui/view/WXCircleViewPager;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 107
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->postInitViewPager()V

    return-void
.end method

.method private postInitViewPager()V
    .locals 5

    .line 115
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 119
    :cond_0
    :try_start_0
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const-string v1, "mScroller"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 121
    const-class v2, Landroidx/viewpager/widget/ViewPager;

    const-string v3, "sInterpolator"

    .line 122
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 123
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 125
    new-instance v1, Lcom/taobao/weex/ui/view/WXSmoothScroller;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    .line 126
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Interpolator;

    invoke-direct {v1, v3, v2}, Lcom/taobao/weex/ui/view/WXSmoothScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mScroller:Lcom/taobao/weex/ui/view/WXSmoothScroller;

    .line 127
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "[CircleViewPager] postInitViewPager: "

    .line 129
    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private setRealCurrentItem(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "item",
            "smooth"
        }
    .end annotation

    .line 290
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getFirst()I

    move-result v0

    add-int/2addr v0, p1

    invoke-direct {p0, v0, p2}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superSetCurrentItem(IZ)V

    return-void
.end method

.method private showNextItem()V
    .locals 4

    .line 337
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getCirclePageAdapter()Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getCirclePageAdapter()Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->isRTL:Z

    if-eqz v0, :cond_2

    .line 338
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->needLoop:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superGetCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getRealCount()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superGetCurrentItem()I

    move-result v0

    if-nez v0, :cond_1

    .line 342
    invoke-direct {p0, v2, v2}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superSetCurrentItem(IZ)V

    goto :goto_0

    .line 344
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superGetCurrentItem()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superSetCurrentItem(IZ)V

    goto :goto_0

    .line 347
    :cond_2
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->needLoop:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superGetCurrentItem()I

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getRealCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_3

    return-void

    .line 350
    :cond_3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getRealCount()I

    move-result v0

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superGetCurrentItem()I

    move-result v0

    if-ne v0, v2, :cond_4

    const/4 v0, 0x0

    .line 351
    invoke-direct {p0, v0, v2}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superSetCurrentItem(IZ)V

    goto :goto_0

    .line 353
    :cond_4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superGetCurrentItem()I

    move-result v0

    add-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superSetCurrentItem(IZ)V

    :goto_0
    return-void
.end method

.method private superSetCurrentItem(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "item",
            "smooth"
        }
    .end annotation

    .line 296
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getRealCurrentItem()I

    move-result v0

    sub-int v0, p1, v0

    .line 297
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->needLoop:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getRealCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getCirclePageAdapter()Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x2

    const/4 v1, 0x0

    .line 298
    invoke-super {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 301
    :catch_1
    :cond_0
    :goto_0
    :try_start_1
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 303
    :goto_1
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 305
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 306
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_1
    :goto_2
    return-void
.end method


# virtual methods
.method public destory()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
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

    .line 247
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->isAutoScroll()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->intervalTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 260
    :cond_2
    :goto_0
    :try_start_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 261
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v1, :cond_3

    .line 262
    invoke-virtual {v1, p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr v0, p1

    :cond_3
    return v0

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCirclePageAdapter()Lcom/taobao/weex/ui/view/WXCirclePageAdapter;
    .locals 1

    .line 213
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 141
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getRealCurrentItem()I

    move-result v0

    return v0
.end method

.method public getGestureListener()Lcom/taobao/weex/ui/view/gesture/WXGesture;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-object v0
.end method

.method public getIntervalTime()J
    .locals 2

    .line 229
    iget-wide v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->intervalTime:J

    return-wide v0
.end method

.method public getRealCount()I
    .locals 1

    .line 312
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v0

    return v0
.end method

.method public getRealCurrentItem()I
    .locals 2

    .line 285
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 286
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v1, v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealPosition(I)I

    move-result v0

    return v0
.end method

.method public getmScroller()Lcom/taobao/weex/ui/view/WXSmoothScroller;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mScroller:Lcom/taobao/weex/ui/view/WXSmoothScroller;

    return-object v0
.end method

.method public isAutoScroll()Z
    .locals 1

    .line 197
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->isAutoScroll:Z

    return v0
.end method

.method public isScrollable()Z
    .locals 1

    .line 329
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->scrollable:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    const/4 v0, 0x0

    .line 151
    :try_start_0
    iget-boolean v1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->scrollable:Z

    if-eqz v1, :cond_0

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p1

    .line 155
    invoke-virtual {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 153
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return v0
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

    .line 318
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 320
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 323
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 162
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->scrollable:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 165
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public pauseAutoScroll()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
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

    .line 276
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-void
.end method

.method public scrollTo(II)V
    .locals 2
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

    .line 170
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->scrollable:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 171
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    :cond_1
    return-void
.end method

.method public setCircle(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "circle"
        }
    .end annotation

    .line 242
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->needLoop:Z

    return-void
.end method

.method public setCirclePageAdapter(Lcom/taobao/weex/ui/view/WXCirclePageAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "circlePageAdapter"
        }
    .end annotation

    .line 220
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    const/4 v0, 0x1

    .line 202
    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setRealCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "item",
            "smooth"
        }
    .end annotation

    .line 206
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setRealCurrentItem(IZ)V

    return-void
.end method

.method public setIntervalTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intervalTime"
        }
    .end annotation

    .line 238
    iput-wide p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->intervalTime:J

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

    .line 333
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->scrollable:Z

    return-void
.end method

.method public startAutoScroll()V
    .locals 4

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->isAutoScroll:Z

    .line 180
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 181
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->intervalTime:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public stopAutoScroll()V
    .locals 2

    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->isAutoScroll:Z

    .line 193
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager;->mAutoScrollHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public superGetCurrentItem()I
    .locals 1

    .line 145
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method
