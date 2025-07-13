.class public Lio/dcloud/feature/weex/extend/DCWXSlider;
.super Lcom/taobao/weex/ui/component/WXVContainer;
.source "DCWXSlider.java"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/weex/extend/DCWXSlider$FlingGestureListener;,
        Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;,
        Lio/dcloud/feature/weex/extend/DCWXSlider$SliderPageChangeListener;,
        Lio/dcloud/feature/weex/extend/DCWXSlider$Creator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXVContainer<",
        "Landroid/widget/FrameLayout;",
        ">;"
    }
.end annotation


# static fields
.field public static final INDEX:Ljava/lang/String; = "index"

.field public static final INFINITE:Ljava/lang/String; = "infinite"

.field public static final SOURCE:Ljava/lang/String; = "source"


# instance fields
.field private initIndex:I

.field private initRunnable:Ljava/lang/Runnable;

.field protected isDrag:Z

.field private isInfinite:Z

.field private keepIndex:Z

.field protected mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

.field protected mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

.field protected mPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field protected mShowIndicators:Z

.field mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

.field private offsetXAccuracy:F

.field params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instance",
            "parent",
            "basicComponentData"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXVContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->isInfinite:Z

    .line 69
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->params:Ljava/util/Map;

    const p2, 0x3dcccccd    # 0.1f

    .line 70
    iput p2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->offsetXAccuracy:F

    const/4 p2, -0x1

    .line 71
    iput p2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->initIndex:I

    .line 72
    iput-boolean p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->keepIndex:Z

    .line 99
    iput-boolean p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mShowIndicators:Z

    .line 101
    new-instance p1, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderPageChangeListener;

    invoke-direct {p1, p0}, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderPageChangeListener;-><init>(Lio/dcloud/feature/weex/extend/DCWXSlider;)V

    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    const/4 p1, 0x0

    .line 103
    iput-boolean p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->isDrag:Z

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instance",
            "parent",
            "instanceId",
            "isLazy",
            "basicComponentData"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2, p5}, Lio/dcloud/feature/weex/extend/DCWXSlider;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/weex/extend/DCWXSlider;)I
    .locals 0

    .line 61
    iget p0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->initIndex:I

    return p0
.end method

.method static synthetic access$002(Lio/dcloud/feature/weex/extend/DCWXSlider;I)I
    .locals 0

    .line 61
    iput p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->initIndex:I

    return p1
.end method

.method static synthetic access$100(Lio/dcloud/feature/weex/extend/DCWXSlider;)I
    .locals 0

    .line 61
    invoke-direct {p0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getInitIndex()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lio/dcloud/feature/weex/extend/DCWXSlider;I)I
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getRealIndex(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$302(Lio/dcloud/feature/weex/extend/DCWXSlider;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 61
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->initRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lio/dcloud/feature/weex/extend/DCWXSlider;)Ljava/util/ArrayList;
    .locals 0

    .line 61
    iget-object p0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mChildren:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lio/dcloud/feature/weex/extend/DCWXSlider;)Ljava/util/ArrayList;
    .locals 0

    .line 61
    iget-object p0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mChildren:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getInitIndex()I
    .locals 3

    .line 295
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "index"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 299
    :cond_0
    iget v2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->initIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 300
    iget-object v2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 303
    :cond_1
    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 304
    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v1

    rem-int/2addr v0, v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method private getRealIndex(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 314
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 315
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 317
    :cond_0
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    :cond_1
    add-int/lit8 p1, p1, 0x0

    return p1
.end method

.method private hackTwoItemsInfiniteScroll()V
    .locals 4

    .line 660
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    .line 663
    :cond_0
    iget-boolean v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->isInfinite:Z

    if-eqz v1, :cond_2

    .line 664
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 665
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lio/dcloud/feature/weex/extend/DCWXSlider$FlingGestureListener;

    iget-object v3, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-direct {v2, v3}, Lio/dcloud/feature/weex/extend/DCWXSlider$FlingGestureListener;-><init>(Lcom/taobao/weex/ui/view/WXCircleViewPager;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 666
    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    new-instance v2, Lio/dcloud/feature/weex/extend/DCWXSlider$2;

    invoke-direct {v2, p0, v0}, Lio/dcloud/feature/weex/extend/DCWXSlider$2;-><init>(Lio/dcloud/feature/weex/extend/DCWXSlider;Landroid/view/GestureDetector;)V

    invoke-virtual {v1, v2}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 673
    :cond_1
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 166
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->addEvent(Ljava/lang/String;)V

    const-string v0, "scroll"

    .line 167
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 168
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    if-nez p1, :cond_0

    return-void

    .line 171
    :cond_0
    new-instance v0, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex/extend/DCWXSlider$SliderOnScrollListener;-><init>(Lio/dcloud/feature/weex/extend/DCWXSlider;)V

    invoke-virtual {p1, v0}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_1
    return-void
.end method

.method public addIndicator(Lcom/taobao/weex/ui/component/WXIndicator;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indicator"
        }
    .end annotation

    .line 278
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 282
    :cond_0
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

    .line 283
    iget-boolean v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mShowIndicators:Z

    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/component/WXIndicator;->setShowIndicators(Z)V

    .line 284
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    if-eqz p1, :cond_1

    .line 286
    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/view/WXCircleIndicator;->setCircleViewPager(Lcom/taobao/weex/ui/view/WXCircleViewPager;)V

    .line 288
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public addSubView(Landroid/view/View;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "index"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 188
    iget-object p2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-nez p2, :cond_0

    goto :goto_1

    .line 192
    :cond_0
    instance-of v0, p1, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    if-eqz v0, :cond_1

    return-void

    .line 195
    :cond_1
    invoke-virtual {p2, p1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->addPageView(Landroid/view/View;)V

    .line 196
    invoke-direct {p0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->hackTwoItemsInfiniteScroll()V

    .line 197
    iget p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->initIndex:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_3

    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result p1

    iget p2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->initIndex:I

    if-le p1, p2, :cond_3

    .line 198
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->initRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_2

    .line 199
    new-instance p1, Lio/dcloud/feature/weex/extend/DCWXSlider$1;

    invoke-direct {p1, p0}, Lio/dcloud/feature/weex/extend/DCWXSlider$1;-><init>(Lio/dcloud/feature/weex/extend/DCWXSlider;)V

    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->initRunnable:Ljava/lang/Runnable;

    .line 210
    :cond_2
    invoke-direct {p0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getInitIndex()I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->initIndex:I

    .line 211
    iget-object p2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getRealIndex(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->setCurrentItem(I)V

    .line 212
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    iget-object p2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->initRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 213
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    iget-object p2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->initRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x32

    invoke-virtual {p1, p2, v0, v1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 215
    :cond_3
    iget-boolean p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->keepIndex:Z

    if-nez p1, :cond_4

    .line 216
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getRealIndex(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->setCurrentItem(I)V

    .line 219
    :cond_4
    :goto_0
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

    if-eqz p1, :cond_5

    .line 220
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXCircleIndicator;->forceLayout()V

    .line 221
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXCircleIndicator;->requestLayout()V

    :cond_5
    :goto_1
    return-void
.end method

.method public containsGesture(Lcom/taobao/weex/ui/view/gesture/WXGestureType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "WXGestureType"
        }
    .end annotation

    .line 178
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->containsGesture(Lcom/taobao/weex/ui/view/gesture/WXGestureType;)Z

    move-result p1

    return p1
.end method

.method public destroy()V
    .locals 1

    .line 246
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->destroy()V

    .line 247
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->stopAutoScroll()V

    .line 249
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->removeAllViews()V

    .line 250
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->destory()V

    :cond_0
    return-void
.end method

.method public getChildLayoutParams(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;IIIIII)Landroid/view/ViewGroup$LayoutParams;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "childView",
            "width",
            "height",
            "left",
            "right",
            "top",
            "bottom"
        }
    .end annotation

    .line 144
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_0

    .line 146
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 148
    :cond_0
    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 149
    iput p4, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 152
    :goto_0
    instance-of p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p3, :cond_2

    .line 154
    instance-of p1, p1, Lcom/taobao/weex/ui/component/WXIndicator;

    if-eqz p1, :cond_1

    .line 155
    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v0, p0

    move v2, p5

    move v3, p7

    move v4, p6

    move v5, p8

    invoke-virtual/range {v0 .. v5}, Lio/dcloud/feature/weex/extend/DCWXSlider;->setMarginsSupportRTL(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    goto :goto_1

    .line 157
    :cond_1
    move-object p4, p2

    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 p5, 0x0

    const/4 p6, 0x0

    const/4 p7, 0x0

    const/4 p8, 0x0

    move-object p3, p0

    invoke-virtual/range {p3 .. p8}, Lio/dcloud/feature/weex/extend/DCWXSlider;->setMarginsSupportRTL(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    :cond_2
    :goto_1
    return-object p2
.end method

.method public getCurrentIndex()I
    .locals 1

    .line 271
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->superGetCurrentItem()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic getRealView()Landroid/view/View;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getRealView()Landroid/view/ViewGroup;
    .locals 1

    .line 183
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    return-object v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "context"
        }
    .end annotation

    .line 59
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/extend/DCWXSlider;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/BaseFrameLayout;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/BaseFrameLayout;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/taobao/weex/ui/view/BaseFrameLayout;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string v2, "infinite"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    .line 119
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->isInfinite:Z

    .line 121
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 123
    new-instance v2, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-direct {v2, p1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    .line 124
    iget-boolean p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->isInfinite:Z

    invoke-virtual {v2, p1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->setCircle(Z)V

    .line 125
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {p1, v1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    new-instance p1, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    iget-boolean v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->isInfinite:Z

    invoke-direct {p1, v1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;-><init>(Z)V

    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    .line 129
    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {v1, p1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 131
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/BaseFrameLayout;->addView(Landroid/view/View;)V

    .line 132
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 134
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->registerActivityStateListener()V

    return-object v0
.end method

.method public onActivityResume()V
    .locals 1

    .line 256
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->onActivityResume()V

    .line 257
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->isAutoScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->startAutoScroll()V

    :cond_0
    return-void
.end method

.method public onActivityStop()V
    .locals 1

    .line 264
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->onActivityStop()V

    .line 265
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->pauseAutoScroll()V

    :cond_0
    return-void
.end method

.method public remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "child",
            "destroy"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 235
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->removePageView(Landroid/view/View;)V

    .line 240
    invoke-direct {p0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->hackTwoItemsInfiniteScroll()V

    .line 241
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVContainer;->remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAutoPlay(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "autoPlay"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoPlay"
        }
    .end annotation

    .line 394
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {p1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->stopAutoScroll()V

    .line 398
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {p1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->startAutoScroll()V

    goto :goto_1

    .line 395
    :cond_1
    :goto_0
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {p1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->stopAutoScroll()V

    :goto_1
    return-void
.end method

.method public setIndex(I)V
    .locals 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "index"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-eqz v0, :cond_3

    .line 433
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    if-gez p1, :cond_0

    goto/16 :goto_0

    .line 438
    :cond_0
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getRealIndex(I)I

    move-result p1

    .line 439
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_1

    .line 441
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->setCurrentItem(IZ)V

    .line 443
    :cond_1
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->setCurrentItem(I)V

    .line 444
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

    .line 445
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleIndicator;->getRealCurrentItem()I

    move-result v0

    if-eq v0, p1, :cond_3

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIndex >>>> correction indicator to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXCircleIndicator;->setRealCurrentItem(I)V

    .line 449
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXIndicator;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleIndicator;->invalidate()V

    .line 450
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-eqz v1, :cond_3

    .line 451
    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getFirst()I

    move-result v1

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_1

    .line 434
    :cond_2
    :goto_0
    iput p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->initIndex:I

    :cond_3
    :goto_1
    return-void
.end method

.method public setInterval(I)V
    .locals 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "interval"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intervalMS"
        }
    .end annotation

    .line 425
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    int-to-long v1, p1

    .line 426
    invoke-virtual {v0, v1, v2}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->setIntervalTime(J)V

    :cond_0
    return-void
.end method

.method public setLayout(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->isLayoutRTL()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->setLayoutDirectionRTL(Z)V

    .line 230
    :cond_0
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->setLayout(Lcom/taobao/weex/ui/component/WXComponent;)V

    return-void
.end method

.method public setOffsetXAccuracy(F)V
    .locals 0
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "offsetXAccuracy"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accuracy"
        }
    .end annotation

    .line 465
    iput p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->offsetXAccuracy:F

    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "param"
        }
    .end annotation

    .line 327
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "offsetXAccuracy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "autoPlay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "showIndicators"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "interval"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "index"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "scrollable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "keepIndex"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    :goto_0
    const/4 v0, 0x0

    packed-switch v3, :pswitch_data_0

    .line 372
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVContainer;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_0
    const p1, 0x3dcccccd    # 0.1f

    .line 359
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    .line 360
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_8

    .line 361
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/extend/DCWXSlider;->setOffsetXAccuracy(F)V

    :cond_8
    return v2

    .line 335
    :pswitch_1
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 337
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/extend/DCWXSlider;->setAutoPlay(Ljava/lang/String;)V

    :cond_9
    return v2

    .line 341
    :pswitch_2
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 343
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/extend/DCWXSlider;->setShowIndicators(Ljava/lang/String;)V

    :cond_a
    return v2

    .line 347
    :pswitch_3
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 349
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/extend/DCWXSlider;->setInterval(I)V

    :cond_b
    return v2

    .line 329
    :pswitch_4
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 331
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/extend/DCWXSlider;->setValue(Ljava/lang/String;)V

    :cond_c
    return v2

    .line 353
    :pswitch_5
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 355
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/extend/DCWXSlider;->setIndex(I)V

    :cond_d
    return v2

    .line 365
    :pswitch_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 366
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/extend/DCWXSlider;->setScrollable(Z)V

    return v2

    .line 369
    :pswitch_7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->keepIndex:Z

    return v2

    :sswitch_data_0
    .sparse-switch
        -0x696287b3 -> :sswitch_7
        0x3f94da7 -> :sswitch_6
        0x5fb28d2 -> :sswitch_5
        0x6ac9171 -> :sswitch_4
        0x21ffe4c5 -> :sswitch_3
        0x3b6be321 -> :sswitch_2
        0x55bf6d83 -> :sswitch_1
        0x5d56563e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setScrollable(Z)V
    .locals 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "scrollable"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollable"
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-eqz v1, :cond_0

    .line 459
    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->setScrollable(Z)V

    :cond_0
    return-void
.end method

.method public setShowIndicators(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "showIndicators"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .line 411
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 414
    iput-boolean p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mShowIndicators:Z

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 412
    iput-boolean p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mShowIndicators:Z

    .line 417
    :goto_1
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mIndicator:Lcom/taobao/weex/ui/component/WXIndicator;

    if-nez p1, :cond_2

    return-void

    .line 420
    :cond_2
    iget-boolean v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mShowIndicators:Z

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/component/WXIndicator;->setShowIndicators(Z)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "value"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_1

    .line 378
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 383
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/extend/DCWXSlider;->setIndex(I)V

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 385
    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVertical(Z)V
    .locals 1
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "vertical"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertical"
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCWXSlider;->mViewPager:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->setVertical(Z)V

    :cond_0
    return-void
.end method
