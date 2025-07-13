.class Lcom/taobao/weex/ui/component/DCWXScroller$16;
.super Ljava/lang/Object;
.source "DCWXScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXScroller;->scrollBy(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

.field final synthetic val$smooth:Z

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXScroller;ZII)V
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

    .line 1182
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller$16;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    iput-boolean p2, p0, Lcom/taobao/weex/ui/component/DCWXScroller$16;->val$smooth:Z

    iput p3, p0, Lcom/taobao/weex/ui/component/DCWXScroller$16;->val$y:I

    iput p4, p0, Lcom/taobao/weex/ui/component/DCWXScroller$16;->val$x:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1185
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller$16;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    iget v0, v0, Lcom/taobao/weex/ui/component/DCWXScroller;->mOrientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1186
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller$16;->val$smooth:Z

    if-eqz v0, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller$16;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;

    iget v2, p0, Lcom/taobao/weex/ui/component/DCWXScroller$16;->val$y:I

    invoke-virtual {v0, v1, v2}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->smoothScrollBy(II)V

    goto :goto_0

    .line 1189
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller$16;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;

    iget v2, p0, Lcom/taobao/weex/ui/component/DCWXScroller$16;->val$y:I

    invoke-virtual {v0, v1, v2}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->scrollBy(II)V

    goto :goto_0

    .line 1192
    :cond_1
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller$16;->val$smooth:Z

    if-eqz v0, :cond_2

    .line 1193
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller$16;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;

    iget v2, p0, Lcom/taobao/weex/ui/component/DCWXScroller$16;->val$x:I

    invoke-virtual {v0, v2, v1}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_0

    .line 1195
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller$16;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;

    iget v2, p0, Lcom/taobao/weex/ui/component/DCWXScroller$16;->val$x:I

    invoke-virtual {v0, v2, v1}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->scrollBy(II)V

    .line 1198
    :goto_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller$16;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
