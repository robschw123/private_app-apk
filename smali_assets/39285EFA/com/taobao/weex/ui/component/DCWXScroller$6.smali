.class Lcom/taobao/weex/ui/component/DCWXScroller$6;
.super Ljava/lang/Object;
.source "DCWXScroller.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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

.field final synthetic val$component:Lcom/taobao/weex/ui/component/DCWXScroller;

.field final synthetic val$scrollView:Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXScroller;Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;Lcom/taobao/weex/ui/component/DCWXScroller;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$scrollView",
            "val$component"
        }
    .end annotation

    .line 625
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller$6;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXScroller$6;->val$scrollView:Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;

    iput-object p3, p0, Lcom/taobao/weex/ui/component/DCWXScroller$6;->val$component:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "left",
            "top",
            "right",
            "bottom",
            "oldLeft",
            "oldTop",
            "oldRight",
            "oldBottom"
        }
    .end annotation

    .line 629
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXScroller$6;->val$scrollView:Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;

    new-instance p3, Lcom/taobao/weex/ui/component/DCWXScroller$6$1;

    invoke-direct {p3, p0, p1}, Lcom/taobao/weex/ui/component/DCWXScroller$6$1;-><init>(Lcom/taobao/weex/ui/component/DCWXScroller$6;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 640
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller$6;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/DCWXScroller;->access$300(Lcom/taobao/weex/ui/component/DCWXScroller;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 641
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller$6;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/DCWXScroller;->access$300(Lcom/taobao/weex/ui/component/DCWXScroller;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method
