.class Lcom/taobao/weex/ui/component/DCWXInput$7;
.super Landroid/content/BroadcastReceiver;
.source "DCWXInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXInput;->registerTypefaceObserver(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXInput;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 646
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$7;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    const-string p1, "fontFamily"

    .line 650
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 652
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$7;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {p2}, Lcom/taobao/weex/ui/component/DCWXInput;->access$1500(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 656
    :cond_0
    invoke-static {p1}, Lcom/taobao/weex/utils/TypefaceUtil;->getFontDO(Ljava/lang/String;)Lcom/taobao/weex/utils/FontDO;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 657
    invoke-virtual {p1}, Lcom/taobao/weex/utils/FontDO;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$7;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 659
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$7;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/DCWXInput;->getHostView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/taobao/weex/ui/view/WXEditText;

    .line 660
    invoke-virtual {p1}, Lcom/taobao/weex/utils/FontDO;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    return-void
.end method
