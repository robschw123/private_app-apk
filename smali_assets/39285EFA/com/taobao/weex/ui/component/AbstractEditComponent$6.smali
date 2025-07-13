.class Lcom/taobao/weex/ui/component/AbstractEditComponent$6;
.super Ljava/lang/Object;
.source "AbstractEditComponent.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;->addEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

.field final synthetic val$text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$text"
        }
    .end annotation

    .line 333
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;->val$text:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "actionId",
            "event"
        }
    .end annotation

    .line 336
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1200(Lcom/taobao/weex/ui/component/AbstractEditComponent;)I

    move-result p1

    if-ne p2, p1, :cond_3

    .line 337
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;->val$text:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 339
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {p3}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1000(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 340
    iget-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "change"

    invoke-static {p2, p3, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1100(Lcom/taobao/weex/ui/component/AbstractEditComponent;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    iget-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;->val$text:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1002(Lcom/taobao/weex/ui/component/AbstractEditComponent;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    :cond_1
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 344
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXVContainer;->interceptFocus()V

    .line 346
    :cond_2
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$6;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$200(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
