.class Lcom/taobao/weex/ui/component/WXScroller$12;
.super Ljava/lang/Object;
.source "WXScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXScroller;->scrollBy(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXScroller;

.field final synthetic val$smooth:Z

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXScroller;ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$smooth",
            "val$y",
            "val$x"
        }
    .end annotation

    .line 839
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    iput-boolean p2, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->val$smooth:Z

    iput p3, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->val$y:I

    iput p4, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->val$x:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 842
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    iget v0, v0, Lcom/taobao/weex/ui/component/WXScroller;->mOrientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 843
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->val$smooth:Z

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXScrollView;

    iget v2, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->val$y:I

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/view/WXScrollView;->smoothScrollBy(II)V

    goto :goto_0

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXScrollView;

    iget v2, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->val$y:I

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/view/WXScrollView;->scrollBy(II)V

    goto :goto_0

    .line 849
    :cond_1
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->val$smooth:Z

    if-eqz v0, :cond_2

    .line 850
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    iget v2, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->val$x:I

    invoke-virtual {v0, v2, v1}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_0

    .line 852
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    iget v2, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->val$x:I

    invoke-virtual {v0, v2, v1}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->scrollBy(II)V

    .line 855
    :goto_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$12;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
