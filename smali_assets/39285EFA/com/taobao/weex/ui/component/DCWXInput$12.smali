.class Lcom/taobao/weex/ui/component/DCWXInput$12;
.super Ljava/lang/Object;
.source "DCWXInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXInput;->decideSoftKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXInput;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$context"
        }
    .end annotation

    .line 1158
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$12;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$12;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1161
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$12;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1162
    instance-of v1, v0, Landroid/widget/EditText;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$12;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$2200(Lcom/taobao/weex/ui/component/DCWXInput;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXInput$12;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method
