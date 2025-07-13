.class Lcom/taobao/weex/ui/component/DCWXScroller$5;
.super Ljava/lang/Object;
.source "DCWXScroller.java"

# interfaces
.implements Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXScroller;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXScroller;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXScroller;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 597
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller$5;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "scrollView",
            "x",
            "y",
            "oldx",
            "oldy"
        }
    .end annotation

    .line 600
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller$5;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller$5;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-static {v0, p2, p3, p4, p5}, Lcom/taobao/weex/ui/component/DCWXScroller;->access$200(Lcom/taobao/weex/ui/component/DCWXScroller;IIII)V

    .line 604
    iget-object p4, p0, Lcom/taobao/weex/ui/component/DCWXScroller$5;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-virtual {p4, p1, p2, p3}, Lcom/taobao/weex/ui/component/DCWXScroller;->onLoadMore(Landroid/widget/FrameLayout;II)V

    return-void
.end method

.method public onScrollToBottom()V
    .locals 0

    return-void
.end method

.method public onScrolltoTop()V
    .locals 0

    return-void
.end method
