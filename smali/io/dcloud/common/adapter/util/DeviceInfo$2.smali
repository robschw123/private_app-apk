.class Lio/dcloud/common/adapter/util/DeviceInfo$2;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/util/DeviceInfo;->showIME(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$isRequestFocus:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/util/DeviceInfo$2;->val$view:Landroid/view/View;

    iput-boolean p2, p0, Lio/dcloud/common/adapter/util/DeviceInfo$2;->val$isRequestFocus:Z

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/DeviceInfo$2;->val$view:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lio/dcloud/common/adapter/util/DeviceInfo$2;->val$isRequestFocus:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/util/DeviceInfo$2;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 4
    :cond_0
    sget-boolean v0, Lio/dcloud/common/adapter/util/DeviceInfo;->isIMEShow:Z

    if-nez v0, :cond_1

    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    const-string v1, "input_method"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :cond_1
    return-void
.end method
