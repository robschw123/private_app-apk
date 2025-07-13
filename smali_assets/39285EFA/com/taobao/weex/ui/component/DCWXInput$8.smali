.class Lcom/taobao/weex/ui/component/DCWXInput$8;
.super Ljava/lang/Object;
.source "DCWXInput.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXInput;->setAutofocus(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXInput;

.field final synthetic val$autofocus:Z

.field final synthetic val$inputView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput;ZLandroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$autofocus",
            "val$inputView"
        }
    .end annotation

    .line 750
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iput-boolean p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->val$autofocus:Z

    iput-object p3, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->val$inputView:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 753
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 756
    :cond_0
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->val$autofocus:Z

    if-eqz v0, :cond_1

    .line 757
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1600(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 758
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->val$inputView:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1700(Lcom/taobao/weex/ui/component/DCWXInput;Landroid/widget/EditText;)V

    .line 759
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1800(Lcom/taobao/weex/ui/component/DCWXInput;)I

    move-result v1

    iget-object v2, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v2}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1900(Lcom/taobao/weex/ui/component/DCWXInput;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/ui/component/DCWXInput;->access$2000(Lcom/taobao/weex/ui/component/DCWXInput;II)V

    goto :goto_0

    .line 762
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->val$inputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 764
    :goto_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$8;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXEditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
