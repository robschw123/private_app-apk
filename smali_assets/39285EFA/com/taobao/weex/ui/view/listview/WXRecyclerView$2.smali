.class Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "WXRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setNestInfo(Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2
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

    if-nez p2, :cond_0

    .line 128
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$002(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)I

    .line 129
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-static {v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$300(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;)V

    .line 131
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
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

    .line 136
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 137
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-static {p1, p3}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$002(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)I

    .line 138
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iget-boolean p1, p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isStartFling:Z

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$202(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)I

    .line 140
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iput-boolean p2, p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isStartFling:Z

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$2;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-static {p1, p3}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$212(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)I

    return-void
.end method
