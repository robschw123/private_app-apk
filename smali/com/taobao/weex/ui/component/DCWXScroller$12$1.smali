.class Lcom/taobao/weex/ui/component/DCWXScroller$12$1;
.super Ljava/lang/Object;
.source "DCWXScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXScroller$12;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/weex/ui/component/DCWXScroller$12;

.field final synthetic val$that:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXScroller$12;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$that"
        }
    .end annotation

    .line 853
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller$12$1;->this$1:Lcom/taobao/weex/ui/component/DCWXScroller$12;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXScroller$12$1;->val$that:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 856
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller$12$1;->this$1:Lcom/taobao/weex/ui/component/DCWXScroller$12;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/DCWXScroller$12;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXScroller$12$1;->val$that:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
