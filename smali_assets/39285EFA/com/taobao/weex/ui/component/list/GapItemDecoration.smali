.class public Lcom/taobao/weex/ui/component/list/GapItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "GapItemDecoration.java"


# instance fields
.field private listComponent:Lcom/taobao/weex/ui/component/list/WXListComponent;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/component/list/WXListComponent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listComponent"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/GapItemDecoration;->listComponent:Lcom/taobao/weex/ui/component/list/WXListComponent;

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outRect",
            "view",
            "parent",
            "state"
        }
    .end annotation

    .line 44
    iget-object p4, p0, Lcom/taobao/weex/ui/component/list/GapItemDecoration;->listComponent:Lcom/taobao/weex/ui/component/list/WXListComponent;

    invoke-virtual {p4}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getSpanOffsets()[Ljava/lang/Float;

    move-result-object p4

    if-nez p4, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p3

    if-gez p3, :cond_1

    return-void

    .line 52
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v0, :cond_7

    .line 53
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 54
    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isFullSpan()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/GapItemDecoration;->listComponent:Lcom/taobao/weex/ui/component/list/WXListComponent;

    invoke-virtual {v0, p3}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getListChild(I)Lcom/taobao/weex/common/IWXObject;

    move-result-object p3

    .line 58
    instance-of v0, p3, Lcom/taobao/weex/ui/component/list/WXCell;

    if-eqz v0, :cond_7

    .line 59
    check-cast p3, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 60
    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/list/WXCell;->isFixed()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/list/WXCell;->isSticky()Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    .line 64
    :cond_3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result p3

    array-length v0, p4

    if-lt p3, v0, :cond_4

    return-void

    .line 68
    :cond_4
    iget-object p3, p0, Lcom/taobao/weex/ui/component/list/GapItemDecoration;->listComponent:Lcom/taobao/weex/ui/component/list/WXListComponent;

    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/list/WXListComponent;->isLayoutRTL()Z

    move-result p3

    if-eqz p3, :cond_5

    array-length p3, p4

    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result p2

    sub-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result p3

    .line 69
    :goto_0
    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/GapItemDecoration;->listComponent:Lcom/taobao/weex/ui/component/list/WXListComponent;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getSpanOffsets()[Ljava/lang/Float;

    move-result-object p2

    aget-object p2, p2, p3

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 70
    iget-object p3, p0, Lcom/taobao/weex/ui/component/list/GapItemDecoration;->listComponent:Lcom/taobao/weex/ui/component/list/WXListComponent;

    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getViewPortWidthForFloat()F

    move-result p3

    invoke-static {p2, p3}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 71
    iget-object p3, p0, Lcom/taobao/weex/ui/component/list/GapItemDecoration;->listComponent:Lcom/taobao/weex/ui/component/list/WXListComponent;

    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/list/WXListComponent;->isLayoutRTL()Z

    move-result p3

    if-eqz p3, :cond_6

    neg-int p3, p2

    .line 72
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 73
    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 75
    :cond_6
    iput p2, p1, Landroid/graphics/Rect;->left:I

    neg-int p2, p2

    .line 76
    iput p2, p1, Landroid/graphics/Rect;->right:I

    nop

    :cond_7
    :goto_1
    return-void
.end method
