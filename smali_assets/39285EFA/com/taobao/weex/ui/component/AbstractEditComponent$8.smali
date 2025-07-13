.class Lcom/taobao/weex/ui/component/AbstractEditComponent$8;
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


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 384
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$8;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
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

    .line 387
    iget-object p3, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$8;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {p3}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1200(Lcom/taobao/weex/ui/component/AbstractEditComponent;)I

    move-result p3

    if-ne p2, p3, :cond_0

    .line 388
    new-instance p2, Ljava/util/HashMap;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    .line 389
    iget-object p3, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$8;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {p3}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$1500(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "returnKeyType"

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "value"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$8;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    const-string p3, "return"

    invoke-virtual {p1, p3, p2}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
