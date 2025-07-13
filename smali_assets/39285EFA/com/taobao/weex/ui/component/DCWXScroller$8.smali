.class Lcom/taobao/weex/ui/component/DCWXScroller$8;
.super Ljava/lang/Object;
.source "DCWXScroller.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

.field final synthetic val$scrollView:Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXScroller;Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$scrollView"
        }
    .end annotation

    .line 659
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller$8;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXScroller$8;->val$scrollView:Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    .line 662
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller$8;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXScroller;->access$400(Lcom/taobao/weex/ui/component/DCWXScroller;)I

    move-result v0

    if-nez v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller$8;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-static {v0, p1}, Lcom/taobao/weex/ui/component/DCWXScroller;->access$402(Lcom/taobao/weex/ui/component/DCWXScroller;I)I

    .line 666
    :cond_0
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller$8;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/DCWXScroller;->access$500(Lcom/taobao/weex/ui/component/DCWXScroller;)Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    return v0

    .line 668
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    return v1

    .line 669
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller$8;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/DCWXScroller;->getScrollX()I

    move-result p1

    .line 670
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXScroller$8;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-static {p2}, Lcom/taobao/weex/ui/component/DCWXScroller;->access$400(Lcom/taobao/weex/ui/component/DCWXScroller;)I

    move-result p2

    .line 671
    iget-object v2, p0, Lcom/taobao/weex/ui/component/DCWXScroller$8;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    div-int/lit8 v3, p2, 0x2

    add-int/2addr p1, v3

    div-int/2addr p1, p2

    invoke-static {v2, p1}, Lcom/taobao/weex/ui/component/DCWXScroller;->access$602(Lcom/taobao/weex/ui/component/DCWXScroller;I)I

    .line 672
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller$8;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/DCWXScroller;->access$600(Lcom/taobao/weex/ui/component/DCWXScroller;)I

    move-result p1

    mul-int p1, p1, p2

    .line 673
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXScroller$8;->val$scrollView:Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;

    invoke-virtual {p2, p1, v1}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->smoothScrollTo(II)V

    return v0
.end method
