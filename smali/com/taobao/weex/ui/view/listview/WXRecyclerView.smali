.class public Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "WXRecyclerView.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;


# static fields
.field public static final TYPE_GRID_LAYOUT:I = 0x2

.field public static final TYPE_LINEAR_LAYOUT:I = 0x1

.field public static final TYPE_STAGGERED_GRID_LAYOUT:I = 0x3


# instance fields
.field private NestInfo:Lcom/alibaba/fastjson/JSONObject;

.field private hasTouch:Z

.field private headerHeight:F

.field public isNestParent:Z

.field isStartFling:Z

.field private lastY:Ljava/lang/Float;

.field mChildScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mCurrentDy:I

.field private mFlingHelper:Lio/dcloud/weex/FlingHelper;

.field private mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

.field private mInstanceId:Ljava/lang/String;

.field mParentScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private scrollable:Z

.field private totalDy:I

.field private velocityY:I


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

    .line 168
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollable:Z

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->hasTouch:Z

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    .line 60
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    .line 61
    iput p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mCurrentDy:I

    const/4 v0, 0x0

    .line 68
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->lastY:Ljava/lang/Float;

    .line 69
    iput p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->totalDy:I

    .line 74
    iput p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    .line 76
    iput v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->headerHeight:F

    .line 81
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isStartFling:Z

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

    .line 173
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollable:Z

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->hasTouch:Z

    const/4 p2, 0x0

    .line 59
    iput-object p2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    .line 60
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    .line 61
    iput p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mCurrentDy:I

    const/4 p2, 0x0

    .line 68
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->lastY:Ljava/lang/Float;

    .line 69
    iput p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->totalDy:I

    .line 74
    iput p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    .line 76
    iput p2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->headerHeight:F

    .line 81
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isStartFling:Z

    return-void
.end method

.method static synthetic access$002(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mCurrentDy:I

    return p1
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->dispatchChildFling()V

    return-void
.end method

.method static synthetic access$202(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->totalDy:I

    return p1
.end method

.method static synthetic access$212(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)I
    .locals 1

    .line 50
    iget v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->totalDy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->totalDy:I

    return v0
.end method

.method static synthetic access$300(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->dispatchParentFling()V

    return-void
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;IZ)Z
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->canParentScrollVertically(IZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$501(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method private canParentScrollVertically(IZ)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "orientation",
            "defV"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    if-ne p1, v0, :cond_2

    .line 263
    :try_start_0
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    if-eqz p1, :cond_2

    .line 265
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getChildRecylerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object p1

    if-nez p1, :cond_0

    return v0

    .line 270
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 271
    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 272
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getHeight()I

    move-result v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    if-nez v2, :cond_1

    .line 274
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isScrollTop()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v0

    :catch_0
    move-exception p1

    .line 303
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return p2
.end method

.method private childFling(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "velY"
        }
    .end annotation

    .line 627
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getChildRecylerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 629
    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    :cond_0
    return-void
.end method

.method private dispatchChildFling()V
    .locals 6

    .line 600
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isScrollEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    if-eqz v0, :cond_0

    .line 601
    iget-object v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mFlingHelper:Lio/dcloud/weex/FlingHelper;

    invoke-virtual {v1, v0}, Lio/dcloud/weex/FlingHelper;->getSplineFlingDistance(I)D

    move-result-wide v0

    .line 602
    iget v2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->totalDy:I

    int-to-double v3, v2

    cmpl-double v5, v0, v3

    if-lez v5, :cond_0

    .line 603
    iget-object v3, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mFlingHelper:Lio/dcloud/weex/FlingHelper;

    int-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Lio/dcloud/weex/FlingHelper;->getVelocityByDistance(D)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->childFling(I)V

    :cond_0
    const/4 v0, 0x0

    .line 606
    iput v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->totalDy:I

    .line 607
    iput v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    return-void
.end method

.method private dispatchParentFling()V
    .locals 8

    .line 612
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getParentRecyclerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 614
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isScrollTop()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    if-eqz v1, :cond_1

    .line 616
    iget-object v2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mFlingHelper:Lio/dcloud/weex/FlingHelper;

    invoke-virtual {v2, v1}, Lio/dcloud/weex/FlingHelper;->getSplineFlingDistance(I)D

    move-result-wide v1

    .line 617
    iget v3, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->totalDy:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v3, v3

    const/4 v5, 0x0

    cmpl-double v6, v1, v3

    if-lez v6, :cond_0

    .line 618
    iget-object v3, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mFlingHelper:Lio/dcloud/weex/FlingHelper;

    iget v4, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->totalDy:I

    int-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v6

    invoke-virtual {v3, v1, v2}, Lio/dcloud/weex/FlingHelper;->getVelocityByDistance(D)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v5, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->fling(II)Z

    .line 620
    :cond_0
    iput v5, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->totalDy:I

    .line 621
    iput v5, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    :cond_1
    return-void
.end method

.method private getChildRecylerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    .locals 3

    .line 496
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    if-eqz v1, :cond_2

    const-string v1, "isSwipelist"

    .line 498
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "swipeId"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 500
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponentById(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 502
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getDCWXSliderComponent(Lcom/taobao/weex/ui/component/WXComponent;)Lio/dcloud/feature/weex/extend/DCWXSlider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 503
    instance-of v1, v0, Lio/dcloud/feature/weex/extend/DCWXSlider;

    if-eqz v1, :cond_1

    .line 504
    check-cast v0, Lio/dcloud/feature/weex/extend/DCWXSlider;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getCurrentIndex()I

    move-result v1

    .line 505
    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/extend/DCWXSlider;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    goto :goto_0

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "nestChildRef"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 510
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 513
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getListComponent(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/list/WXListComponent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 514
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 515
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getParentRecyclerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    .locals 3

    .line 481
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    if-nez v1, :cond_0

    const-string v1, "listParentId"

    .line 482
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 483
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponentById(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getListComponent(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/list/WXListComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 487
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private isScrollEnd()Z
    .locals 2

    const/4 v0, 0x1

    .line 596
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->canScrollVertically(I)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public callBackNestParent(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ref",
            "instanceId",
            "headerHeight"
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getParentRecyclerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v2, 0x1

    .line 159
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isNestParent"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "instanceId"

    .line 160
    invoke-virtual {v1, v2, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "nestChildRef"

    .line 161
    invoke-virtual {v1, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "headerHeight"

    invoke-virtual {v1, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setNestInfo(Lcom/alibaba/fastjson/JSONObject;)V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const/4 v0, 0x1

    .line 356
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->hasTouch:Z

    .line 357
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_2

    .line 358
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 359
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 361
    iput v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    .line 362
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->stopScroll()V

    :cond_0
    if-eqz p1, :cond_2

    .line 364
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    .line 366
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->lastY:Ljava/lang/Float;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 369
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 370
    iput v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    .line 375
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 376
    iget-object v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v1, :cond_3

    .line 377
    invoke-virtual {v1, p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_3
    return v0
.end method

.method public fling(II)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "velX",
            "velY"
        }
    .end annotation

    .line 561
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 562
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    move-result p1

    .line 563
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_6

    .line 564
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    if-gtz p2, :cond_1

    goto :goto_0

    .line 568
    :cond_1
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isStartFling:Z

    .line 569
    iput p2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    goto :goto_2

    .line 566
    :cond_2
    :goto_0
    iput v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_5

    if-ltz p2, :cond_4

    goto :goto_1

    .line 577
    :cond_4
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isStartFling:Z

    .line 578
    iput p2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    goto :goto_2

    .line 574
    :cond_5
    :goto_1
    iput v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->velocityY:I

    :cond_6
    :goto_2
    return p1
.end method

.method public getCurrentDy()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mCurrentDy:I

    return v0
.end method

.method public getDCWXSliderComponent(Lcom/taobao/weex/ui/component/WXComponent;)Lio/dcloud/feature/weex/extend/DCWXSlider;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 542
    instance-of v0, p1, Lio/dcloud/feature/weex/extend/DCWXSlider;

    if-eqz v0, :cond_0

    .line 543
    check-cast p1, Lio/dcloud/feature/weex/extend/DCWXSlider;

    return-object p1

    .line 545
    :cond_0
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_2

    .line 546
    check-cast p1, Lcom/taobao/weex/ui/component/WXVContainer;

    .line 547
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 548
    :goto_0
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 549
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getDCWXSliderComponent(Lcom/taobao/weex/ui/component/WXComponent;)Lio/dcloud/feature/weex/extend/DCWXSlider;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getGestureListener()Lcom/taobao/weex/ui/view/gesture/WXGesture;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-object v0
.end method

.method public getListComponent(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/list/WXListComponent;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 524
    instance-of v0, p1, Lcom/taobao/weex/ui/component/list/WXListComponent;

    if-eqz v0, :cond_0

    .line 525
    check-cast p1, Lcom/taobao/weex/ui/component/list/WXListComponent;

    return-object p1

    .line 527
    :cond_0
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_2

    .line 528
    check-cast p1, Lcom/taobao/weex/ui/component/WXVContainer;

    .line 529
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 530
    :goto_0
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 531
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getListComponent(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/list/WXListComponent;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public initView(Landroid/content/Context;II)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "type",
            "orientation"
        }
    .end annotation

    const/4 v3, 0x1

    const/high16 v4, 0x42000000    # 32.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    .line 185
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V

    return-void
.end method

.method public initView(Landroid/content/Context;IIFI)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x10
        }
        names = {
            "context",
            "type",
            "columnCount",
            "columnGap",
            "orientation"
        }
    .end annotation

    const/4 p4, 0x2

    if-ne p2, p4, :cond_0

    .line 198
    new-instance p2, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$3;

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p5

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$3;-><init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;Landroid/content/Context;IIZI)V

    invoke-virtual {p0, p2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    :cond_0
    const/4 p4, 0x3

    if-ne p2, p4, :cond_1

    .line 218
    new-instance p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$4;

    invoke-direct {p1, p0, p3, p5, p5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$4;-><init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;III)V

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    :cond_1
    const/4 p3, 0x1

    if-ne p2, p3, :cond_2

    .line 238
    new-instance p2, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$5;

    const/4 v4, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move v3, p5

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$5;-><init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;Landroid/content/Context;IZI)V

    invoke-virtual {p0, p2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public isNestScroll()Z
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScrollTop()Z
    .locals 1

    const/4 v0, -0x1

    .line 591
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->canScrollVertically(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isScrollable()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollable:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 385
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
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

    .line 678
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 681
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 3
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

    .line 687
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_3

    .line 688
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getChildRecylerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    cmpl-float v2, p3, p2

    if-lez v2, :cond_0

    .line 689
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isScrollEnd()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    cmpl-float p2, p3, p2

    if-gez p2, :cond_1

    if-eqz p1, :cond_1

    .line 690
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isScrollTop()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez v2, :cond_2

    if-nez p1, :cond_2

    return v1

    :cond_2
    float-to-int p1, p3

    .line 694
    invoke-virtual {p0, v1, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->fling(II)Z

    return v0

    .line 697
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "dx",
            "dy",
            "consumed"
        }
    .end annotation

    .line 662
    iget-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_3

    .line 663
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getChildRecylerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-lez p3, :cond_0

    .line 665
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isScrollEnd()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-gez p3, :cond_1

    if-eqz p1, :cond_1

    .line 667
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isScrollTop()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez v1, :cond_2

    if-eqz p1, :cond_3

    .line 670
    :cond_2
    invoke-virtual {p0, v0, p3}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollBy(II)V

    .line 671
    aput p3, p4, p2

    :cond_3
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "l",
            "t",
            "oldl",
            "oldt"
        }
    .end annotation

    .line 708
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->onScrollChanged(IIII)V

    .line 709
    invoke-static {p1, p2}, Lio/dcloud/common/ui/blur/AppEventForBlurManager;->onScrollChanged(II)V

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "target",
            "nestedScrollAxes"
        }
    .end annotation

    .line 653
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 654
    instance-of v0, p2, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iget-boolean v0, v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 658
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 320
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollable:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    if-eqz v0, :cond_3

    .line 324
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->lastY:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 325
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->lastY:Ljava/lang/Float;

    .line 327
    :cond_1
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isScrollEnd()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getChildRecylerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 331
    iget-object v3, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->lastY:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    .line 333
    invoke-virtual {v0, v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 337
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->lastY:Ljava/lang/Float;

    .line 340
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 341
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_4

    .line 343
    invoke-virtual {v0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v1

    if-eqz v1, :cond_4

    instance-of v1, v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    if-eqz v1, :cond_4

    .line 345
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v1, v3, v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->pointInView(FFF)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 346
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getScrollState()I

    move-result v1

    if-nez v1, :cond_4

    .line 347
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 351
    :cond_4
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public pointInView(FFF)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "localX",
            "localY",
            "slop"
        }
    .end annotation

    neg-float v0, p3

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    .line 702
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 703
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getBottom()I

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getTop()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    add-float/2addr p1, p3

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
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

    .line 310
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-void
.end method

.method public scrollTo(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "x",
            "y",
            "orientation"
        }
    .end annotation

    .line 447
    new-instance v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$7;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$7;-><init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;III)V

    invoke-static {v0}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 p2, 0x64

    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public scrollTo(ZIII)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10,
            0x10
        }
        names = {
            "smooth",
            "position",
            "offset",
            "orientation"
        }
    .end annotation

    .line 390
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 391
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->stopScroll()V

    if-nez p1, :cond_1

    .line 393
    instance-of p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_0

    .line 395
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    neg-int p1, p3

    invoke-virtual {v0, p2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0

    .line 396
    :cond_0
    instance-of p1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p1, :cond_4

    .line 397
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    neg-int p1, p3

    invoke-virtual {v0, p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    if-ne p4, p1, :cond_3

    .line 403
    instance-of p1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 405
    move-object p1, v0

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 406
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-lt p2, p1, :cond_3

    if-gt p2, v0, :cond_3

    sub-int/2addr p2, p1

    .line 408
    invoke-virtual {p0, p2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    add-int/2addr p1, p3

    .line 409
    invoke-virtual {p0, v1, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->smoothScrollBy(II)V

    return-void

    .line 412
    :cond_2
    instance-of p1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p1, :cond_3

    .line 413
    move-object p1, v0

    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object p1

    .line 414
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    move-result-object v0

    .line 415
    aget v2, p1, v1

    if-lt p2, v2, :cond_3

    aget v0, v0, v1

    if-gt p2, v0, :cond_3

    .line 416
    aget p1, p1, v1

    sub-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    add-int/2addr p1, p3

    .line 417
    invoke-virtual {p0, v1, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->smoothScrollBy(II)V

    return-void

    .line 422
    :cond_3
    invoke-virtual {p0, p2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->smoothScrollToPosition(I)V

    if-eqz p3, :cond_4

    .line 424
    new-instance p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;

    invoke-direct {p1, p0, p4, p3}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;-><init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;II)V

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setOnSmoothScrollEndListener(Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_0
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "position"
        }
    .end annotation

    .line 635
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_1

    .line 637
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getChildRecylerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 641
    :cond_0
    new-instance v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$9;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$9;-><init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)V

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 648
    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :goto_0
    return-void
.end method

.method public setNestInfo(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nestInfo"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->NestInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_2

    const-string v0, "isNestParent"

    .line 87
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    const-string v0, "instanceId"

    .line 88
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mInstanceId:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mFlingHelper:Lio/dcloud/weex/FlingHelper;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lio/dcloud/weex/FlingHelper;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/dcloud/weex/FlingHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mFlingHelper:Lio/dcloud/weex/FlingHelper;

    .line 92
    :cond_0
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isNestParent:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x20000

    .line 94
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setDescendantFocusability(I)V

    .line 95
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mParentScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-nez v0, :cond_2

    const-string v0, "headerHeight"

    .line 96
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->headerHeight:F

    .line 97
    new-instance p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;-><init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mParentScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 120
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mChildScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-nez p1, :cond_2

    .line 124
    new-instance p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;-><init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->mChildScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 145
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setOnSmoothScrollEndListener(Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "onSmoothScrollEndListener"
        }
    .end annotation

    .line 467
    new-instance v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$8;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$8;-><init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;Lcom/taobao/weex/ui/view/listview/ExtendedLinearLayoutManager$OnSmoothScrollEndListener;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

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

    .line 181
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollable:Z

    return-void
.end method
