.class Lcom/taobao/weex/ui/component/AbstractEditComponent$3;
.super Ljava/lang/Object;
.source "AbstractEditComponent.java"

# interfaces
.implements Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;
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

    .line 210
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHostViewClick()V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$100(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$200(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    .line 223
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->interceptFocus()V

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper;->pickTime(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    goto :goto_0

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$200(Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    .line 216
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 217
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->interceptFocus()V

    .line 219
    :cond_3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$300(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$400(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$3;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/ui/component/helper/WXTimeInputHelper;->pickDate(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/ui/component/AbstractEditComponent;)V

    :goto_0
    return-void
.end method
