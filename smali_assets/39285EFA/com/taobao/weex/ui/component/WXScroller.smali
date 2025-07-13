.class public Lcom/taobao/weex/ui/component/WXScroller;
.super Lcom/taobao/weex/ui/component/WXBaseScroller;
.source "WXScroller.java"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;,
        Lcom/taobao/weex/ui/component/WXScroller$Creator;
    }
.end annotation


# static fields
.field public static final DIRECTION:Ljava/lang/String; = "direction"

.field private static final SWIPE_MIN_DISTANCE:I = 0x5

.field private static final SWIPE_THRESHOLD_VELOCITY:I = 0x12c


# instance fields
.field private handler:Landroid/os/Handler;

.field private isScrollable:Z

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

.field private mIslastDirectionRTL:Ljava/lang/Boolean;

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

.field private mlastDirectionRTL:Z

.field private pageEnable:Z

.field private pageSize:I

.field private stickyHelper:Lcom/taobao/weex/ui/component/helper/WXStickyHelper;


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

    .line 140
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXBaseScroller;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    const/4 p2, 0x1

    .line 79
    iput p2, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    .line 80
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRefreshs:Ljava/util/List;

    const/4 p3, 0x0

    .line 82
    iput p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mChildrenLayoutOffset:I

    .line 83
    iput-boolean p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mForceLoadmoreNextTime:Z

    const/16 v0, 0xa

    .line 84
    iput v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOffsetAccuracy:I

    .line 85
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    .line 86
    iput-boolean p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mHasAddScrollEvent:Z

    .line 91
    iput p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mActiveFeature:I

    .line 99
    iput p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->pageSize:I

    .line 100
    iput-boolean p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->pageEnable:Z

    .line 101
    iput-boolean p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mIsHostAttachedToWindow:Z

    .line 104
    iput-boolean p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mlastDirectionRTL:Z

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mAppearanceComponents:Ljava/util/Map;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mStickyMap:Ljava/util/Map;

    .line 126
    iput p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mContentHeight:I

    .line 127
    iput p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mContentWidth:I

    .line 130
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->handler:Landroid/os/Handler;

    .line 132
    iput-boolean p2, p0, Lcom/taobao/weex/ui/component/WXScroller;->isScrollable:Z

    .line 141
    new-instance p2, Lcom/taobao/weex/ui/component/helper/WXStickyHelper;

    invoke-direct {p2, p0}, Lcom/taobao/weex/ui/component/helper/WXStickyHelper;-><init>(Lcom/taobao/weex/ui/component/Scrollable;)V

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXScroller;->stickyHelper:Lcom/taobao/weex/ui/component/helper/WXStickyHelper;

    .line 142
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

    .line 136
    invoke-direct {p0, p1, p2, p5}, Lcom/taobao/weex/ui/component/WXScroller;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/WXScroller;II)Z
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXScroller;->shouldReport(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/WXScroller;Landroid/graphics/Rect;IIII)V
    .locals 0

    .line 76
    invoke-direct/range {p0 .. p5}, Lcom/taobao/weex/ui/component/WXScroller;->fireScrollEvent(Landroid/graphics/Rect;IIII)V

    return-void
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/component/WXScroller;IIII)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/WXScroller;->procAppear(IIII)V

    return-void
.end method

.method static synthetic access$300(Lcom/taobao/weex/ui/component/WXScroller;)Ljava/lang/Boolean;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mIslastDirectionRTL:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$302(Lcom/taobao/weex/ui/component/WXScroller;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mIslastDirectionRTL:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/component/WXScroller;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/taobao/weex/ui/component/WXScroller;->pageSize:I

    return p0
.end method

.method static synthetic access$402(Lcom/taobao/weex/ui/component/WXScroller;I)I
    .locals 0

    .line 76
    iput p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->pageSize:I

    return p1
.end method

.method static synthetic access$500(Lcom/taobao/weex/ui/component/WXScroller;)Landroid/view/GestureDetector;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$600(Lcom/taobao/weex/ui/component/WXScroller;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mActiveFeature:I

    return p0
.end method

.method static synthetic access$602(Lcom/taobao/weex/ui/component/WXScroller;I)I
    .locals 0

    .line 76
    iput p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mActiveFeature:I

    return p1
.end method

.method static synthetic access$702(Lcom/taobao/weex/ui/component/WXScroller;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mIsHostAttachedToWindow:Z

    return p1
.end method

.method static synthetic access$800(Lcom/taobao/weex/ui/component/WXScroller;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXScroller;->dispatchDisappearEvent()V

    return-void
.end method

.method static synthetic access$900(Lcom/taobao/weex/ui/component/WXScroller;)Ljava/util/ArrayList;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mChildren:Ljava/util/ArrayList;

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

    .line 919
    instance-of v2, p1, Lcom/taobao/weex/ui/component/WXScroller;

    if-nez v2, :cond_3

    .line 920
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v2

    instance-of v2, v2, Lcom/taobao/weex/ui/component/WXScroller;

    if-eqz v2, :cond_2

    .line 921
    iget v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 922
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/action/GraphicPosition;->getLeft()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollX()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    .line 923
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result v4

    sub-float/2addr v3, v4

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getLayoutWidth()F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    goto :goto_2

    .line 925
    :cond_1
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/action/GraphicPosition;->getTop()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollY()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    .line 926
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v4

    sub-float/2addr v3, v4

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getLayoutHeight()F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    goto :goto_1

    .line 929
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

    .line 338
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXRefresh;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;

    move-object v4, p1

    check-cast v4, Lcom/taobao/weex/ui/component/WXRefresh;

    invoke-virtual {v0, v4}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->setOnRefreshListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;)V

    .line 340
    new-instance v0, Lcom/taobao/weex/ui/component/WXScroller$3;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/ui/component/WXScroller$3;-><init>(Lcom/taobao/weex/ui/component/WXScroller;Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-static {v0}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    .line 346
    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXScroller;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 350
    :goto_0
    instance-of v4, p1, Lcom/taobao/weex/ui/component/WXLoading;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 351
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;

    move-object v4, p1

    check-cast v4, Lcom/taobao/weex/ui/component/WXLoading;

    invoke-virtual {v0, v4}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->setOnLoadingListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;)V

    .line 352
    new-instance v0, Lcom/taobao/weex/ui/component/WXScroller$4;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/ui/component/WXScroller$4;-><init>(Lcom/taobao/weex/ui/component/WXScroller;Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-static {v0}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 358
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method private dispatchDisappearEvent()V
    .locals 4

    .line 938
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mAppearanceComponents:Ljava/util/Map;

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

    .line 939
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/AppearanceHelper;

    .line 940
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/AppearanceHelper;->isWatch()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 943
    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/component/AppearanceHelper;->setAppearStatus(Z)I

    move-result v2

    if-eqz v2, :cond_0

    .line 945
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

    .line 230
    invoke-virtual {p0, p2, p3}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollEvent(II)Ljava/util/Map;

    move-result-object p1

    const-string p2, "scroll"

    invoke-virtual {p0, p2, p1}, Lcom/taobao/weex/ui/component/WXScroller;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
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

    .line 887
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mIsHostAttachedToWindow:Z

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

    .line 892
    :goto_0
    iget p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    if-nez p3, :cond_4

    if-eqz p1, :cond_4

    if-lez p1, :cond_3

    const-string p1, "right"

    goto :goto_1

    :cond_3
    const-string p1, "left"

    :goto_1
    move-object p2, p1

    .line 896
    :cond_4
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mAppearanceComponents:Ljava/util/Map;

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

    .line 897
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/taobao/weex/ui/component/AppearanceHelper;

    .line 899
    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->isWatch()Z

    move-result p4

    if-nez p4, :cond_6

    goto :goto_2

    .line 902
    :cond_6
    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->getAwareChild()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/taobao/weex/ui/component/WXScroller;->checkItemVisibleInScroller(Lcom/taobao/weex/ui/component/WXComponent;)Z

    move-result p4

    .line 904
    invoke-virtual {p3, p4}, Lcom/taobao/weex/ui/component/AppearanceHelper;->setAppearStatus(Z)I

    move-result p4

    if-eqz p4, :cond_5

    .line 906
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

    .line 744
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mAppearanceComponents:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/AppearanceHelper;

    if-nez v0, :cond_0

    .line 746
    new-instance v0, Lcom/taobao/weex/ui/component/AppearanceHelper;

    invoke-direct {v0, p2}, Lcom/taobao/weex/ui/component/AppearanceHelper;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 747
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mAppearanceComponents:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    :cond_0
    invoke-virtual {v0, p1, p3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->setWatchEvent(IZ)V

    const/4 p1, 0x0

    .line 753
    invoke-direct {p0, p1, p1, p1, p1}, Lcom/taobao/weex/ui/component/WXScroller;->procAppear(IIII)V

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

    .line 258
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ne v0, v1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 260
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    iput p2, p1, Landroid/graphics/Point;->y:I

    return v2

    .line 264
    :cond_0
    iget v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int v0, p1, v0

    .line 265
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOffsetAccuracy:I

    if-lt v0, v1, :cond_1

    .line 266
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 267
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    iput p2, p1, Landroid/graphics/Point;->y:I

    return v2

    .line 271
    :cond_1
    iget v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int v0, p2, v0

    .line 272
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOffsetAccuracy:I

    if-lt v0, v1, :cond_2

    .line 273
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 274
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mLastReport:Landroid/graphics/Point;

    iput p2, p1, Landroid/graphics/Point;->y:I

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V
    .locals 1
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

    .line 323
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXBaseRefresh;

    if-eqz v0, :cond_0

    .line 324
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXScroller;->checkRefreshOrLoading(Lcom/taobao/weex/ui/component/WXComponent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRefreshs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_0
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

    .line 180
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXBaseScroller;->addEvent(Ljava/lang/String;)V

    .line 181
    invoke-static {p1}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->isScrollEvent(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mHasAddScrollEvent:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 183
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mHasAddScrollEvent:Z

    .line 184
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object p1

    instance-of p1, p1, Lcom/taobao/weex/ui/view/WXScrollView;

    if-eqz p1, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXScrollView;

    new-instance v0, Lcom/taobao/weex/ui/component/WXScroller$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/WXScroller$1;-><init>(Lcom/taobao/weex/ui/component/WXScroller;)V

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXScrollView;->addScrollViewListener(Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;)V

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object p1

    instance-of p1, p1, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    if-eqz p1, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    new-instance v0, Lcom/taobao/weex/ui/component/WXScroller$2;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/WXScroller$2;-><init>(Lcom/taobao/weex/ui/component/WXScroller;)V

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->addScrollViewListener(Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;)V

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

    if-eqz p1, :cond_4

    .line 286
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRealView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    goto :goto_0

    .line 290
    :cond_0
    instance-of v1, p1, Lcom/taobao/weex/ui/view/WXBaseRefreshLayout;

    if-eqz v1, :cond_1

    return-void

    .line 294
    :cond_1
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    if-lt p2, v0, :cond_2

    const/4 p2, -0x1

    :cond_2
    if-ne p2, v1, :cond_3

    .line 297
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRealView:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 299
    :cond_3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRealView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :cond_4
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

    .line 740
    invoke-direct {p0, v0, p1, v1}, Lcom/taobao/weex/ui/component/WXScroller;->setWatch(ILcom/taobao/weex/ui/component/WXComponent;Z)V

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

    .line 761
    invoke-direct {p0, v0, p1, v0}, Lcom/taobao/weex/ui/component/WXScroller;->setWatch(ILcom/taobao/weex/ui/component/WXComponent;Z)V

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

    .line 727
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->stickyHelper:Lcom/taobao/weex/ui/component/helper/WXStickyHelper;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mStickyMap:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lcom/taobao/weex/ui/component/helper/WXStickyHelper;->bindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/Map;)V

    return-void
.end method

.method public createViewImpl()V
    .locals 2

    .line 156
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXBaseScroller;->createViewImpl()V

    const/4 v0, 0x0

    .line 157
    :goto_0
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRefreshs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRefreshs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/WXComponent;

    .line 159
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->createViewImpl()V

    .line 160
    invoke-direct {p0, v1}, Lcom/taobao/weex/ui/component/WXScroller;->checkRefreshOrLoading(Lcom/taobao/weex/ui/component/WXComponent;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 376
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXBaseScroller;->destroy()V

    .line 377
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mAppearanceComponents:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 378
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mStickyMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 381
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 384
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 386
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/ui/view/IWXScroller;

    if-eqz v0, :cond_3

    .line 387
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/IWXScroller;

    invoke-interface {v0}, Lcom/taobao/weex/ui/view/IWXScroller;->destroy()V

    :cond_3
    return-void
.end method

.method protected getChildrenLayoutTopOffset()I
    .locals 4

    .line 305
    iget v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mChildrenLayoutOffset:I

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRefreshs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 310
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRefreshs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/component/WXComponent;

    .line 311
    iget v3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mChildrenLayoutOffset:I

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutTopOffsetForSibling()I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mChildrenLayoutOffset:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    :cond_0
    iget v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mChildrenLayoutOffset:I

    return v0
.end method

.method public getInnerView()Landroid/view/ViewGroup;
    .locals 1

    .line 168
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    .line 174
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 660
    iget v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    return v0
.end method

.method public bridge synthetic getRealView()Landroid/view/View;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getRealView()Landroid/view/ViewGroup;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mScrollerView:Landroid/widget/FrameLayout;

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

    .line 234
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 235
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v1

    instance-of v1, v1, Lcom/taobao/weex/ui/view/WXScrollView;

    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXScrollView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXScrollView;->getContentFrame()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v1

    instance-of v1, v1, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    if-eqz v1, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->getContentFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 240
    :cond_1
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 241
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 242
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 244
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v2

    .line 246
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string/jumbo v6, "width"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
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

    .line 249
    invoke-static {p1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result p1

    neg-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string/jumbo v0, "x"

    invoke-interface {v4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float p1, p2

    .line 250
    invoke-static {p1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result p1

    neg-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string/jumbo p2, "y"

    invoke-interface {v4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "contentSize"

    .line 252
    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "contentOffset"

    .line 253
    invoke-interface {v1, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public getScrollStartEndHelper()Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;
    .locals 1

    .line 1016
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    if-nez v0, :cond_0

    .line 1017
    new-instance v0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    .line 1019
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    return-object v0
.end method

.method public getScrollX()I
    .locals 1

    .line 655
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getScrollY()I
    .locals 1

    .line 650
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

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

    .line 664
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mStickyMap:Ljava/util/Map;

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

    .line 74
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXScroller;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 449
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXAttr;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string/jumbo v0, "vertical"

    goto :goto_1

    .line 452
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXAttr;->getScrollDirection()Ljava/lang/String;

    move-result-object v0

    .line 454
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v3

    const-string v4, "pagingEnabled"

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 456
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/taobao/weex/ui/component/WXScroller;->pageEnable:Z

    .line 458
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v3

    const-string v4, "pageSize"

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 460
    invoke-static {v3}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result v3

    .line 463
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v4

    invoke-static {v3, v4}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_2

    float-to-int v3, v3

    .line 465
    iput v3, p0, Lcom/taobao/weex/ui/component/WXScroller;->pageSize:I

    :cond_2
    :goto_1
    const-string v3, "horizontal"

    .line 472
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_3

    .line 473
    iput v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    .line 474
    new-instance v0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 475
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRealView:Landroid/widget/FrameLayout;

    .line 476
    new-instance p1, Lcom/taobao/weex/ui/component/WXScroller$5;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/WXScroller$5;-><init>(Lcom/taobao/weex/ui/component/WXScroller;)V

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->setScrollViewListener(Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;)V

    .line 483
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 485
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRealView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, p1}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 487
    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mScrollerView:Landroid/widget/FrameLayout;

    .line 489
    new-instance p1, Lcom/taobao/weex/ui/component/WXScroller$6;

    invoke-direct {p1, p0, v0, p0}, Lcom/taobao/weex/ui/component/WXScroller$6;-><init>(Lcom/taobao/weex/ui/component/WXScroller;Lcom/taobao/weex/ui/view/WXHorizontalScrollView;Lcom/taobao/weex/ui/component/WXScroller;)V

    .line 516
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRealView:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/taobao/weex/ui/component/WXScroller$7;

    invoke-direct {v2, p0, p1}, Lcom/taobao/weex/ui/component/WXScroller$7;-><init>(Lcom/taobao/weex/ui/component/WXScroller;Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 529
    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->pageEnable:Z

    if-eqz p1, :cond_4

    .line 530
    new-instance p1, Landroid/view/GestureDetector;

    new-instance v1, Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;

    invoke-direct {v1, p0, v0}, Lcom/taobao/weex/ui/component/WXScroller$MyGestureDetector;-><init>(Lcom/taobao/weex/ui/component/WXScroller;Lcom/taobao/weex/ui/view/WXHorizontalScrollView;)V

    invoke-direct {p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mGestureDetector:Landroid/view/GestureDetector;

    .line 531
    new-instance p1, Lcom/taobao/weex/ui/component/WXScroller$8;

    invoke-direct {p1, p0, v0}, Lcom/taobao/weex/ui/component/WXScroller$8;-><init>(Lcom/taobao/weex/ui/component/WXScroller;Lcom/taobao/weex/ui/view/WXHorizontalScrollView;)V

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    .line 559
    :cond_3
    iput v2, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    .line 560
    new-instance v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;

    iget v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    invoke-direct {v0, p1, v1, p0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;-><init>(Landroid/content/Context;ILcom/taobao/weex/ui/component/WXBaseScroller;)V

    .line 561
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRealView:Landroid/widget/FrameLayout;

    .line 562
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;->getInnerView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXScrollView;

    .line 563
    invoke-virtual {p1, p0}, Lcom/taobao/weex/ui/view/WXScrollView;->addScrollViewListener(Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;)V

    .line 564
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 566
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mScrollerView:Landroid/widget/FrameLayout;

    .line 567
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mRealView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3, v1}, Lcom/taobao/weex/ui/view/WXScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    invoke-virtual {p1, v2}, Lcom/taobao/weex/ui/view/WXScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 569
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string v3, "nestedScrollingEnabled"

    invoke-virtual {v1, v3}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/view/WXScrollView;->setNestedScrollingEnabled(Z)V

    .line 570
    new-instance v1, Lcom/taobao/weex/ui/component/WXScroller$9;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/WXScroller$9;-><init>(Lcom/taobao/weex/ui/component/WXScroller;)V

    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/view/WXScrollView;->addScrollViewListener(Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;)V

    .line 615
    :cond_4
    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v1, Lcom/taobao/weex/ui/component/WXScroller$10;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/WXScroller$10;-><init>(Lcom/taobao/weex/ui/component/WXScroller;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 631
    new-instance p1, Lcom/taobao/weex/ui/component/WXScroller$11;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/WXScroller$11;-><init>(Lcom/taobao/weex/ui/component/WXScroller;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 644
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-object v0
.end method

.method public isScrollable()Z
    .locals 1

    .line 721
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->isScrollable:Z

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

    .line 429
    new-instance v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;

    invoke-direct {v0}, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;-><init>()V

    .line 430
    iget v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    const/4 v2, -0x1

    if-nez v1, :cond_2

    .line 431
    sget-object v1, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-static {v1}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    .line 432
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInstanceId()Ljava/lang/String;

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

    .line 434
    :cond_1
    iput p1, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->width:I

    .line 435
    iput p2, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->height:I

    goto :goto_2

    .line 437
    :cond_2
    sget-object v1, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-static {v1}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    .line 438
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInstanceId()Ljava/lang/String;

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

    .line 440
    :cond_4
    iput p2, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->height:I

    .line 441
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

    .line 868
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXScroller;->containsEvent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "disappear"

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXScroller;->containsEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 869
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "direction"

    .line 870
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/ui/component/WXScroller;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
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

    .line 975
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXAttr;->getLoadMoreOffset()Ljava/lang/String;

    move-result-object v0

    .line 976
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 977
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 979
    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v0

    float-to-int v0, v0

    .line 981
    instance-of v1, p1, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "loadmore"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 982
    :try_start_1
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int p2, p3, p2

    .line 983
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    sub-int/2addr p2, p1

    if-ge p2, v0, :cond_5

    .line 984
    iget p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mContentWidth:I

    if-ne p1, p3, :cond_1

    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mForceLoadmoreNextTime:Z

    if-eqz p1, :cond_5

    .line 985
    :cond_1
    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/component/WXScroller;->fireEvent(Ljava/lang/String;)V

    .line 986
    iput p3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mContentWidth:I

    .line 987
    iput-boolean v3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mForceLoadmoreNextTime:Z

    goto :goto_0

    .line 990
    :cond_2
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    .line 991
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    sub-int p3, p2, p3

    sub-int/2addr p3, p1

    if-ge p3, v0, :cond_5

    .line 994
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 995
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[WXScroller-onScroll] offScreenY :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 997
    :cond_3
    iget p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mContentHeight:I

    if-ne p1, p2, :cond_4

    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mForceLoadmoreNextTime:Z

    if-eqz p1, :cond_5

    .line 998
    :cond_4
    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/component/WXScroller;->fireEvent(Ljava/lang/String;)V

    .line 999
    iput p2, p0, Lcom/taobao/weex/ui/component/WXScroller;->mContentHeight:I

    .line 1000
    iput-boolean v3, p0, Lcom/taobao/weex/ui/component/WXScroller;->mForceLoadmoreNextTime:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "[WXScroller-onScroll] "

    .line 1005
    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onScroll(Lcom/taobao/weex/ui/view/WXScrollView;II)V
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

    .line 963
    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXScroller;->onLoadMore(Landroid/widget/FrameLayout;II)V

    return-void
.end method

.method public onScrollChanged(Lcom/taobao/weex/ui/view/WXScrollView;IIII)V
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

    .line 863
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/taobao/weex/ui/component/WXScroller;->procAppear(IIII)V

    return-void
.end method

.method public onScrollStopped(Lcom/taobao/weex/ui/view/WXScrollView;II)V
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

.method public onScrollToBottom(Lcom/taobao/weex/ui/view/WXScrollView;II)V
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

    .line 366
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXBaseScroller;->remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    .line 367
    instance-of p2, p1, Lcom/taobao/weex/ui/component/WXLoading;

    if-eqz p2, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;

    invoke-virtual {p2, p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->removeFooterView(Lcom/taobao/weex/ui/component/WXComponent;)V

    goto :goto_0

    .line 369
    :cond_0
    instance-of p2, p1, Lcom/taobao/weex/ui/component/WXRefresh;

    if-eqz p2, :cond_1

    .line 370
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getHostView()Landroid/view/View;

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

    .line 1012
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mForceLoadmoreNextTime:Z

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

    .line 831
    invoke-virtual {p0, p1, p2, v0}, Lcom/taobao/weex/ui/component/WXScroller;->scrollBy(IIZ)V

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

    .line 835
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 839
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/ui/component/WXScroller$12;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/taobao/weex/ui/component/WXScroller$12;-><init>(Lcom/taobao/weex/ui/component/WXScroller;ZII)V

    const-wide/16 p1, 0x10

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

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

    .line 786
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

    .line 787
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v2, :cond_1

    .line 790
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v2

    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 792
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

    .line 797
    :cond_1
    :goto_1
    iget-boolean p2, p0, Lcom/taobao/weex/ui/component/WXScroller;->pageEnable:Z

    if-eqz p2, :cond_2

    .line 798
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXScroller;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    iput p2, p0, Lcom/taobao/weex/ui/component/WXScroller;->mActiveFeature:I

    .line 801
    :cond_2
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAbsoluteY()I

    move-result p2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getAbsoluteY()I

    move-result v2

    sub-int/2addr p2, v2

    .line 803
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->isLayoutRTL()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 805
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v2

    if-ne v2, p0, :cond_4

    .line 806
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 807
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 808
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    .line 809
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAbsoluteX()I

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getAbsoluteX()I

    move-result v4

    sub-int/2addr p1, v4

    sub-int/2addr v2, p1

    sub-int/2addr v2, v3

    goto :goto_2

    .line 811
    :cond_3
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAbsoluteX()I

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getAbsoluteX()I

    move-result v2

    sub-int v2, p1, v2

    goto :goto_2

    .line 814
    :cond_4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    .line 815
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAbsoluteX()I

    move-result v3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getAbsoluteX()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result p1

    float-to-int p1, p1

    add-int v2, v3, p1

    :goto_2
    neg-float v1, v1

    goto :goto_3

    .line 819
    :cond_5
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAbsoluteX()I

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getAbsoluteX()I

    move-result v2

    sub-int v2, p1, v2

    .line 821
    :goto_3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollX()I

    move-result p1

    sub-int/2addr v2, p1

    float-to-int p1, v1

    add-int/2addr v2, p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollY()I

    move-result v1

    sub-int/2addr p2, v1

    add-int/2addr p2, p1

    invoke-virtual {p0, v2, p2, v0}, Lcom/taobao/weex/ui/component/WXScroller;->scrollBy(IIZ)V

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

    .line 415
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 416
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 417
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 420
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 421
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->isLayoutRTL()Z

    move-result v0

    .line 422
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setLayoutDirection(Landroid/view/View;I)V

    .line 424
    :cond_1
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXBaseScroller;->setLayout(Lcom/taobao/weex/ui/component/WXComponent;)V

    :cond_2
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

    .line 393
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 394
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 395
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 396
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_0

    .line 398
    :cond_0
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_2

    .line 399
    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 400
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x35

    .line 401
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 402
    invoke-virtual {p1, p4, p3, p2, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x33

    .line 404
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 405
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 408
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

    .line 715
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v0

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p1

    float-to-int p1, p1

    .line 716
    iput p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOffsetAccuracy:I

    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
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

    .line 669
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "scrollable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "offsetAccuracy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "showScrollbar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 687
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXBaseScroller;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 677
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 678
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXScroller;->setScrollable(Z)V

    return v1

    :pswitch_1
    const/16 p1, 0xa

    .line 681
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 682
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXScroller;->setOffsetAccuracy(I)V

    return v1

    :pswitch_2
    const/4 p1, 0x0

    .line 671
    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 673
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXScroller;->setShowScrollbar(Z)V

    :cond_3
    return v1

    :sswitch_data_0
    .sparse-switch
        -0xd52a857 -> :sswitch_2
        -0x55c154 -> :sswitch_1
        0x3f94da7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 704
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXScroller;->isScrollable:Z

    .line 705
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 706
    instance-of v1, v0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    if-eqz v1, :cond_0

    .line 707
    check-cast v0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->setScrollable(Z)V

    goto :goto_0

    .line 708
    :cond_0
    instance-of v1, v0, Lcom/taobao/weex/ui/view/WXScrollView;

    if-eqz v1, :cond_1

    .line 709
    check-cast v0, Lcom/taobao/weex/ui/view/WXScrollView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXScrollView;->setScrollable(Z)V

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

    .line 692
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 695
    :cond_0
    iget v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 696
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0

    .line 698
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

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

    .line 769
    invoke-direct {p0, v0, p1, v0}, Lcom/taobao/weex/ui/component/WXScroller;->setWatch(ILcom/taobao/weex/ui/component/WXComponent;Z)V

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

    .line 777
    invoke-direct {p0, v0, p1, v1}, Lcom/taobao/weex/ui/component/WXScroller;->setWatch(ILcom/taobao/weex/ui/component/WXComponent;Z)V

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

    .line 732
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller;->stickyHelper:Lcom/taobao/weex/ui/component/helper/WXStickyHelper;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXScroller;->mStickyMap:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lcom/taobao/weex/ui/component/helper/WXStickyHelper;->unbindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/Map;)V

    return-void
.end method
