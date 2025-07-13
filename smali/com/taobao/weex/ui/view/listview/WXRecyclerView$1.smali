.class Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;
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

    .line 97
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0
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

    .line 100
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 102
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$002(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)I

    .line 103
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$100(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;)V

    :cond_0
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

    .line 109
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 110
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-static {p1, p3}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$002(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)I

    .line 111
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iget-boolean p1, p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isStartFling:Z

    if-eqz p1, :cond_0

    .line 112
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$202(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)I

    .line 113
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iput-boolean p2, p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->isStartFling:Z

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$1;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-static {p1, p3}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->access$212(Lcom/taobao/weex/ui/view/listview/WXRecyclerView;I)I

    return-void
.end method
