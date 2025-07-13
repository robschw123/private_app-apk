.class public Lcom/taobao/weex/ui/component/DCWXScroller;
.super Lcom/taobao/weex/ui/component/WXBaseScroller;
.source "DCWXScroller.java"

# interfaces
.implements Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;
.implements Lcom/taobao/weex/ui/component/Scrollable;


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/DCWXScroller$MyGestureDetector;,
        Lcom/taobao/weex/ui/component/DCWXScroller$Creator;
    }
.end annotation


# static fields
.field public static final DIRECTION:Ljava/lang/String; = "direction"

.field private static final SWIPE_MIN_DISTANCE:I = 0x5

.field private static final SWIPE_THRESHOLD_VELOCITY:I = 0x12c


# instance fields
.field private canScroll2Top:Z

.field childens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private isAnimation:Z

.field private isScrollable:Z

.field private isViewLayoutFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mActiveFeature:I

.field private mAppearanceComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/component/AppearanceHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenLayoutOffset:I

.field private mContentHeight:I

.field private mContentWidth:I

.field private mForceLoadmoreNextTime:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHasAddScrollEvent:Z

.field private mIsHostAttachedToWindow:Z

.field private mLastReport:Landroid/graphics/Point;

.field private mOffsetAccuracy:I

.field private mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field protected mOrientation:I

.field private mRealView:Landroid/widget/FrameLayout;

.field private mRefreshs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

.field private mScrollerView:Landroid/widget/FrameLayout;

.field private mStickyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;>;"
        }
    .end annotation
.end field

.field private pageEnable:Z

.field private pageSize:I

.field private stickyHelper:Lio/dcloud/feature/weex_scroller/view/WXStickyHelper;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 2
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

    .line 159
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXBaseScroller;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    const/4 p2, 0x1

    .line 94
    iput p2, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mOrientation:I

    .line 95
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mRefreshs:Ljava/util/List;

    const/4 p3, 0x0

    .line 99
    iput p3, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mChildrenLayoutOffset:I

    .line 100
    iput-boolean p3, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mForceLoadmoreNextTime:Z

    const/16 v0, 0xa

    .line 101
    iput v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mOffsetAccuracy:I

    .line 102
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mLastReport:Landroid/graphics/Point;

    .line 103
    iput-boolean p3, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mHasAddScrollEvent:Z

    .line 107
    iput p3, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mActiveFeature:I

    .line 115
    iput p3, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->pageSize:I

    .line 116
    iput-boolean p3, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->pageEnable:Z

    .line 117
    iput-boolean p3, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mIsHostAttachedToWindow:Z

    .line 120
    iput-boolean p3, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->isAnimation:Z

    .line 122
    iput-boolean p3, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->canScroll2Top:Z

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mAppearanceComponents:Ljava/util/Map;

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mStickyMap:Ljava/util/Map;

    .line 145
    iput p3, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mContentHeight:I

    .line 146
    iput p3, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mContentWidth:I

    .line 149
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->handler:Landroid/os/Handler;

    .line 151
    iput-boolean p2, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->isScrollable:Z

    .line 411
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->childens:Ljava/util/Map;

    .line 948
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->isViewLayoutFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 160
    new-instance p2, Lio/dcloud/feature/weex_scroller/view/WXStickyHelper;

    invoke-direct {p2, p0}, Lio/dcloud/feature/weex_scroller/view/WXStickyHelper;-><init>(Lcom/taobao/weex/ui/component/Scrollable;)V

    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->stickyHelper:Lio/dcloud/feature/weex_scroller/view/WXStickyHelper;

    .line 161
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object p1

    const-string/jumbo p2, "wxScrollerCount"

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, p2, v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->updateDiffStats(Ljava/lang/String;D)V

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

    .line 155
    invoke-direct {p0, p1, p2, p5}, Lcom/taobao/weex/ui/component/DCWXScroller;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/DCWXScroller;II)Z
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/DCWXScroller;->shouldReport(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/DCWXScroller;Landroid/graphics/Rect;IIII)V
    .locals 0

    .line 91
    invoke-direct/range {p0 .. p5}, Lcom/taobao/weex/ui/component/DCWXScroller;->fireScrollEvent(Landroid/graphics/Rect;IIII)V

    return-void
.end method

.method static synthetic access$1000(Lcom/taobao/weex/ui/component/DCWXScroller;)Landroid/os/Handler;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/taobao/weex/ui/component/DCWXScroller;)Ljava/util/ArrayList;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mChildren:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/component/DCWXScroller;IIII)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/DCWXScroller;->procAppear(IIII)V

    return-void
.end method

.method static synthetic access$300(Lcom/taobao/weex/ui/component/DCWXScroller;)Landroid/widget/FrameLayout;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mRealView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/component/DCWXScroller;)I
    .locals 0

    .line 91
    iget p0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->pageSize:I

    return p0
.end method

.method static synthetic access$402(Lcom/taobao/weex/ui/component/DCWXScroller;I)I
    .locals 0

    .line 91
    iput p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->pageSize:I

    return p1
.end method

.method static synthetic access$500(Lcom/taobao/weex/ui/component/DCWXScroller;)Landroid/view/GestureDetector;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$600(Lcom/taobao/weex/ui/component/DCWXScroller;)I
    .locals 0

    .line 91
    iget p0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mActiveFeature:I

    return p0
.end method

.method static synthetic access$602(Lcom/taobao/weex/ui/component/DCWXScroller;I)I
    .locals 0

    .line 91
    iput p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mActiveFeature:I

    return p1
.end method

.method static synthetic access$702(Lcom/taobao/weex/ui/component/DCWXScroller;Z)Z
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mIsHostAttachedToWindow:Z

    return p1
.end method

.method static synthetic access$800(Lcom/taobao/weex/ui/component/DCWXScroller;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->dispatchDisappearEvent()V

    return-void
.end method

.method static synthetic access$900(Lcom/taobao/weex/ui/component/DCWXScroller;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->isViewLayoutFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private checkItemVisibleInScroller(Lcom/taobao/weex/ui/component/WXComponent;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 1262
    instance-of v2, p1, Lcom/taobao/weex/ui/component/DCWXScroller;

    if-nez v2, :cond_3

    .line 1263
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v2

    instance-of v2, v2, Lcom/taobao/weex/ui/component/DCWXScroller;

    if-eqz v2, :cond_2

    .line 1264
    iget v1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mOrientation:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 1265
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/action/GraphicPosition;->getLeft()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getScrollX()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    .line 1266
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result v4

    sub-float/2addr v3, v4

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getLayoutWidth()F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    goto :goto_2

    .line 1268
    :cond_1
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/action/GraphicPosition;->getTop()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getScrollY()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    .line 1269
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v4

    sub-float/2addr v3, v4

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getLayoutHeight()F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    goto :goto_1

    .line 1272
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object p1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private checkRefreshOrLoading(Lcom/taobao/weex/ui/component/WXComponent;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "child"
        }
    .end annotation

    .line 436
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXRefresh;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;

    move-object v4, p1

    check-cast v4, Lcom/taobao/weex/ui/component/WXRefresh;

    invoke-virtual {v0, v4}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->setOnRefreshListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;)V

    .line 438
    new-instance v0, Lcom/taobao/weex/ui/component/DCWXScroller$3;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/ui/component/DCWXScroller$3;-><init>(Lcom/taobao/weex/ui/component/DCWXScroller;Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-static {v0}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    .line 444
    iget-object v4, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 448
    :goto_0
    instance-of v4, p1, Lcom/taobao/weex/ui/component/WXLoading;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getHostView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 449
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;

    move-object v4, p1

    check-cast v4, Lcom/taobao/weex/ui/component/WXLoading;

    invoke-virtual {v0, v4}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->setOnLoadingListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;)V

    .line 450
    new-instance v0, Lcom/taobao/weex/ui/component/DCWXScroller$4;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/ui/component/DCWXScroller$4;-><init>(Lcom/taobao/weex/ui/component/DCWXScroller;Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-static {v0}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 456
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method private dispatchDisappearEvent()V
    .locals 4

    .line 1281
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mAppearanceComponents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1282
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/AppearanceHelper;

    .line 1283
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/AppearanceHelper;->isWatch()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1286
    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/component/AppearanceHelper;->setAppearStatus(Z)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1288
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/AppearanceHelper;->getAwareChild()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const-string v2, "appear"

    goto :goto_1

    :cond_2
    const-string v2, "disappear"

    :goto_1
    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/taobao/weex/ui/component/WXComponent;->notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private fireScrollEvent(Landroid/graphics/Rect;IIII)V
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
            "contentFrame",
            "x",
            "y",
            "oldx",
            "oldy"
        }
    .end annotation

    .line 287
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/taobao/weex/ui/component/DCWXScroller;->getScrollEvent(IIII)Ljava/util/Map;

    move-result-object p1

    const-string p2, "scroll"

    invoke-virtual {p0, p2, p1}, Lcom/taobao/weex/ui/component/DCWXScroller;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private getViewById(Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 896
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->childens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->childens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/WXComponent;

    return-object p1

    .line 899
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->childens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/WXComponent;

    .line 900
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private procAppear(IIII)V
    .locals 1
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

    .line 1230
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mIsHostAttachedToWindow:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sub-int/2addr p2, p4

    sub-int/2addr p1, p3

    if-lez p2, :cond_1

    const-string p2, "up"

    goto :goto_0

    :cond_1
    if-gez p2, :cond_2

    const-string p2, "down"

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 1235
    :goto_0
    iget p3, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mOrientation:I

    if-nez p3, :cond_4

    if-eqz p1, :cond_4

    if-lez p1, :cond_3

    const-string p1, "right"

    goto :goto_1

    :cond_3
    const-string p1, "left"

    :goto_1
    move-object p2, p1

    .line 1239
    :cond_4
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mAppearanceComponents:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 1240
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/taobao/weex/ui/component/AppearanceHelper;

    .line 1242
    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->isWatch()Z

    move-result p4

    if-nez p4, :cond_6

    goto :goto_2

    .line 1245
    :cond_6
    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->getAwareChild()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/taobao/weex/ui/component/DCWXScroller;->checkItemVisibleInScroller(Lcom/taobao/weex/ui/component/WXComponent;)Z

    move-result p4

    .line 1247
    invoke-virtual {p3, p4}, Lcom/taobao/weex/ui/component/AppearanceHelper;->setAppearStatus(Z)I

    move-result p4

    if-eqz p4, :cond_5

    .line 1249
    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->getAwareChild()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p3

    const/4 v0, 0x1

    if-ne p4, v0, :cond_7

    const-string p4, "appear"

    goto :goto_3

    :cond_7
    const-string p4, "disappear"

    :goto_3
    invoke-virtual {p3, p4, p2}, Lcom/taobao/weex/ui/component/WXComponent;->notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    return-void
.end method

.method private setWatch(ILcom/taobao/weex/ui/component/WXComponent;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "event",
            "component",
            "isWatch"
        }
    .end annotation

    .line 1091
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mAppearanceComponents:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/AppearanceHelper;

    if-nez v0, :cond_0

    .line 1093
    new-instance v0, Lcom/taobao/weex/ui/component/AppearanceHelper;

    invoke-direct {v0, p2}, Lcom/taobao/weex/ui/component/AppearanceHelper;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 1094
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mAppearanceComponents:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    :cond_0
    invoke-virtual {v0, p1, p3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->setWatchEvent(IZ)V

    const/4 p1, 0x0

    .line 1100
    invoke-direct {p0, p1, p1, p1, p1}, Lcom/taobao/weex/ui/component/DCWXScroller;->procAppear(IIII)V

    return-void
.end method

.method private shouldReport(II)Z
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

    .line 348
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mLastReport:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mLastReport:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ne v0, v1, :cond_0

    .line 349
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mLastReport:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 350
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mLastReport:Landroid/graphics/Point;

    iput p2, p1, Landroid/graphics/Point;->y:I

    return v2

    .line 354
    :cond_0
    iget v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mOrientation:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mLastReport:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int v0, p1, v0

    .line 355
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mOffsetAccuracy:I

    if-lt v0, v1, :cond_1

    .line 356
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mLastReport:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 357
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mLastReport:Landroid/graphics/Point;

    iput p2, p1, Landroid/graphics/Point;->y:I

    return v2

    .line 361
    :cond_1
    iget v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mOrientation:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mLastReport:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int v0, p2, v0

    .line 362
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mOffsetAccuracy:I

    if-lt v0, v1, :cond_2

    .line 363
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mLastReport:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 364
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mLastReport:Landroid/graphics/Point;

    iput p2, p1, Landroid/graphics/Point;->y:I

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "child",
            "index"
        }
    .end annotation

    .line 418
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->childens:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :cond_0
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXBaseRefresh;

    if-eqz v0, :cond_1

    .line 421
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/DCWXScroller;->checkRefreshOrLoading(Lcom/taobao/weex/ui/component/WXComponent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mRefreshs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXBaseScroller;->addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V

    return-void
.end method

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

    .line 199
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXBaseScroller;->addEvent(Ljava/lang/String;)V

    .line 200
    invoke-static {p1}, Lio/dcloud/feature/weex_scroller/helper/DCScrollStartEndHelper;->isScrollEvent(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mHasAddScrollEvent:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 202
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mHasAddScrollEvent:Z

    .line 203
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object p1

    instance-of p1, p1, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;

    if-eqz p1, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;

    new-instance v0, Lcom/taobao/weex/ui/component/DCWXScroller$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/DCWXScroller$1;-><init>(Lcom/taobao/weex/ui/component/DCWXScroller;)V

    invoke-virtual {p1, v0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->addScrollViewListener(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;)V

    goto :goto_0

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object p1

    instance-of p1, p1, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;

    if-eqz p1, :cond_1

    .line 252
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;

    new-instance v0, Lcom/taobao/weex/ui/component/DCWXScroller$2;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/DCWXScroller$2;-><init>(Lcom/taobao/weex/ui/component/DCWXScroller;)V

    invoke-virtual {p1, v0}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->addScrollViewListener(Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;)V

    :cond_1
    :goto_0
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
            "child",
            "index"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 376
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mRealView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    goto :goto_0

    .line 380
    :cond_0
    instance-of v1, p1, Lcom/taobao/weex/ui/view/WXBaseRefreshLayout;

    if-eqz v1, :cond_1

    return-void

    .line 384
    :cond_1
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    if-lt p2, v0, :cond_2

    const/4 p2, -0x1

    .line 386
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 387
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    if-ne p2, v1, :cond_4

    .line 390
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mRealView:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 392
    :cond_4
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mRealView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public bindAppearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1087
    invoke-direct {p0, v0, p1, v1}, Lcom/taobao/weex/ui/component/DCWXScroller;->setWatch(ILcom/taobao/weex/ui/component/WXComponent;Z)V

    return-void
.end method

.method public bindDisappearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1108
    invoke-direct {p0, v0, p1, v0}, Lcom/taobao/weex/ui/component/DCWXScroller;->setWatch(ILcom/taobao/weex/ui/component/WXComponent;Z)V

    return-void
.end method

.method public bindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 1074
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->stickyHelper:Lio/dcloud/feature/weex_scroller/view/WXStickyHelper;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mStickyMap:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lio/dcloud/feature/weex_scroller/view/WXStickyHelper;->bindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/Map;)V

    return-void
.end method

.method public createViewImpl()V
    .locals 2

    .line 175
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXBaseScroller;->createViewImpl()V

    const/4 v0, 0x0

    .line 176
    :goto_0
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mRefreshs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mRefreshs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/WXComponent;

    .line 178
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->createViewImpl()V

    .line 179
    invoke-direct {p0, v1}, Lcom/taobao/weex/ui/component/DCWXScroller;->checkRefreshOrLoading(Lcom/taobao/weex/ui/component/WXComponent;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 474
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/ui/view/IWXScroller;

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/IWXScroller;

    invoke-interface {v0}, Lcom/taobao/weex/ui/view/IWXScroller;->destroy()V

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mAppearanceComponents:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 478
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mStickyMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 481
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 483
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 484
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 486
    :cond_3
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXBaseScroller;->destroy()V

    return-void
.end method

.method protected getChildrenLayoutTopOffset()I
    .locals 4

    .line 398
    iget v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mChildrenLayoutOffset:I

    if-nez v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mRefreshs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 403
    iget-object v2, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mRefreshs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/component/WXComponent;

    .line 404
    iget v3, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mChildrenLayoutOffset:I

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutTopOffsetForSibling()I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mChildrenLayoutOffset:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 408
    :cond_0
    iget v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mChildrenLayoutOffset:I

    return v0
.end method

.method public getInnerView()Landroid/view/ViewGroup;
    .locals 1

    .line 187
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getHostView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lio/dcloud/feature/weex_scroller/view/DCBounceScrollerView;

    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_scroller/view/DCBounceScrollerView;

    invoke-virtual {v0}, Lio/dcloud/feature/weex_scroller/view/DCBounceScrollerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    .line 193
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 801
    iget v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mOrientation:I

    return v0
.end method

.method public bridge synthetic getRealView()Landroid/view/View;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getRealView()Landroid/view/ViewGroup;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mScrollerView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getScrollEvent(II)Ljava/util/Map;
    .locals 7
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 324
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 325
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v1

    instance-of v1, v1, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;

    if-eqz v1, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;

    invoke-virtual {v0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getContentFrame()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v1

    instance-of v1, v1, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;

    if-eqz v1, :cond_1

    .line 328
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;

    invoke-virtual {v0}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->getContentFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 330
    :cond_1
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 331
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 332
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 334
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v2

    .line 336
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string/jumbo v6, "width"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v5, "height"

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float p1, p1

    .line 339
    invoke-static {p1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string/jumbo v0, "x"

    invoke-interface {v4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float p1, p2

    .line 340
    invoke-static {p1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string/jumbo p2, "y"

    invoke-interface {v4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "contentSize"

    .line 342
    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "contentOffset"

    .line 343
    invoke-interface {v1, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public getScrollEvent(IIII)Ljava/util/Map;
    .locals 6
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 291
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 294
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object p2

    instance-of p2, p2, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;

    invoke-virtual {p1}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getContentFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 296
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    goto :goto_0

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object p2

    instance-of p2, p2, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;

    if-eqz p2, :cond_1

    .line 298
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;

    invoke-virtual {p1}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->getContentFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 299
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    move v0, p2

    :cond_1
    const/4 p2, 0x0

    .line 301
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 302
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 303
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 305
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v2

    .line 307
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, "scrollWidth"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v4, "scrollHeight"

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float p1, v0

    .line 310
    invoke-static {p1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "scrollLeft"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float p1, p2

    .line 311
    invoke-static {p1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "scrollTop"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float p1, p3

    .line 312
    invoke-static {p1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "deltaX"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float p1, p4

    .line 313
    invoke-static {p1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "deltaY"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "detail"

    .line 319
    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public getScrollStartEndHelper()Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;
    .locals 1

    .line 1366
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    if-nez v0, :cond_0

    .line 1367
    new-instance v0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    .line 1369
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    return-object v0
.end method

.method public getScrollX()I
    .locals 1

    .line 796
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getScrollY()I
    .locals 1

    .line 791
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getStickMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;>;"
        }
    .end annotation

    .line 805
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mStickyMap:Ljava/util/Map;

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

    .line 89
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXScroller;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 551
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXAttr;->isEmpty()Z

    move-result v0

    const-string v1, "horizontal"

    const-string/jumbo v2, "vertical"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_4

    .line 554
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v5, "scrollX"

    invoke-virtual {v0, v5}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 557
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v6

    const-string v7, "scrollY"

    invoke-virtual {v6, v7}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 558
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    const-string v8, "false"

    if-eqz v6, :cond_3

    .line 563
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v4

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    .line 566
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v5, v2, 0x1

    move-object v2, v1

    goto :goto_2

    .line 567
    :cond_4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v5

    const-string v7, "scrollDirection"

    invoke-virtual {v5, v7}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 568
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/dom/WXAttr;->getScrollDirection()Ljava/lang/String;

    move-result-object v2

    :cond_5
    const/4 v5, 0x1

    .line 573
    :goto_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v7

    const-string v8, "pagingEnabled"

    invoke-virtual {v7, v8}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 575
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    :goto_3
    iput-boolean v7, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->pageEnable:Z

    .line 577
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v7

    const-string v8, "pageSize"

    invoke-virtual {v7, v8}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 579
    invoke-static {v7}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result v7

    .line 582
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v8

    invoke-virtual {v8}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v8

    invoke-static {v7, v8}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-eqz v8, :cond_7

    float-to-int v7, v7

    .line 584
    iput v7, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->pageSize:I

    .line 591
    :cond_7
    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_8

    .line 592
    iput v3, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mOrientation:I

    .line 593
    new-instance v0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;

    invoke-direct {v0, p1}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 594
    invoke-virtual {v0, p0}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->setWAScroller(Lcom/taobao/weex/ui/component/DCWXScroller;)V

    .line 595
    invoke-virtual {v0, v5}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->setScrollable(Z)V

    .line 596
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mRealView:Landroid/widget/FrameLayout;

    .line 597
    new-instance p1, Lcom/taobao/weex/ui/component/DCWXScroller$5;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/DCWXScroller$5;-><init>(Lcom/taobao/weex/ui/component/DCWXScroller;)V

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->setScrollViewListener(Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;)V

    .line 617
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 619
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mRealView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, p1}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 620
    invoke-virtual {v0, v4}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 621
    iput-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mScrollerView:Landroid/widget/FrameLayout;

    .line 622
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p1, v1}, Lio/dcloud/common/util/DensityUtils;->dip2px(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->setScrollBarSize(I)V

    .line 625
    new-instance p1, Lcom/taobao/weex/ui/component/DCWXScroller$6;

    invoke-direct {p1, p0, v0, p0}, Lcom/taobao/weex/ui/component/DCWXScroller$6;-><init>(Lcom/taobao/weex/ui/component/DCWXScroller;Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;Lcom/taobao/weex/ui/component/DCWXScroller;)V

    .line 644
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mRealView:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/taobao/weex/ui/component/DCWXScroller$7;

    invoke-direct {v2, p0, p1}, Lcom/taobao/weex/ui/component/DCWXScroller$7;-><init>(Lcom/taobao/weex/ui/component/DCWXScroller;Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 657
    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->pageEnable:Z

    if-eqz p1, :cond_a

    .line 658
    new-instance p1, Landroid/view/GestureDetector;

    new-instance v1, Lcom/taobao/weex/ui/component/DCWXScroller$MyGestureDetector;

    invoke-direct {v1, p0, v0}, Lcom/taobao/weex/ui/component/DCWXScroller$MyGestureDetector;-><init>(Lcom/taobao/weex/ui/component/DCWXScroller;Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;)V

    invoke-direct {p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mGestureDetector:Landroid/view/GestureDetector;

    .line 659
    new-instance p1, Lcom/taobao/weex/ui/component/DCWXScroller$8;

    invoke-direct {p1, p0, v0}, Lcom/taobao/weex/ui/component/DCWXScroller$8;-><init>(Lcom/taobao/weex/ui/component/DCWXScroller;Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;)V

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_6

    .line 685
    :cond_8
    iput v4, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mOrientation:I

    .line 686
    new-instance v1, Lio/dcloud/feature/weex_scroller/view/DCBounceScrollerView;

    iget v7, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mOrientation:I

    invoke-direct {v1, p1, v7, p0}, Lio/dcloud/feature/weex_scroller/view/DCBounceScrollerView;-><init>(Landroid/content/Context;ILcom/taobao/weex/ui/component/DCWXScroller;)V

    .line 687
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mRealView:Landroid/widget/FrameLayout;

    .line 688
    invoke-virtual {v1}, Lio/dcloud/feature/weex_scroller/view/DCBounceScrollerView;->getInnerView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;

    .line 689
    invoke-virtual {p1, p0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->addScrollViewListener(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;)V

    if-nez v0, :cond_9

    if-nez v6, :cond_9

    .line 691
    invoke-virtual {p1, v3}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->setScrollable(Z)V

    goto :goto_5

    .line 693
    :cond_9
    invoke-virtual {p1, v5}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->setScrollable(Z)V

    .line 694
    :goto_5
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 696
    iget-object v2, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mRealView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2, v0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 697
    invoke-virtual {p1, v4}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 698
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mScrollerView:Landroid/widget/FrameLayout;

    .line 699
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v2, "nestedScrollingEnabled"

    invoke-virtual {v0, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->setNestedScrollingEnabled(Z)V

    .line 700
    new-instance v0, Lcom/taobao/weex/ui/component/DCWXScroller$9;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/DCWXScroller$9;-><init>(Lcom/taobao/weex/ui/component/DCWXScroller;)V

    invoke-virtual {p1, v0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->addScrollViewListener(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;)V

    move-object v0, v1

    .line 756
    :cond_a
    :goto_6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v1, Lcom/taobao/weex/ui/component/DCWXScroller$10;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/DCWXScroller$10;-><init>(Lcom/taobao/weex/ui/component/DCWXScroller;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 772
    new-instance p1, Lcom/taobao/weex/ui/component/DCWXScroller$11;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/DCWXScroller$11;-><init>(Lcom/taobao/weex/ui/component/DCWXScroller;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 785
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-object v0
.end method

.method public isEnableBackToTop(Z)V
    .locals 0
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "enable-back-to-top"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toTop"
        }
    .end annotation

    .line 938
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->canScroll2Top:Z

    return-void
.end method

.method public isScrollable()Z
    .locals 1

    .line 1068
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->isScrollable:Z

    return v0
.end method

.method protected measure(II)Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;
    .locals 4
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

    .line 527
    new-instance v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;

    invoke-direct {v0}, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;-><init>()V

    .line 528
    iget v1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mOrientation:I

    const/4 v2, -0x1

    if-nez v1, :cond_2

    .line 529
    sget-object v1, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-static {v1}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    .line 530
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXViewUtils;->getWeexWidth(Ljava/lang/String;)I

    move-result v3

    if-lt v3, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-le p1, v1, :cond_1

    const/4 p1, -0x1

    .line 532
    :cond_1
    iput p1, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->width:I

    .line 533
    iput p2, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->height:I

    goto :goto_2

    .line 535
    :cond_2
    sget-object v1, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-static {v1}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    .line 536
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXViewUtils;->getWeexHeight(Ljava/lang/String;)I

    move-result v3

    if-lt v3, v1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    if-le p2, v1, :cond_4

    const/4 p2, -0x1

    .line 538
    :cond_4
    iput p2, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->height:I

    .line 539
    iput p1, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->width:I

    :goto_2
    return-object v0
.end method

.method public notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "wxEventType",
            "direction"
        }
    .end annotation

    const-string v0, "appear"

    .line 1211
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/DCWXScroller;->containsEvent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "disappear"

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/DCWXScroller;->containsEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1212
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "direction"

    .line 1213
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/ui/component/DCWXScroller;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method protected onFinishLayout()V
    .locals 0

    .line 1039
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXBaseScroller;->onFinishLayout()V

    return-void
.end method

.method protected onLoadMore(Landroid/widget/FrameLayout;II)V
    .locals 4
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

    .line 1324
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXAttr;->getLoadMoreOffset()Ljava/lang/String;

    move-result-object v0

    .line 1325
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1328
    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v0

    float-to-int v0, v0

    .line 1330
    instance-of v1, p1, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "loadmore"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 1331
    :try_start_1
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int p2, p3, p2

    .line 1332
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    sub-int/2addr p2, p1

    if-ge p2, v0, :cond_5

    .line 1333
    iget p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mContentWidth:I

    if-ne p1, p3, :cond_1

    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mForceLoadmoreNextTime:Z

    if-eqz p1, :cond_5

    .line 1334
    :cond_1
    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/component/DCWXScroller;->fireEvent(Ljava/lang/String;)V

    .line 1335
    iput p3, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mContentWidth:I

    .line 1336
    iput-boolean v3, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mForceLoadmoreNextTime:Z

    goto :goto_0

    .line 1339
    :cond_2
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    .line 1340
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    sub-int p3, p2, p3

    sub-int/2addr p3, p1

    if-ge p3, v0, :cond_5

    .line 1344
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1345
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[WXScroller-onScroll] offScreenY :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 1347
    :cond_3
    iget p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mContentHeight:I

    if-ne p1, p2, :cond_4

    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mForceLoadmoreNextTime:Z

    if-eqz p1, :cond_5

    .line 1348
    :cond_4
    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/component/DCWXScroller;->fireEvent(Ljava/lang/String;)V

    .line 1349
    iput p2, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mContentHeight:I

    .line 1350
    iput-boolean v3, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mForceLoadmoreNextTime:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "[DCWXScroller-onScroll] "

    .line 1355
    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onScroll(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;II)V
    .locals 0
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

    .line 1311
    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/DCWXScroller;->onLoadMore(Landroid/widget/FrameLayout;II)V

    return-void
.end method

.method public onScrollChanged(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;IIII)V
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
            "scrollView",
            "x",
            "y",
            "oldx",
            "oldy"
        }
    .end annotation

    .line 1206
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/taobao/weex/ui/component/DCWXScroller;->procAppear(IIII)V

    return-void
.end method

.method public onScrollStopped(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;II)V
    .locals 0
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

    return-void
.end method

.method public onScrollToBottom(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;II)V
    .locals 0
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

    return-void
.end method

.method public onScrollToTop(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;II)V
    .locals 0
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

    return-void
.end method

.method public remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "child",
            "destory"
        }
    .end annotation

    .line 464
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXBaseScroller;->remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    .line 465
    instance-of p2, p1, Lcom/taobao/weex/ui/component/WXLoading;

    if-eqz p2, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;

    invoke-virtual {p2, p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->removeFooterView(Lcom/taobao/weex/ui/component/WXComponent;)V

    goto :goto_0

    .line 467
    :cond_0
    instance-of p2, p1, Lcom/taobao/weex/ui/component/WXRefresh;

    if-eqz p2, :cond_1

    .line 468
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;

    invoke-virtual {p2, p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->removeHeaderView(Lcom/taobao/weex/ui/component/WXComponent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public resetLoadmore()V
    .locals 1
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    const/4 v0, 0x1

    .line 1362
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mForceLoadmoreNextTime:Z

    return-void
.end method

.method public scrollBy(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1174
    invoke-virtual {p0, p1, p2, v0}, Lcom/taobao/weex/ui/component/DCWXScroller;->scrollBy(IIZ)V

    return-void
.end method

.method public scrollBy(IIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "x",
            "y",
            "smooth"
        }
    .end annotation

    .line 1178
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1182
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/ui/component/DCWXScroller$16;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/taobao/weex/ui/component/DCWXScroller$16;-><init>(Lcom/taobao/weex/ui/component/DCWXScroller;ZII)V

    const-wide/16 p1, 0x10

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public scrollTo(I)V
    .locals 2
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "top"
        }
    .end annotation

    int-to-float p1, p1

    .line 870
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v0

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result p1

    .line 871
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    instance-of v0, v0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 872
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->smoothScrollTo(II)V

    goto :goto_0

    .line 873
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    instance-of v0, v0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;

    if-eqz v0, :cond_1

    .line 874
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;

    float-to-int p1, p1

    invoke-virtual {v0, p1, v1}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->smoothScrollTo(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public scrollTo(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "component",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const-string v2, "offset"

    .line 1133
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v2, "0"

    goto :goto_0

    :cond_0
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "animated"

    .line 1134
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v2, :cond_1

    .line 1137
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v2

    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 1139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Float parseFloat error :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 1144
    :cond_1
    :goto_1
    iget-boolean p2, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->pageEnable:Z

    if-eqz p2, :cond_2

    .line 1145
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    iput p2, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mActiveFeature:I

    .line 1148
    :cond_2
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAbsoluteY()I

    move-result p2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getAbsoluteY()I

    move-result v2

    sub-int/2addr p2, v2

    .line 1150
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->isLayoutRTL()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1152
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 1153
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1154
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    .line 1155
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAbsoluteX()I

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getAbsoluteX()I

    move-result v4

    sub-int/2addr p1, v4

    sub-int/2addr v2, p1

    sub-int/2addr v2, v3

    goto :goto_2

    .line 1157
    :cond_3
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAbsoluteX()I

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getAbsoluteX()I

    move-result v2

    sub-int v2, p1, v2

    :goto_2
    neg-float v1, v1

    goto :goto_3

    .line 1161
    :cond_4
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAbsoluteX()I

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getAbsoluteX()I

    move-result v2

    sub-int v2, p1, v2

    .line 1164
    :goto_3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getScrollX()I

    move-result p1

    sub-int/2addr v2, p1

    float-to-int p1, v1

    add-int/2addr v2, p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getScrollY()I

    move-result v1

    sub-int/2addr p2, v1

    add-int/2addr p2, p1

    invoke-virtual {p0, v2, p2, v0}, Lcom/taobao/weex/ui/component/DCWXScroller;->scrollBy(IIZ)V

    return-void
.end method

.method public scrollTo(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 2
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "op",
            "callback"
        }
    .end annotation

    .line 880
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v0, "scrollTop"

    .line 881
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 882
    invoke-static {p1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v0

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result p1

    .line 883
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    instance-of v0, v0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 884
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->smoothScrollTo(II)V

    goto :goto_0

    .line 885
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    instance-of v0, v0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;

    if-eqz v0, :cond_1

    .line 886
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;

    float-to-int p1, p1

    invoke-virtual {v0, p1, v1}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->smoothScrollTo(II)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 889
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "type"

    const-string v1, "success"

    .line 890
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public scrollToTop()V
    .locals 2
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 943
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    instance-of v0, v0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->canScroll2Top:Z

    if-eqz v0, :cond_0

    .line 944
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->smoothScrollTo(II)V

    :cond_0
    return-void
.end method

.method public setDecelerationRate(F)V
    .locals 1
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "decelerationRate"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rate"
        }
    .end annotation

    .line 1061
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    instance-of v0, v0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;

    if-eqz v0, :cond_0

    .line 1062
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->setRate(F)V

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

    .line 513
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 514
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 515
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 518
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 519
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->isLayoutRTL()Z

    move-result v0

    .line 520
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setLayoutDirection(Landroid/view/View;I)V

    .line 522
    :cond_1
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXBaseScroller;->setLayout(Lcom/taobao/weex/ui/component/WXComponent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setLowwerHeight(I)V
    .locals 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "lowerThreshold"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 1028
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    int-to-float p1, p1

    .line 1029
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v1

    invoke-static {p1, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result p1

    .line 1030
    instance-of v1, v0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;

    if-eqz v1, :cond_0

    .line 1031
    check-cast v0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->setLowwerLength(F)V

    goto :goto_0

    .line 1032
    :cond_0
    instance-of v1, v0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;

    if-eqz v1, :cond_1

    .line 1033
    check-cast v0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->setLowwerLength(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMarginsSupportRTL(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "lp",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 491
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 492
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 493
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 494
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_0

    .line 496
    :cond_0
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_2

    .line 497
    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 498
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x35

    .line 499
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 500
    invoke-virtual {p1, p4, p3, p2, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x33

    .line 502
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 503
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 506
    :cond_2
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_0
    return-void
.end method

.method public setOffsetAccuracy(I)V
    .locals 1
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "offsetAccuracy"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accuracy"
        }
    .end annotation

    int-to-float p1, p1

    .line 1055
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v0

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result p1

    float-to-int p1, p1

    .line 1056
    iput p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mOffsetAccuracy:I

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

    .line 810
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "scrollY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "scrollX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "scrollable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "offsetAccuracy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "scrollWithAnimation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "showScrollbar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 823
    :pswitch_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "false"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    .line 824
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXScroller;->setScrollable(Z)V

    return v2

    .line 818
    :pswitch_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 819
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXScroller;->setScrollable(Z)V

    return v2

    :pswitch_2
    const/16 p1, 0xa

    .line 827
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 828
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXScroller;->setOffsetAccuracy(I)V

    return v2

    .line 831
    :pswitch_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 832
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/DCWXScroller;->setScrollWithAnimation(Z)V

    .line 836
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXBaseScroller;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_4
    const/4 p1, 0x0

    .line 812
    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 814
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/DCWXScroller;->setShowScrollbar(Z)V

    :cond_6
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0xd52a857 -> :sswitch_5
        -0x60d786f -> :sswitch_4
        -0x55c154 -> :sswitch_3
        0x3f94da7 -> :sswitch_2
        0x72d6f32b -> :sswitch_1
        0x72d6f32c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setScrollIntoView(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "scrollIntoView"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ref"
        }
    .end annotation

    .line 841
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->isViewLayoutFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 842
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/ui/component/DCWXScroller$12;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/ui/component/DCWXScroller$12;-><init>(Lcom/taobao/weex/ui/component/DCWXScroller;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 862
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponentById(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 864
    iget-boolean v2, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->isAnimation:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const-string/jumbo v1, "{\'animated\':%b}"

    invoke-static {v1, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/ui/component/DCWXScroller;->scrollTo(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setScrollLeft(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "scrollLeft"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "leftStr"
        }
    .end annotation

    .line 991
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    instance-of v0, v0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;

    if-eqz v0, :cond_3

    .line 992
    invoke-static {p1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v0

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result p1

    .line 993
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->isViewLayoutFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 994
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/ui/component/DCWXScroller$15;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/ui/component/DCWXScroller$15;-><init>(Lcom/taobao/weex/ui/component/DCWXScroller;F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1

    .line 1011
    :cond_0
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->isAnimation:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1012
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    instance-of v0, v0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;

    if-eqz v0, :cond_1

    .line 1013
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;

    invoke-virtual {v0}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->stopScroll()V

    .line 1015
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [I

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    aput v4, v3, v2

    float-to-int p1, p1

    aput p1, v3, v1

    const-string p1, "scrollX"

    invoke-static {v0, p1, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v2, 0xc8

    .line 1016
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 1018
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;

    float-to-int p1, p1

    invoke-virtual {v0, p1, v2}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->smoothScrollTo(II)V

    .line 1020
    :goto_0
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->isViewLayoutFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setScrollTop(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "scrollTop"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "topStr"
        }
    .end annotation

    .line 952
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    instance-of v0, v0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;

    if-eqz v0, :cond_3

    .line 953
    invoke-static {p1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v0

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result p1

    .line 954
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->isViewLayoutFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 955
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/ui/component/DCWXScroller$13;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/ui/component/DCWXScroller$13;-><init>(Lcom/taobao/weex/ui/component/DCWXScroller;F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1

    .line 970
    :cond_0
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->isAnimation:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 971
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    instance-of v0, v0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;

    if-eqz v0, :cond_1

    .line 972
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;

    invoke-virtual {v0}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->stopScroll()V

    .line 974
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    aput v4, v2, v3

    float-to-int p1, p1

    aput p1, v2, v1

    const-string p1, "scrollY"

    invoke-static {v0, p1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v2, 0xc8

    .line 975
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 977
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v2, Lcom/taobao/weex/ui/component/DCWXScroller$14;

    invoke-direct {v2, p0, p1}, Lcom/taobao/weex/ui/component/DCWXScroller$14;-><init>(Lcom/taobao/weex/ui/component/DCWXScroller;F)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 984
    :goto_0
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->isViewLayoutFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setScrollWithAnimation(Z)V
    .locals 0
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "scrollWithAnimation"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isAnimation"
        }
    .end annotation

    .line 922
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->isAnimation:Z

    return-void
.end method

.method public setScrollable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollable"
        }
    .end annotation

    .line 1044
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->isScrollable:Z

    .line 1045
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 1046
    instance-of v1, v0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;

    if-eqz v1, :cond_0

    .line 1047
    check-cast v0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->setScrollable(Z)V

    goto :goto_0

    .line 1048
    :cond_0
    instance-of v1, v0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;

    if-eqz v1, :cond_1

    .line 1049
    check-cast v0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->setScrollable(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setShowScrollbar(Z)V
    .locals 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "showScrollbar"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .line 910
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 913
    :cond_0
    iget v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 914
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0

    .line 916
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    :goto_0
    return-void
.end method

.method public setUpperHeight(I)V
    .locals 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "upperThreshold"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 927
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    int-to-float p1, p1

    .line 928
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v1

    invoke-static {p1, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result p1

    .line 929
    instance-of v1, v0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;

    if-eqz v1, :cond_0

    .line 930
    check-cast v0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->setUpperLength(F)V

    goto :goto_0

    .line 931
    :cond_0
    instance-of v1, v0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;

    if-eqz v1, :cond_1

    .line 932
    check-cast v0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->setUpperLength(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public unbindAppearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1116
    invoke-direct {p0, v0, p1, v0}, Lcom/taobao/weex/ui/component/DCWXScroller;->setWatch(ILcom/taobao/weex/ui/component/WXComponent;Z)V

    return-void
.end method

.method public unbindDisappearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1124
    invoke-direct {p0, v0, p1, v1}, Lcom/taobao/weex/ui/component/DCWXScroller;->setWatch(ILcom/taobao/weex/ui/component/WXComponent;Z)V

    return-void
.end method

.method public unbindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 1079
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->stickyHelper:Lio/dcloud/feature/weex_scroller/view/WXStickyHelper;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXScroller;->mStickyMap:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lio/dcloud/feature/weex_scroller/view/WXStickyHelper;->unbindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/Map;)V

    return-void
.end method
