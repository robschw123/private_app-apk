.class Lcom/taobao/weex/ui/component/AbstractEditComponent$2;
.super Ljava/lang/Object;
.source "AbstractEditComponent.java"

# interfaces
.implements Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;->onHostViewInitialized(Lcom/taobao/weex/ui/view/WXEditText;)V
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

    .line 191
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$2;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasFocus"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$2;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$000(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$2;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    const-string v1, ":focus"

    invoke-virtual {v0, v1, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->setPseudoClassStatus(Ljava/lang/String;Z)V

    return-void
.end method
