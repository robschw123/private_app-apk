.class Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6$1;
.super Ljava/lang/Object;
.source "WXRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;->onStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 427
    iput-object p1, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6$1;->this$1:Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 430
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6$1;->this$1:Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;

    iget v0, v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;->val$orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 431
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6$1;->this$1:Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;

    iget-object v0, v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iget-object v2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6$1;->this$1:Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;

    iget v2, v2, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;->val$offset:I

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->smoothScrollBy(II)V

    goto :goto_0

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6$1;->this$1:Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;

    iget-object v0, v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;->this$0:Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    iget-object v2, p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6$1;->this$1:Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;

    iget v2, v2, Lcom/taobao/weex/ui/view/listview/WXRecyclerView$6;->val$offset:I

    invoke-virtual {v0, v2, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->smoothScrollBy(II)V

    :goto_0
    return-void
.end method
