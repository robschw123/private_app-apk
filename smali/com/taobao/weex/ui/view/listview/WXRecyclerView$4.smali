.class Lcom/taobao/weex/ui/view/listview/WXRecyclerView$4;
.super Lcom/taobao/weex/ui/view/listview/ExtendedStaggeredGridLayoutManager;
.source "WXRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

.field final synthetic val$orientation:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010
        }
        names = {
            "this$0",
            "spanCount",
            "orientation",
            "val$orientation"
        }
    .end annotation

    .line 218
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$4;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iput p4, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$4;->val$orientation:I

    invoke-direct {p0, p2, p3}, Lcom/taobao/weex/ui/view/listview/ExtendedStaggeredGridLayoutManager;-><init>(II)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 3

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$4;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iget v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$4;->val$orientation:I

    invoke-super {p0}, Lcom/taobao/weex/ui/view/listview/ExtendedStaggeredGridLayoutManager;->canScrollVertically()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$400(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;IZ)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x1

    return v0
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recycler",
            "state"
        }
    .end annotation

    .line 231
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/view/listview/ExtendedStaggeredGridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 233
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
