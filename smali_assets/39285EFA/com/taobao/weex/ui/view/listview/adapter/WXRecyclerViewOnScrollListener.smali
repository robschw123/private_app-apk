.class public Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "WXRecyclerViewOnScrollListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;
    }
.end annotation


# instance fields
.field private isLayoutRTL:Z

.field protected layoutManagerType:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

.field private listener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentScrollState:I

.field private mDy:I

.field private mFirstPositions:[I

.field private mFirstVisibleItemPosition:I

.field private mLastPositions:[I

.field private mLastVisibleItemPosition:I


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mCurrentScrollState:I

    .line 67
    iput v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mDy:I

    .line 75
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->isLayoutRTL:Z

    .line 77
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->listener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private findMax([I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastPositions"
        }
    .end annotation

    const/4 v0, 0x0

    .line 204
    aget v1, p1, v0

    .line 205
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, p1, v0

    if-le v3, v1, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private findMin([I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "firstPositions"
        }
    .end annotation

    const/4 v0, 0x0

    .line 214
    aget v1, p1, v0

    .line 215
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, p1, v0

    if-ge v3, v1, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "newState"
        }
    .end annotation

    .line 82
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 83
    iput p2, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mCurrentScrollState:I

    .line 84
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    .line 85
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 86
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    if-eqz v0, :cond_6

    .line 88
    iget v2, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastVisibleItemPosition:I

    sub-int v2, v1, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v3

    mul-int v2, v2, v3

    div-int/2addr v2, v0

    if-lez v0, :cond_6

    .line 89
    iget v3, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mCurrentScrollState:I

    if-nez v3, :cond_6

    .line 90
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isHorizontalScrollBarEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 93
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    if-eqz v0, :cond_6

    add-int/lit8 v1, v1, -0x1

    if-ne v3, v1, :cond_6

    .line 95
    iget-boolean v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->isLayoutRTL:Z

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result p1

    const/16 p2, -0x32

    if-lt p1, p2, :cond_6

    .line 98
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->listener:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 99
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;

    invoke-interface {p1, v2}, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;->onLoadMore(I)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result p2

    .line 104
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p1

    if-gt p2, p1, :cond_6

    .line 105
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->listener:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 106
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;

    invoke-interface {p1, v2}, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;->onLoadMore(I)V

    goto :goto_0

    .line 113
    :cond_1
    iget v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastVisibleItemPosition:I

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 115
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p2

    .line 116
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result p1

    add-int/lit8 v0, p2, 0x32

    if-ge v0, p1, :cond_2

    return-void

    :cond_2
    if-le p2, p1, :cond_4

    return-void

    .line 125
    :cond_3
    iget p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mDy:I

    if-eqz p1, :cond_6

    if-gez p1, :cond_4

    goto :goto_0

    .line 129
    :cond_4
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->listener:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 130
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;

    invoke-interface {p1, v2}, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;->onLoadMore(I)V

    :cond_5
    const/4 p1, 0x0

    .line 132
    iput p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mDy:I

    nop

    :cond_6
    :goto_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "dx",
            "dy"
        }
    .end annotation

    .line 140
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 141
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 142
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->listener:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 145
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;

    if-eqz v0, :cond_8

    .line 149
    invoke-interface {v0, p2, p3}, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;->onBeforeScroll(II)V

    .line 150
    iput p3, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mDy:I

    .line 151
    instance-of v1, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_1

    .line 152
    sget-object v1, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;->LINEAR:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    iput-object v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->layoutManagerType:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    .line 153
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 154
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    iput v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastVisibleItemPosition:I

    .line 155
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 156
    iget v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastVisibleItemPosition:I

    invoke-interface {v0, p1, v1, p2, p3}, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;->notifyAppearStateChange(IIII)V

    goto/16 :goto_0

    .line 160
    :cond_1
    instance-of v1, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_2

    .line 161
    sget-object v1, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;->GRID:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    iput-object v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->layoutManagerType:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    .line 162
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 163
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    iput v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastVisibleItemPosition:I

    .line 164
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    iget v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastVisibleItemPosition:I

    invoke-interface {v0, p1, v1, p2, p3}, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;->notifyAppearStateChange(IIII)V

    goto :goto_0

    .line 169
    :cond_2
    instance-of v1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_7

    .line 170
    sget-object v1, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;->STAGGERED_GRID:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    iput-object v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->layoutManagerType:Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener$LAYOUT_MANAGER_TYPE;

    .line 171
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 172
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v1

    .line 173
    iget-object v2, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastPositions:[I

    if-eqz v2, :cond_3

    array-length v2, v2

    if-eq v1, v2, :cond_4

    .line 174
    :cond_3
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastPositions:[I

    .line 176
    :cond_4
    iget-object v2, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mFirstPositions:[I

    if-eqz v2, :cond_5

    array-length v2, v2

    if-eq v1, v2, :cond_6

    .line 177
    :cond_5
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mFirstPositions:[I

    .line 181
    :cond_6
    :try_start_0
    iget-object v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mFirstPositions:[I

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    .line 182
    iget-object v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mFirstPositions:[I

    invoke-direct {p0, v1}, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->findMin([I)I

    move-result v1

    iput v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mFirstVisibleItemPosition:I

    .line 183
    iget-object v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastPositions:[I

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 184
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastPositions:[I

    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->findMax([I)I

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mLastVisibleItemPosition:I

    .line 185
    iget v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->mFirstVisibleItemPosition:I

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;->notifyAppearStateChange(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 192
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unsupported LayoutManager used. Valid ones are LinearLayoutManager, GridLayoutManager and StaggeredGridLayoutManager"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_0
    return-void
.end method

.method public setLayoutRTL(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutRTL"
        }
    .end annotation

    .line 72
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/WXRecyclerViewOnScrollListener;->isLayoutRTL:Z

    return-void
.end method
