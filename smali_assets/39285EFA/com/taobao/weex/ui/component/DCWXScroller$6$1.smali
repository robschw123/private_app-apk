.class Lcom/taobao/weex/ui/component/DCWXScroller$6$1;
.super Ljava/lang/Object;
.source "DCWXScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXScroller$6;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/weex/ui/component/DCWXScroller$6;

.field final synthetic val$frameLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXScroller$6;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$frameLayout"
        }
    .end annotation

    .line 629
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller$6$1;->this$1:Lcom/taobao/weex/ui/component/DCWXScroller$6;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXScroller$6$1;->val$frameLayout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 632
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller$6$1;->this$1:Lcom/taobao/weex/ui/component/DCWXScroller$6;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/DCWXScroller$6;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/DCWXScroller;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller$6$1;->val$frameLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 634
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXScroller$6$1;->this$1:Lcom/taobao/weex/ui/component/DCWXScroller$6;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/DCWXScroller$6;->val$scrollView:Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;

    iget-object v2, p0, Lcom/taobao/weex/ui/component/DCWXScroller$6$1;->this$1:Lcom/taobao/weex/ui/component/DCWXScroller$6;

    iget-object v2, v2, Lcom/taobao/weex/ui/component/DCWXScroller$6;->val$component:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/DCWXScroller;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->scrollTo(II)V

    goto :goto_0

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller$6$1;->this$1:Lcom/taobao/weex/ui/component/DCWXScroller$6;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/DCWXScroller$6;->val$scrollView:Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/taobao/weex/ui/component/DCWXScroller$6$1;->this$1:Lcom/taobao/weex/ui/component/DCWXScroller$6;

    iget-object v2, v2, Lcom/taobao/weex/ui/component/DCWXScroller$6;->val$component:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/DCWXScroller;->getScrollY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->scrollTo(II)V

    :goto_0
    return-void
.end method
