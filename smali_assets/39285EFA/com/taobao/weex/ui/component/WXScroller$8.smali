.class Lcom/taobao/weex/ui/component/WXScroller$8;
.super Ljava/lang/Object;
.source "WXScroller.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXScroller;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXScroller;

.field final synthetic val$scrollView:Lcom/taobao/weex/ui/view/WXHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXScroller;Lcom/taobao/weex/ui/view/WXHorizontalScrollView;)V
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

    .line 531
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$8;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXScroller$8;->val$scrollView:Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

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

    .line 534
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$8;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/WXScroller;->access$400(Lcom/taobao/weex/ui/component/WXScroller;)I

    move-result v0

    if-nez v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$8;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-static {v0, p1}, Lcom/taobao/weex/ui/component/WXScroller;->access$402(Lcom/taobao/weex/ui/component/WXScroller;I)I

    .line 538
    :cond_0
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$8;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/WXScroller;->access$500(Lcom/taobao/weex/ui/component/WXScroller;)Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    return v0

    .line 541
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

    .line 542
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$8;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXScroller;->getScrollX()I

    move-result p1

    .line 543
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXScroller$8;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {p2}, Lcom/taobao/weex/ui/component/WXScroller;->access$400(Lcom/taobao/weex/ui/component/WXScroller;)I

    move-result p2

    .line 544
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXScroller$8;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    div-int/lit8 v3, p2, 0x2

    add-int/2addr p1, v3

    div-int/2addr p1, p2

    invoke-static {v2, p1}, Lcom/taobao/weex/ui/component/WXScroller;->access$602(Lcom/taobao/weex/ui/component/WXScroller;I)I

    .line 545
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$8;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/WXScroller;->access$600(Lcom/taobao/weex/ui/component/WXScroller;)I

    move-result p1

    mul-int p1, p1, p2

    .line 546
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXScroller$8;->val$scrollView:Lcom/taobao/weex/ui/view/WXHorizontalScrollView;

    invoke-virtual {p2, p1, v1}, Lcom/taobao/weex/ui/view/WXHorizontalScrollView;->smoothScrollTo(II)V

    return v0
.end method
