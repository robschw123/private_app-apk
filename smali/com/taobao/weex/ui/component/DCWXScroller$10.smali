.class Lcom/taobao/weex/ui/component/DCWXScroller$10;
.super Ljava/lang/Object;
.source "DCWXScroller.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

    .line 756
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller$10;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 760
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller$10;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1, v1}, Lcom/taobao/weex/ui/component/DCWXScroller;->access$200(Lcom/taobao/weex/ui/component/DCWXScroller;IIII)V

    .line 762
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller$10;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXScroller$10;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/DCWXScroller;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 765
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 766
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 768
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    :goto_0
    return-void
.end method
