.class Lcom/taobao/weex/ui/view/listview/WXRecyclerView$3;
.super Landroidx/recyclerview/widget/GridLayoutManager;
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
.method constructor <init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;Landroid/content/Context;IIZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            "this$0",
            "context",
            "spanCount",
            "orientation",
            "reverseLayout",
            "val$orientation"
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$3;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iput p6, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$3;->val$orientation:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 3

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$3;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iget v1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$3;->val$orientation:I

    invoke-super {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->canScrollVertically()Z

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

    .line 211
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 213
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
