.class Lcom/taobao/weex/ui/component/WXScroller$5;
.super Ljava/lang/Object;
.source "WXScroller.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/WXHorizontalScrollView$ScrollViewListener;


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


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXScroller;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 476
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXScroller$5;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(Lcom/taobao/weex/ui/view/WXHorizontalScrollView;IIII)V
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

    .line 479
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXScroller$5;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-static {v0, p2, p3, p4, p5}, Lcom/taobao/weex/ui/component/WXScroller;->access$200(Lcom/taobao/weex/ui/component/WXScroller;IIII)V

    .line 480
    iget-object p4, p0, Lcom/taobao/weex/ui/component/WXScroller$5;->this$0:Lcom/taobao/weex/ui/component/WXScroller;

    invoke-virtual {p4, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXScroller;->onLoadMore(Landroid/widget/FrameLayout;II)V

    return-void
.end method
