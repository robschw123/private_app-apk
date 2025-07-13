.class public abstract Lcom/taobao/weex/ui/component/list/BasicListComponent;
.super Lcom/taobao/weex/ui/component/WXVContainer;
.source "BasicListComponent.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;
.implements Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;
.implements Lcom/taobao/weex/ui/component/Scrollable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/list/BasicListComponent$DragTriggerType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/ViewGroup;",
        ":",
        "Lcom/taobao/weex/ui/component/list/ListComponentView;",
        ">",
        "Lcom/taobao/weex/ui/component/WXVContainer<",
        "TT;>;",
        "Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener<",
        "Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;",
        ">;",
        "Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;",
        "Lcom/taobao/weex/ui/component/Scrollable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_EXCLUDED:Z = false

.field private static final DEFAULT_TRIGGER_TYPE:Ljava/lang/String; = "longpress"

.field private static final DRAG_ANCHOR:Ljava/lang/String; = "dragAnchor"

.field private static final DRAG_TRIGGER_TYPE:Ljava/lang/String; = "dragTriggerType"

.field private static final EXCLUDED:Ljava/lang/String; = "dragExcluded"

.field public static final LOADMOREOFFSET:Ljava/lang/String; = "loadmoreoffset"

.field private static final MAX_VIEWTYPE_ALLOW_CACHE:I = 0x9

.field public static final TRANSFORM:Ljava/lang/String; = "transform"

.field private static mAllowCacheViewHolder:Z

.field private static mDownForBidCacheViewHolder:Z

.field private static final transformPattern:Ljava/util/regex/Pattern;


# instance fields
.field private TAG:Ljava/lang/String;

.field private isScrollable:Z

.field isThisGroupFinished:Z

.field private keepPositionCell:Lcom/taobao/weex/ui/component/WXComponent;

.field private keepPositionCellRunnable:Ljava/lang/Runnable;

.field private keepPositionLayoutDelay:J

.field listStanceObject:Lcom/taobao/weex/ui/component/list/ListStanceCell;

.field private mAppearChangeRunnable:Ljava/lang/Runnable;

.field private mAppearChangeRunnableDelay:J

.field private mAppearComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/component/AppearanceHelper;",
            ">;"
        }
    .end annotation
.end field

.field protected mColumnCount:I

.field protected mColumnGap:F

.field protected mColumnWidth:F

.field private mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

.field private mForceLoadmoreNextTime:Z

.field private mHasAddScrollEvent:Z

.field private mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

.field private mLastReport:Landroid/graphics/Point;

.field protected mLayoutType:I

.field protected mLeftGap:F

.field private mListCellCount:I

.field private mOffsetAccuracy:I

.field private mRefToViewType:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mRightGap:F

.field private mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

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

.field private mTriggerType:Ljava/lang/String;

.field private mViewOnScrollListener:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

.field private mViewTypes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;>;"
        }
    .end annotation
.end field

.field private stickyHelper:Lcom/taobao/weex/ui/component/helper/WXStickyHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "([a-z]+)\\(([0-9\\.]+),?([0-9\\.]+)?\\)"

    .line 101
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->transformPattern:Ljava/util/regex/Pattern;

    const/4 v0, 0x1

    .line 113
    sput-boolean v0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAllowCacheViewHolder:Z

    const/4 v0, 0x0

    .line 114
    sput-boolean v0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mDownForBidCacheViewHolder:Z

    return-void
.end method

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

    .line 177
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXVContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    const-string p1, "BasicListComponent"

    .line 98
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 99
    iput p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mListCellCount:I

    .line 100
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mForceLoadmoreNextTime:Z

    .line 103
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearComponents:Ljava/util/Map;

    const/4 p2, 0x0

    .line 104
    iput-object p2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x32

    .line 105
    iput-wide v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnableDelay:J

    const/4 p3, 0x1

    .line 107
    iput-boolean p3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->isScrollable:Z

    .line 110
    new-instance v0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;-><init>(Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewOnScrollListener:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

    .line 117
    iput p3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mLayoutType:I

    .line 118
    iput p3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mColumnCount:I

    const/4 p3, 0x0

    .line 119
    iput p3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mColumnGap:F

    .line 120
    iput p3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mColumnWidth:F

    .line 121
    iput p3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mLeftGap:F

    .line 122
    iput p3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mRightGap:F

    const/16 p3, 0xa

    .line 124
    iput p3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mOffsetAccuracy:I

    .line 125
    new-instance p3, Landroid/graphics/Point;

    const/4 v0, -0x1

    invoke-direct {p3, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object p3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mLastReport:Landroid/graphics/Point;

    .line 126
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mHasAddScrollEvent:Z

    .line 160
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mStickyMap:Ljava/util/Map;

    .line 171
    iput-object p2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCell:Lcom/taobao/weex/ui/component/WXComponent;

    .line 172
    iput-object p2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCellRunnable:Ljava/lang/Runnable;

    const-wide/16 p2, 0x96

    .line 173
    iput-wide p2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionLayoutDelay:J

    .line 713
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->isThisGroupFinished:Z

    .line 178
    new-instance p1, Lcom/taobao/weex/ui/component/helper/WXStickyHelper;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/helper/WXStickyHelper;-><init>(Lcom/taobao/weex/ui/component/Scrollable;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->stickyHelper:Lcom/taobao/weex/ui/component/helper/WXStickyHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/list/BasicListComponent;)Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewOnScrollListener:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/list/BasicListComponent;)Ljava/lang/Runnable;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/component/list/BasicListComponent;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCell:Lcom/taobao/weex/ui/component/WXComponent;

    return-object p0
.end method

.method static synthetic access$202(Lcom/taobao/weex/ui/component/list/BasicListComponent;Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCell:Lcom/taobao/weex/ui/component/WXComponent;

    return-object p1
.end method

.method static synthetic access$302(Lcom/taobao/weex/ui/component/list/BasicListComponent;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCellRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/component/list/BasicListComponent;)Lcom/taobao/weex/ui/component/list/DragHelper;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    return-object p0
.end method

.method static synthetic access$500(Lcom/taobao/weex/ui/component/list/BasicListComponent;II)Z
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->shouldReport(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/taobao/weex/ui/component/list/BasicListComponent;Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->fireScrollEvent(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method private bindViewType(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 1165
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->generateViewType(Lcom/taobao/weex/common/IWXObject;)I

    move-result v0

    .line 1167
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewTypes:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 1168
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewTypes:Landroid/util/SparseArray;

    .line 1171
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 1174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1175
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1177
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkRecycledViewPool(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewType"
        }
    .end annotation

    .line 1070
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 1071
    sput-boolean v2, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAllowCacheViewHolder:Z

    .line 1073
    :cond_0
    sget-boolean v0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mDownForBidCacheViewHolder:Z

    if-eqz v0, :cond_1

    .line 1074
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1075
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 1077
    :cond_1
    sget-boolean p1, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mDownForBidCacheViewHolder:Z

    if-nez p1, :cond_3

    .line 1078
    sget-boolean p1, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAllowCacheViewHolder:Z

    if-nez p1, :cond_3

    .line 1079
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    check-cast p1, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {p1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 1080
    :goto_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 1081
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 1083
    sput-boolean p1, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mDownForBidCacheViewHolder:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1088
    :catch_0
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    const-string v0, "Clear recycledViewPool error!"

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private createVHForFakeComponent(I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewType"
        }
    .end annotation

    .line 1334
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    .line 1335
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1336
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1337
    new-instance v1, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    invoke-direct {v1, v0, p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;-><init>(Landroid/view/View;I)V

    return-object v1
.end method

.method private createVHForRefreshComponent(I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewType"
        }
    .end annotation

    .line 1342
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1343
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1344
    new-instance v1, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    invoke-direct {v1, v0, p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;-><init>(Landroid/view/View;I)V

    return-object v1
.end method

.method private findComponentByAnchorName(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "root",
            "anchorName"
        }
    .end annotation

    .line 1106
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 1110
    :goto_0
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 1111
    invoke-interface {v2, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 1112
    :cond_1
    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result p1

    const-string v3, "ms"

    const-string v4, "dragPerf"

    const/4 v5, 0x0

    if-nez p1, :cond_4

    .line 1113
    invoke-interface {v2}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz p1, :cond_3

    .line 1115
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v6, "true"

    .line 1118
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1119
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1120
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findComponentByAnchorName time: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object p1

    .line 1125
    :cond_3
    instance-of v3, p1, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v3, :cond_1

    .line 1126
    check-cast p1, Lcom/taobao/weex/ui/component/WXVContainer;

    const/4 v3, 0x0

    .line 1127
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXVContainer;->childCount()I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_1

    .line 1128
    invoke-virtual {p1, v3}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v5

    .line 1129
    invoke-interface {v2, v5}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1134
    :cond_4
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "findComponentByAnchorName elapsed time: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v5
.end method

.method private findDirectListChild(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comp"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 412
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 416
    :cond_0
    instance-of v1, v0, Lcom/taobao/weex/ui/component/list/BasicListComponent;

    if-eqz v1, :cond_1

    return-object p1

    .line 420
    :cond_1
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->findDirectListChild(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private fireScrollEvent(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "offsetX",
            "offsetY"
        }
    .end annotation

    .line 1416
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1417
    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getScrollEvent(Landroidx/recyclerview/widget/RecyclerView;II)Ljava/util/Map;

    move-result-object p1

    const-string p2, "scroll"

    invoke-virtual {p0, p2, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private generateViewType(Lcom/taobao/weex/common/IWXObject;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 1201
    :try_start_0
    instance-of v2, p1, Lcom/taobao/weex/ui/component/list/ListStanceCell;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1203
    :cond_0
    instance-of v2, p1, Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v2, :cond_4

    .line 1204
    check-cast p1, Lcom/taobao/weex/ui/component/WXComponent;

    .line 1205
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    .line 1206
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/dom/WXAttr;->getScope()Ljava/lang/String;

    move-result-object p1

    .line 1208
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1209
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mRefToViewType:Landroidx/collection/ArrayMap;

    if-nez v4, :cond_1

    .line 1210
    new-instance v4, Landroidx/collection/ArrayMap;

    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v4, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mRefToViewType:Landroidx/collection/ArrayMap;

    .line 1212
    :cond_1
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mRefToViewType:Landroidx/collection/ArrayMap;

    invoke-virtual {v4, p1}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1213
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mRefToViewType:Landroidx/collection/ArrayMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, p1, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    :cond_2
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mRefToViewType:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    move-wide v0, v2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1220
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->eTag(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1222
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    const-string v2, "getItemViewType: NO ID, this will crash the whole render system of WXListRecyclerView"

    invoke-static {p1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    long-to-int p1, v0

    return p1
.end method

.method private getListChildLayoutHeight(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1592
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getListChild(I)Lcom/taobao/weex/common/IWXObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1594
    instance-of v0, p1, Lcom/taobao/weex/ui/component/list/ListStanceCell;

    if-eqz v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1596
    :cond_0
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_1

    .line 1597
    check-cast p1, Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz p1, :cond_1

    .line 1599
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getListStanceCell(Ljava/lang/String;)Lcom/taobao/weex/common/IWXObject;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backgroundColor"
        }
    .end annotation

    .line 1579
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->listStanceObject:Lcom/taobao/weex/ui/component/list/ListStanceCell;

    if-nez v0, :cond_0

    .line 1580
    new-instance v0, Lcom/taobao/weex/ui/component/list/ListStanceCell;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/component/list/ListStanceCell;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->listStanceObject:Lcom/taobao/weex/ui/component/list/ListStanceCell;

    .line 1582
    :cond_0
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->listStanceObject:Lcom/taobao/weex/ui/component/list/ListStanceCell;

    return-object p1
.end method

.method private getTriggerType(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    const-string v0, "longpress"

    if-nez p1, :cond_0

    return-object v0

    .line 1146
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    const-string v1, "dragTriggerType"

    invoke-virtual {p1, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1147
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "pan"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 1151
    :goto_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1152
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trigger type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method private relocateAppearanceHelper()V
    .locals 4

    .line 814
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearComponents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 815
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 816
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 817
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/AppearanceHelper;

    .line 818
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/AppearanceHelper;->getAwareChild()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->findDirectListChild(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    .line 819
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 820
    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/component/AppearanceHelper;->setCellPosition(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setAppearanceWatch(Lcom/taobao/weex/ui/component/WXComponent;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "component",
            "event",
            "enable"
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearComponents:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/AppearanceHelper;

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {v0, p2, p3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->setWatchEvent(IZ)V

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    goto :goto_0

    .line 499
    :cond_1
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->findDirectListChild(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p3

    .line 500
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_2

    .line 502
    new-instance v0, Lcom/taobao/weex/ui/component/AppearanceHelper;

    invoke-direct {v0, p1, p3}, Lcom/taobao/weex/ui/component/AppearanceHelper;-><init>(Lcom/taobao/weex/ui/component/WXComponent;I)V

    const/4 p3, 0x1

    .line 503
    invoke-virtual {v0, p2, p3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->setWatchEvent(IZ)V

    .line 504
    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearComponents:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method private shouldReport(II)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "offsetX",
            "offsetY"
        }
    .end annotation

    .line 1447
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mLastReport:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mLastReport:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ne v0, v2, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mLastReport:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 1449
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mLastReport:Landroid/graphics/Point;

    iput p2, p1, Landroid/graphics/Point;->y:I

    return v1

    .line 1453
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mLastReport:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1454
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mLastReport:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1456
    iget v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mOffsetAccuracy:I

    if-ge v0, v3, :cond_2

    if-lt v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 1457
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mLastReport:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 1458
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mLastReport:Landroid/graphics/Point;

    iput p2, p1, Landroid/graphics/Point;->y:I

    return v1
.end method

.method private unBindViewType(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 1181
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->generateViewType(Lcom/taobao/weex/common/IWXObject;)I

    move-result v0

    .line 1183
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewTypes:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    return-void

    .line 1185
    :cond_0
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    return-void

    .line 1189
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addChild(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    const/4 v0, -0x1

    .line 699
    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V

    return-void
.end method

.method public addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V
    .locals 8
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

    .line 716
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVContainer;->addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V

    if-eqz p1, :cond_11

    const/4 v0, -0x1

    if-ge p2, v0, :cond_0

    goto/16 :goto_6

    .line 720
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    const/4 p2, -0x1

    .line 722
    :cond_1
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->bindViewType(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 724
    iget-boolean v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->isThisGroupFinished:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->isRenderFromBottom()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 725
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string v4, "renderReversePosition"

    invoke-virtual {v1, v4}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 731
    :goto_0
    iput-boolean v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->isThisGroupFinished:Z

    if-ne p2, v0, :cond_4

    .line 732
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    goto :goto_1

    :cond_4
    move v4, p2

    .line 733
    :goto_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_10

    .line 736
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 737
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v6

    const-string v7, "insertAnimation"

    invoke-virtual {v6, v7}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "default"

    .line 738
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_6

    .line 743
    move-object v6, v5

    check-cast v6, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v6}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v6

    iget-object v7, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v6, v7}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_3

    .line 745
    :cond_6
    move-object v6, v5

    check-cast v6, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v6}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 748
    :goto_3
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 749
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    const-string v6, "keepScrollPosition"

    invoke-virtual {p1, v6}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 750
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getChildCount()I

    move-result p1

    if-gt p2, p1, :cond_7

    if-le p2, v0, :cond_7

    const/4 v2, 0x1

    :cond_7
    if-nez v2, :cond_8

    if-eqz v1, :cond_8

    const/4 v2, 0x1

    :cond_8
    if-eqz v2, :cond_f

    .line 757
    move-object p1, v5

    check-cast p1, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {p1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_e

    .line 758
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCell:Lcom/taobao/weex/ui/component/WXComponent;

    if-nez v0, :cond_c

    .line 759
    invoke-interface {p1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    .line 760
    invoke-interface {p1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    if-eqz v0, :cond_9

    .line 762
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCell:Lcom/taobao/weex/ui/component/WXComponent;

    .line 764
    :cond_9
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCell:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_c

    .line 765
    invoke-interface {p1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isLayoutFrozen()Z

    move-result v0

    if-nez v0, :cond_a

    .line 766
    invoke-interface {p1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setLayoutFrozen(Z)V

    .line 768
    :cond_a
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCellRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    .line 769
    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 771
    :cond_b
    new-instance v0, Lcom/taobao/weex/ui/component/list/BasicListComponent$5;

    invoke-direct {v0, p0, v5}, Lcom/taobao/weex/ui/component/list/BasicListComponent$5;-><init>(Lcom/taobao/weex/ui/component/list/BasicListComponent;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCellRunnable:Ljava/lang/Runnable;

    .line 794
    :cond_c
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCellRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_e

    .line 795
    invoke-interface {p1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-eqz v1, :cond_d

    goto :goto_4

    :cond_d
    move p2, v0

    .line 798
    :goto_4
    invoke-interface {p1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollToPosition(I)V

    .line 801
    :cond_e
    invoke-interface {p1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getRecyclerViewBaseAdapter()Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    move-result-object p1

    const/16 p2, 0x14

    invoke-virtual {p1, v4, p2}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->notifyItemRangeInserted(II)V

    .line 802
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCellRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_10

    .line 803
    invoke-virtual {v5, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 804
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionCellRunnable:Ljava/lang/Runnable;

    iget-wide v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionLayoutDelay:J

    invoke-virtual {v5, p1, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    .line 807
    :cond_f
    check-cast v5, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v5}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getRecyclerViewBaseAdapter()Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->notifyDataSetChanged()V

    .line 810
    :cond_10
    :goto_5
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->relocateAppearanceHelper()V

    :cond_11
    :goto_6
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

    .line 1355
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->addEvent(Ljava/lang/String;)V

    .line 1356
    invoke-static {p1}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->isScrollEvent(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1357
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1358
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    check-cast p1, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {p1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mHasAddScrollEvent:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1360
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mHasAddScrollEvent:Z

    .line 1361
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    check-cast p1, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {p1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object p1

    .line 1362
    new-instance v0, Lcom/taobao/weex/ui/component/list/BasicListComponent$7;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent$7;-><init>(Lcom/taobao/weex/ui/component/list/BasicListComponent;)V

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    return-void
.end method

.method public addSubView(Landroid/view/View;I)V
    .locals 0
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

    return-void
.end method

.method public bindAppearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 3
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

    .line 511
    invoke-direct {p0, p1, v0, v1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->setAppearanceWatch(Lcom/taobao/weex/ui/component/WXComponent;IZ)V

    .line 512
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    .line 513
    new-instance p1, Lcom/taobao/weex/ui/component/list/BasicListComponent$4;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent$4;-><init>(Lcom/taobao/weex/ui/component/list/BasicListComponent;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    .line 522
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 523
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 524
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnableDelay:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
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

    .line 530
    invoke-direct {p0, p1, v0, v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->setAppearanceWatch(Lcom/taobao/weex/ui/component/WXComponent;IZ)V

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

    .line 396
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->stickyHelper:Lcom/taobao/weex/ui/component/helper/WXStickyHelper;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mStickyMap:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lcom/taobao/weex/ui/component/helper/WXStickyHelper;->bindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/Map;)V

    return-void
.end method

.method public calcContentOffset(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recyclerView"
        }
    .end annotation

    .line 1468
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 1469
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 1470
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    if-ne v0, v1, :cond_0

    return v2

    .line 1475
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1478
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    int-to-float v3, v3

    .line 1483
    invoke-direct {p0, v2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getListChildLayoutHeight(I)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1486
    :cond_2
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_3

    .line 1487
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    .line 1488
    div-int/2addr v3, p1

    :cond_3
    add-int/2addr v3, v1

    return v3

    .line 1493
    :cond_4
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_8

    .line 1494
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v3

    const/4 v4, 0x0

    .line 1495
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object v0

    aget v0, v0, v2

    if-ne v0, v1, :cond_5

    return v2

    .line 1500
    :cond_5
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1503
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    :goto_2
    const/4 v1, 0x0

    :goto_3
    if-ge v2, v0, :cond_7

    int-to-float v1, v1

    .line 1508
    invoke-direct {p0, v2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getListChildLayoutHeight(I)F

    move-result v4

    sub-float/2addr v1, v4

    float-to-int v1, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1511
    :cond_7
    div-int/2addr v1, v3

    add-int/2addr v1, p1

    :cond_8
    return v1
.end method

.method public computeVisiblePointInViewCoordinate(Landroid/graphics/PointF;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointF"
        }
    .end annotation

    .line 878
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    .line 879
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 266
    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 269
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->clearOnScrollListeners()V

    .line 271
    :cond_1
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->destroy()V

    .line 272
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mStickyMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 273
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewTypes:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    .line 275
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 276
    :cond_3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mRefToViewType:Landroidx/collection/ArrayMap;

    if-eqz v0, :cond_4

    .line 277
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    :cond_4
    return-void
.end method

.method abstract generateListView(Landroid/content/Context;I)Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "orientation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)TT;"
        }
    .end annotation
.end method

.method public getChildCount()I
    .locals 3

    const/4 v0, 0x0

    .line 1547
    invoke-super {p0, v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1549
    instance-of v0, v0, Lcom/taobao/weex/ui/component/WXRefresh;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mColumnCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1550
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v0

    iget v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mColumnCount:I

    sub-int/2addr v2, v1

    add-int/2addr v0, v2

    return v0

    .line 1552
    :cond_0
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v0

    return v0
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
            "hostView",
            "width",
            "height",
            "left",
            "right",
            "top",
            "bottom"
        }
    .end annotation

    .line 283
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 284
    instance-of p1, p1, Lcom/taobao/weex/ui/component/WXBaseRefresh;

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 285
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 287
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 289
    :cond_1
    iput p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 290
    iput p4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p5

    move v4, p6

    .line 292
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->setMarginsSupportRTL(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    :goto_0
    return-object p2
.end method

.method protected getChildrenLayoutTopOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1234
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->isThisGroupFinished:Z

    if-eqz v0, :cond_0

    .line 1235
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getChildCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemId(I)J
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 1252
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getListChild(I)Lcom/taobao/weex/common/IWXObject;

    move-result-object p1

    .line 1253
    instance-of v2, p1, Lcom/taobao/weex/ui/component/list/ListStanceCell;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1255
    :cond_0
    instance-of v2, p1, Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v2, :cond_1

    .line 1256
    check-cast p1, Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1259
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1100
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getListChild(I)Lcom/taobao/weex/common/IWXObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->generateViewType(Lcom/taobao/weex/common/IWXObject;)I

    move-result p1

    return p1
.end method

.method public getListChild(I)Lcom/taobao/weex/common/IWXObject;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1561
    invoke-super {p0, v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-eqz v0, :cond_2

    .line 1565
    instance-of v1, v0, Lcom/taobao/weex/ui/component/WXRefresh;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mColumnCount:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    sub-int v3, p1, v1

    if-gez v3, :cond_1

    .line 1567
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/dom/WXStyle;->getBackgroundColor()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getListStanceCell(Ljava/lang/String;)Lcom/taobao/weex/common/IWXObject;

    move-result-object p1

    return-object p1

    :cond_1
    sub-int/2addr v1, v2

    sub-int/2addr p1, v1

    .line 1570
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    return-object p1

    .line 1573
    :cond_2
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    return-object p1
.end method

.method public getOrientation()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getScrollEvent(Landroidx/recyclerview/widget/RecyclerView;II)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "offsetX",
            "offsetY"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "II)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1422
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1423
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->calcContentOffset(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p3

    neg-int p3, p3

    .line 1425
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v2

    add-int/2addr v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1427
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    int-to-float v4, v4

    .line 1428
    invoke-direct {p0, v3}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getListChildLayoutHeight(I)F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1431
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    const/4 v5, 0x3

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 1432
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 1433
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v5}, Ljava/util/HashMap;-><init>(I)V

    int-to-float v0, v0

    .line 1435
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v5

    invoke-static {v0, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v5, "width"

    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float v0, v4

    .line 1436
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v4

    invoke-static {v0, v4}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v4, "height"

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float p2, p2

    .line 1438
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v0

    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result p2

    neg-float p2, p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string/jumbo v0, "x"

    invoke-interface {v7, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float p2, p3

    .line 1439
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p3

    invoke-static {p2, p3}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result p2

    neg-float p2, p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string/jumbo p3, "y"

    invoke-interface {v7, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "contentSize"

    .line 1440
    invoke-interface {v3, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "contentOffset"

    .line 1441
    invoke-interface {v3, p2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    if-ne p1, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "isDragging"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3
.end method

.method public getScrollStartEndHelper()Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;
    .locals 1

    .line 1520
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    if-nez v0, :cond_0

    .line 1521
    new-instance v0, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    .line 1523
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mScrollStartEndHelper:Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    return-object v0
.end method

.method public getScrollX()I
    .locals 1

    .line 685
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 686
    :cond_0
    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getScrollX()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getScrollY()I
    .locals 1

    .line 679
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 680
    :cond_0
    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getScrollY()I

    move-result v0

    :goto_0
    return v0
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

    .line 94
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .line 301
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getOrientation()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->generateListView(Landroid/content/Context;I)Landroid/view/ViewGroup;

    move-result-object p1

    const-string v0, "transform"

    .line 303
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getAttrByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    move-object v1, p1

    check-cast v1, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getOrientation()I

    move-result v2

    invoke-static {v2, v0}, Lcom/taobao/weex/ui/component/list/RecyclerTransform;->parseTransforms(ILjava/lang/String;)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "keepPositionLayoutDelay"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-wide v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionLayoutDelay:J

    long-to-int v2, v1

    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXUtils;->getNumberInt(Ljava/lang/Object;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->keepPositionLayoutDelay:J

    .line 310
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "appearActionDelay"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 311
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-wide v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnableDelay:J

    long-to-int v2, v1

    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXUtils;->getNumberInt(Ljava/lang/Object;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnableDelay:J

    .line 314
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 316
    new-instance v1, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;-><init>(Lcom/taobao/weex/ui/view/listview/adapter/IRecyclerAdapterListener;)V

    const/4 v2, 0x1

    .line 317
    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->setHasStableIds(Z)V

    .line 318
    invoke-interface {v0, v1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->setRecyclerViewBaseAdapter(Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;)V

    .line 321
    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewOnScrollListener:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 322
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string v2, "hasFixedSize"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 323
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 324
    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setHasFixedSize(Z)V

    .line 327
    :cond_3
    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/ui/component/list/BasicListComponent$2;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent$2;-><init>(Lcom/taobao/weex/ui/component/list/BasicListComponent;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 376
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/ui/component/list/BasicListComponent$3;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent$3;-><init>(Lcom/taobao/weex/ui/component/list/BasicListComponent;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-object p1
.end method

.method protected isRenderFromBottom()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isScrollable()Z
    .locals 1

    .line 488
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->isScrollable:Z

    return v0
.end method

.method protected markComponentUsable()V
    .locals 3

    .line 1004
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/WXComponent;

    const/4 v2, 0x0

    .line 1005
    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/component/WXComponent;->setUsing(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected measure(II)Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;
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

    .line 255
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVContainer;->measure(II)Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;

    move-result-object p1

    return-object p1
.end method

.method public notifyAppearStateChange(IIII)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "firstVisible",
            "lastVisible",
            "directionX",
            "directionY"
        }
    .end annotation

    .line 1292
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 1293
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1294
    iput-object p2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearChangeRunnable:Ljava/lang/Runnable;

    .line 1297
    :cond_0
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mAppearComponents:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    if-lez p4, :cond_1

    const-string p2, "up"

    goto :goto_0

    :cond_1
    if-gez p4, :cond_2

    const-string p2, "down"

    .line 1300
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getOrientation()I

    move-result p4

    if-nez p4, :cond_4

    if-eqz p3, :cond_4

    if-lez p3, :cond_3

    const-string p2, "left"

    goto :goto_1

    :cond_3
    const-string p2, "right"

    .line 1304
    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b

    .line 1305
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/taobao/weex/ui/component/AppearanceHelper;

    .line 1306
    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->getAwareChild()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p4

    .line 1308
    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->isWatch()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    .line 1313
    :cond_5
    invoke-virtual {p4}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_1

    .line 1318
    :cond_6
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_7

    .line 1319
    invoke-virtual {p3, v1}, Lcom/taobao/weex/ui/component/AppearanceHelper;->isViewVisible(Z)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    .line 1321
    :goto_2
    invoke-virtual {p3, v0}, Lcom/taobao/weex/ui/component/AppearanceHelper;->setAppearStatus(Z)I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    .line 1325
    :cond_8
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v2

    const-string v3, "appear"

    if-eqz v2, :cond_9

    .line 1326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/AppearanceHelper;->getCellPositionINScollable()I

    move-result p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " result "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-ne v0, v1, :cond_a

    goto :goto_3

    :cond_a
    const-string v3, "disappear"

    .line 1328
    :goto_3
    invoke-virtual {p4, v3, p2}, Lcom/taobao/weex/ui/component/WXComponent;->notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    return-void
.end method

.method public onBeforeScroll(II)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy"
        }
    .end annotation

    .line 590
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 591
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mStickyMap:Ljava/util/Map;

    if-eqz v0, :cond_12

    if-nez p1, :cond_0

    goto/16 :goto_9

    .line 594
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    return-void

    .line 598
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    .line 602
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 603
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 604
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v2, :cond_2

    .line 606
    instance-of v3, v2, Lcom/taobao/weex/ui/component/list/WXCell;

    if-eqz v3, :cond_2

    .line 608
    move-object v3, v2

    check-cast v3, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 609
    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_3

    return-void

    :cond_3
    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 614
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v4, v4, [I

    .line 616
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getParentScroller()Lcom/taobao/weex/ui/component/Scrollable;

    move-result-object v2

    invoke-interface {v2}, Lcom/taobao/weex/ui/component/Scrollable;->getView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    .line 617
    aget v5, v5, v2

    aget v4, v4, v2

    sub-int/2addr v5, v4

    .line 623
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    check-cast v4, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v4}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    .line 624
    instance-of v6, v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v7, 0x0

    if-nez v6, :cond_9

    instance-of v6, v4, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v6, :cond_4

    goto :goto_4

    .line 639
    :cond_4
    instance-of v6, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v6, :cond_8

    const/4 v6, 0x3

    new-array v6, v6, [I

    .line 641
    check-cast v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v4, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object v8

    aget v8, v8, v7

    .line 642
    invoke-virtual {v4, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    move-result-object v4

    aget v4, v4, v7

    .line 643
    iget-object v6, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-le v6, v8, :cond_6

    .line 645
    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/list/WXCell;->getStickyOffset()I

    move-result v9

    if-lez v9, :cond_5

    if-ge v8, v6, :cond_5

    if-gt v6, v4, :cond_5

    .line 646
    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/list/WXCell;->getStickyOffset()I

    move-result v4

    if-gt v5, v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    const/4 v6, 0x1

    goto :goto_5

    :cond_6
    :goto_1
    if-le v6, v1, :cond_7

    move v1, v6

    :cond_7
    :goto_2
    const/4 v4, 0x1

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    :goto_3
    const/4 v6, 0x0

    goto :goto_5

    .line 625
    :cond_9
    :goto_4
    check-cast v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v6

    .line 626
    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v4

    .line 627
    iget-object v8, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 628
    invoke-virtual {v3, v8}, Lcom/taobao/weex/ui/component/list/WXCell;->setScrollPositon(I)V

    if-le v8, v6, :cond_a

    .line 630
    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/list/WXCell;->getStickyOffset()I

    move-result v9

    if-lez v9, :cond_5

    if-ge v6, v8, :cond_5

    if-gt v8, v4, :cond_5

    .line 631
    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/list/WXCell;->getStickyOffset()I

    move-result v4

    if-gt v5, v4, :cond_5

    :cond_a
    if-le v8, v1, :cond_7

    move v1, v8

    goto :goto_2

    :goto_5
    if-eqz v4, :cond_b

    .line 657
    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/list/WXCell;->getLocationFromStart()I

    move-result v4

    if-ltz v4, :cond_b

    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/list/WXCell;->getStickyOffset()I

    move-result v4

    if-gt v5, v4, :cond_b

    if-ltz p2, :cond_b

    const/4 v4, 0x1

    goto :goto_6

    :cond_b
    const/4 v4, 0x0

    .line 658
    :goto_6
    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/list/WXCell;->getLocationFromStart()I

    move-result v8

    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/list/WXCell;->getStickyOffset()I

    move-result v9

    if-gt v8, v9, :cond_c

    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/list/WXCell;->getStickyOffset()I

    move-result v8

    if-le v5, v8, :cond_c

    if-gtz p2, :cond_c

    goto :goto_7

    :cond_c
    const/4 v2, 0x0

    :goto_7
    if-eqz v4, :cond_d

    .line 660
    move-object v2, p1

    check-cast v2, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v2, v3}, Lcom/taobao/weex/ui/component/list/ListComponentView;->notifyStickyShow(Lcom/taobao/weex/ui/component/list/WXCell;)V

    goto :goto_8

    :cond_d
    if-nez v2, :cond_e

    if-eqz v6, :cond_f

    .line 662
    :cond_e
    move-object v2, p1

    check-cast v2, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v2, v3}, Lcom/taobao/weex/ui/component/list/ListComponentView;->notifyStickyRemove(Lcom/taobao/weex/ui/component/list/WXCell;)V

    .line 664
    :cond_f
    :goto_8
    invoke-virtual {v3, v5}, Lcom/taobao/weex/ui/component/list/WXCell;->setLocationFromStart(I)V

    goto/16 :goto_0

    :cond_10
    if-ltz v1, :cond_11

    .line 669
    check-cast p1, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {p1, v1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->updateStickyView(I)V

    goto :goto_9

    .line 671
    :cond_11
    instance-of p2, p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    if-eqz p2, :cond_12

    .line 672
    check-cast p1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getStickyHeaderHelper()Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->clearStickyHeaders()V

    :cond_12
    :goto_9
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 94
    check-cast p1, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->onBindViewHolder(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 916
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->setComponentUsing(Z)V

    .line 917
    invoke-virtual {p0, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getListChild(I)Lcom/taobao/weex/common/IWXObject;

    move-result-object v1

    .line 918
    instance-of v2, v1, Lcom/taobao/weex/ui/component/list/ListStanceCell;

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 919
    check-cast v1, Lcom/taobao/weex/ui/component/list/ListStanceCell;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/list/ListStanceCell;->getBackgroundColor()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result p2

    .line 920
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 921
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 922
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    return-void

    .line 924
    :cond_1
    instance-of v2, v1, Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v2, :cond_e

    .line 925
    check-cast v1, Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v1, :cond_a

    .line 926
    instance-of v2, v1, Lcom/taobao/weex/ui/component/WXRefresh;

    if-nez v2, :cond_a

    instance-of v2, v1, Lcom/taobao/weex/ui/component/WXLoading;

    if-nez v2, :cond_a

    .line 929
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_1

    .line 952
    :cond_2
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    instance-of v2, v2, Lcom/taobao/weex/ui/component/list/WXCell;

    if-eqz v2, :cond_e

    .line 953
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 954
    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->bindData(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 955
    invoke-virtual {v1, v0}, Lcom/taobao/weex/ui/component/WXComponent;->onRenderFinish(I)V

    .line 957
    :cond_3
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Lcom/taobao/weex/ui/component/list/DragHelper;->isDraggable()Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    .line 960
    :cond_4
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mTriggerType:Ljava/lang/String;

    const-string v2, "longpress"

    if-nez v1, :cond_5

    move-object v1, v2

    :cond_5
    iput-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mTriggerType:Ljava/lang/String;

    .line 962
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 964
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/list/WXCell;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v3

    const-string v5, "dragExcluded"

    .line 965
    invoke-virtual {v3, v5}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 967
    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    invoke-interface {v5, p1, v3}, Lcom/taobao/weex/ui/component/list/DragHelper;->setDragExcluded(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 970
    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mTriggerType:Ljava/lang/String;

    const-string v6, "pan"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 971
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    invoke-interface {v0, v4}, Lcom/taobao/weex/ui/component/list/DragHelper;->setLongPressDragEnabled(Z)V

    const-string v0, "dragAnchor"

    .line 973
    invoke-direct {p0, v1, v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->findComponentByAnchorName(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 975
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    if-nez v3, :cond_6

    .line 976
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p2

    .line 977
    new-instance v0, Lcom/taobao/weex/ui/component/list/BasicListComponent$6;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent$6;-><init>(Lcom/taobao/weex/ui/component/list/BasicListComponent;Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_3

    .line 987
    :cond_6
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_e

    if-nez v3, :cond_7

    .line 989
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    const-string p2, "[error] onBindViewHolder: the anchor component or view is not found"

    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 991
    :cond_7
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder: position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is drag excluded"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 996
    :cond_8
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mTriggerType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 997
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    invoke-interface {p1, v0}, Lcom/taobao/weex/ui/component/list/DragHelper;->setLongPressDragEnabled(Z)V

    goto :goto_3

    :cond_9
    :goto_0
    return-void

    .line 931
    :cond_a
    :goto_1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 932
    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bind WXRefresh & WXLoading "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    :cond_b
    instance-of p2, v1, Lcom/taobao/weex/ui/component/WXBaseRefresh;

    if-eqz p2, :cond_e

    .line 935
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 936
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p2

    const-string v0, "holderBackground"

    invoke-virtual {p2, v0}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_c

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p2

    const-string v2, "backgroundColor"

    invoke-virtual {p2, v2}, Lcom/taobao/weex/dom/WXStyle;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 937
    :cond_c
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 940
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result p2

    goto :goto_2

    .line 942
    :cond_d
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/dom/WXStyle;->getBackgroundColor()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result p2

    .line 944
    :goto_2
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 945
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 946
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    :cond_e
    :goto_3
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    int-to-long v0, p2

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 1020
    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->createVHForRefreshComponent(I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    move-result-object p1

    return-object p1

    .line 1022
    :cond_0
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    if-eqz p1, :cond_9

    .line 1023
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewTypes:Landroid/util/SparseArray;

    if-nez p1, :cond_1

    .line 1024
    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->createVHForFakeComponent(I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    move-result-object p1

    return-object p1

    .line 1025
    :cond_1
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 1026
    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->checkRecycledViewPool(I)V

    if-nez p1, :cond_2

    .line 1028
    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->createVHForFakeComponent(I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1030
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 1031
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v2, :cond_8

    .line 1033
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->isUsing()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 1036
    :cond_3
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1037
    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->createVHForFakeComponent(I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    move-result-object p1

    return-object p1

    .line 1039
    :cond_4
    instance-of p1, v2, Lcom/taobao/weex/ui/component/list/WXCell;

    if-eqz p1, :cond_6

    .line 1040
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1041
    new-instance p1, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    invoke-direct {p1, v2, p2}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;-><init>(Lcom/taobao/weex/ui/component/WXComponent;I)V

    return-object p1

    .line 1043
    :cond_5
    invoke-virtual {v2, v0}, Lcom/taobao/weex/ui/component/WXComponent;->lazy(Z)V

    .line 1044
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->createView()V

    .line 1045
    invoke-virtual {v2, v2}, Lcom/taobao/weex/ui/component/WXComponent;->applyLayoutAndEvent(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V

    .line 1046
    new-instance p1, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    const/4 v0, 0x1

    invoke-direct {p1, v2, p2, v0}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;-><init>(Lcom/taobao/weex/ui/component/WXComponent;IZ)V

    return-object p1

    .line 1048
    :cond_6
    instance-of p1, v2, Lcom/taobao/weex/ui/component/WXBaseRefresh;

    if-eqz p1, :cond_7

    .line 1049
    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->createVHForRefreshComponent(I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    move-result-object p1

    return-object p1

    .line 1051
    :cond_7
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    const-string v0, "List cannot include element except cell\u3001header\u3001fixed\u3001refresh and loading"

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->createVHForFakeComponent(I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    move-result-object p1

    return-object p1

    :cond_8
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1057
    :cond_9
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1058
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find request viewType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    :cond_a
    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->createVHForFakeComponent(I)Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "holder"
        }
    .end annotation

    .line 94
    check-cast p1, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->onFailedToRecycleView(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;)Z

    move-result p1

    return p1
.end method

.method public onFailedToRecycleView(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 1242
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to recycle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected bridge synthetic onHostViewInitialized(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "host"
        }
    .end annotation

    .line 94
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->onHostViewInitialized(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected onHostViewInitialized(Landroid/view/ViewGroup;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "host"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 214
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->onHostViewInitialized(Landroid/view/View;)V

    .line 216
    check-cast p1, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {p1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 217
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "prefetchGapDisable"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setItemPrefetchEnabled(Z)V

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 228
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    const-string v0, "children is null"

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 232
    :cond_2
    new-instance v0, Lcom/taobao/weex/ui/component/list/DefaultDragHelper;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    new-instance v2, Lcom/taobao/weex/ui/component/list/BasicListComponent$1;

    invoke-direct {v2, p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent$1;-><init>(Lcom/taobao/weex/ui/component/list/BasicListComponent;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/taobao/weex/ui/component/list/DefaultDragHelper;-><init>(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;Lcom/taobao/weex/ui/component/list/EventTrigger;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    .line 239
    invoke-direct {p0, p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getTriggerType(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mTriggerType:Ljava/lang/String;

    return-void

    .line 218
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    const-string v0, "RecyclerView is not found or Adapter is not bound"

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLoadMore(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offScreenY"
        }
    .end annotation

    const-string v0, "loadmore"

    .line 1268
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/dom/WXAttr;->getLoadMoreOffset()Ljava/lang/String;

    move-result-object v1

    .line 1270
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "0"

    .line 1275
    :cond_0
    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->getInt(Ljava/lang/Object;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v1

    int-to-float p1, p1

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_2

    .line 1277
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1278
    iget p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mListCellCount:I

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne p1, v1, :cond_1

    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mForceLoadmoreNextTime:Z

    if-eqz p1, :cond_2

    .line 1280
    :cond_1
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->fireEvent(Ljava/lang/String;)V

    .line 1281
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mListCellCount:I

    const/4 p1, 0x0

    .line 1282
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mForceLoadmoreNextTime:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onLoadMore :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "holder"
        }
    .end annotation

    .line 94
    check-cast p1, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->onViewRecycled(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 890
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 892
    invoke-virtual {p1, v2}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->setComponentUsing(Z)V

    if-eqz p1, :cond_0

    .line 894
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->canRecycled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 895
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 896
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->isUsing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 897
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->recycled()V

    goto :goto_0

    .line 900
    :cond_0
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    const-string v2, "this holder can not be allowed to  recycled"

    invoke-static {p1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    :goto_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 903
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recycle holder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "  Thread:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V
    .locals 4
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

    .line 845
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-eqz p2, :cond_0

    .line 847
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->detachViewAndClearPreInfo()Landroid/view/View;

    .line 849
    :cond_0
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->unBindViewType(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 851
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    return-void

    .line 857
    :cond_1
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    const-string v3, "deleteAnimation"

    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "default"

    .line 858
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 862
    move-object v2, v1

    check-cast v2, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v2}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v2, v3}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    .line 864
    :cond_2
    move-object v2, v1

    check-cast v2, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v2}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 867
    :goto_0
    check-cast v1, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getRecyclerViewBaseAdapter()Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;->notifyItemRemoved(I)V

    .line 868
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 869
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeChild child at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVContainer;->remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    return-void
.end method

.method public resetLoadmore()V
    .locals 1
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    const/4 v0, 0x1

    .line 1349
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mForceLoadmoreNextTime:Z

    const/4 v0, 0x0

    .line 1350
    iput v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mListCellCount:I

    return-void
.end method

.method public scrollTo(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/Map;)V
    .locals 4
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

    .line 549
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

    .line 550
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v2, :cond_1

    .line 553
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

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

    .line 555
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

    :cond_1
    :goto_1
    float-to-int p2, v1

    .line 562
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz p1, :cond_4

    .line 570
    instance-of v3, p1, Lcom/taobao/weex/ui/component/list/WXCell;

    if-eqz v3, :cond_3

    .line 571
    move-object v2, p1

    check-cast v2, Lcom/taobao/weex/ui/component/list/WXCell;

    goto :goto_3

    .line 574
    :cond_3
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object p1

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v2, :cond_6

    .line 578
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_5

    return-void

    .line 583
    :cond_5
    check-cast v1, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v1

    .line 584
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getOrientation()I

    move-result v2

    invoke-virtual {v1, v0, p1, p2, v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollTo(ZIII)V

    :cond_6
    return-void
.end method

.method public scrollTo(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 4
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

    .line 1618
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v0, "scrollTop"

    .line 1619
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1620
    invoke-static {p1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v0

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p1

    .line 1621
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 1625
    :cond_0
    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    .line 1626
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    float-to-int p1, p1

    .line 1627
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v3, p1, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollTo(III)V

    goto :goto_0

    :cond_1
    float-to-int p1, p1

    .line 1629
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getOrientation()I

    move-result v1

    invoke-virtual {v0, p1, v3, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollTo(III)V

    :goto_0
    if-eqz p2, :cond_2

    .line 1652
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "type"

    const-string v1, "success"

    .line 1653
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1654
    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public setBounce(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "bounce"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isBounce"
        }
    .end annotation

    .line 1607
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    .line 1608
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1610
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setOverScrollMode(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 1612
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setOverScrollMode(I)V

    :goto_0
    return-void
.end method

.method public setDraggable(Z)V
    .locals 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "draggable"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isDraggable"
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mDragHelper:Lcom/taobao/weex/ui/component/list/DragHelper;

    if-eqz v0, :cond_0

    .line 467
    invoke-interface {v0, p1}, Lcom/taobao/weex/ui/component/list/DragHelper;->setDraggable(Z)V

    .line 469
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set draggable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setIsLayoutRTL(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isRTL"
        }
    .end annotation

    .line 1682
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->setIsLayoutRTL(Z)V

    .line 1683
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mViewOnScrollListener:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->setLayoutRTL(Z)V

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

    .line 205
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->isLayoutRTL()Z

    move-result v0

    .line 207
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setLayoutDirection(Landroid/view/View;I)V

    .line 209
    :cond_0
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->setLayout(Lcom/taobao/weex/ui/component/WXComponent;)V

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

    .line 183
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 184
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 185
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 186
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_0

    .line 188
    :cond_0
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_2

    .line 189
    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 190
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x35

    .line 191
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 192
    invoke-virtual {p1, p4, p3, p2, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x33

    .line 194
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 195
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 198
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

    .line 460
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v0

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p1

    float-to-int p1, p1

    .line 461
    iput p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mOffsetAccuracy:I

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

    .line 425
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "scrollable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "offsetAccuracy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "loadmoreoffset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "showScrollbar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "draggable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 446
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVContainer;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 429
    :pswitch_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 430
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->setScrollable(Z)V

    return v2

    :pswitch_1
    const/16 p1, 0xa

    .line 433
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 434
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->setOffsetAccuracy(I)V

    :pswitch_2
    return v2

    :pswitch_3
    const/4 p1, 0x0

    .line 441
    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 443
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->setShowScrollbar(Z)V

    :cond_5
    return v2

    .line 437
    :pswitch_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 438
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->setDraggable(Z)V

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x12260273 -> :sswitch_4
        -0xd52a857 -> :sswitch_3
        -0x6b59672 -> :sswitch_2
        -0x55c154 -> :sswitch_1
        0x3f94da7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setScrollLeft(Ljava/lang/String;)V
    .locals 3
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

    .line 1671
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 1675
    :cond_0
    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    .line 1676
    invoke-static {p1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-static {p1, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p1

    float-to-int p1, p1

    const/4 v1, 0x0

    .line 1677
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getOrientation()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollTo(III)V

    return-void
.end method

.method public setScrollTop(Ljava/lang/String;)V
    .locals 3
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

    .line 1660
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 1664
    :cond_0
    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    .line 1665
    invoke-static {p1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-static {p1, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p1

    const/4 v1, 0x0

    float-to-int p1, p1

    .line 1666
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getOrientation()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->scrollTo(III)V

    return-void
.end method

.method public setScrollable(Z)V
    .locals 1
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

    .line 451
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->isScrollable:Z

    .line 452
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setScrollable(Z)V

    :cond_0
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

    .line 476
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 479
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 480
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0

    .line 482
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setHorizontalScrollBarEnabled(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setSpecialEffects(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 1528
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string v0, "id"

    .line 1529
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1530
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1531
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v2, 0x0

    .line 1532
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isNestParent"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "instanceId"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "listParentId"

    .line 1534
    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1535
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setNestInfo(Lcom/alibaba/fastjson/JSONObject;)V

    const-string v0, "headerHeight"

    .line 1536
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v0

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p1

    .line 1537
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->callBackNestParent(Ljava/lang/String;Ljava/lang/String;F)V

    goto :goto_0

    .line 1539
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    check-cast p1, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {p1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setNestInfo(Lcom/alibaba/fastjson/JSONObject;)V

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

    .line 535
    invoke-direct {p0, p1, v0, v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->setAppearanceWatch(Lcom/taobao/weex/ui/component/WXComponent;IZ)V

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

    .line 540
    invoke-direct {p0, p1, v0, v1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->setAppearanceWatch(Lcom/taobao/weex/ui/component/WXComponent;IZ)V

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

    .line 401
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->stickyHelper:Lcom/taobao/weex/ui/component/helper/WXStickyHelper;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent;->mStickyMap:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lcom/taobao/weex/ui/component/helper/WXStickyHelper;->unbindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/Map;)V

    .line 402
    const-class v0, Lcom/taobao/weex/ui/component/WXHeader;

    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->findTypeParent(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/WXHeader;

    if-eqz p1, :cond_0

    .line 403
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Lcom/taobao/weex/ui/component/list/ListComponentView;

    invoke-interface {v0, p1}, Lcom/taobao/weex/ui/component/list/ListComponentView;->notifyStickyRemove(Lcom/taobao/weex/ui/component/list/WXCell;)V

    :cond_0
    return-void
.end method
