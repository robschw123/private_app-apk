.class Lcom/taobao/weex/ui/component/DCWXInput$13;
.super Ljava/lang/Object;
.source "DCWXInput.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXInput;->addEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private handled:Z

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

    .line 1248
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$13;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 1249
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$13;->handled:Z

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
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

    .line 1253
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$13;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$2400(Lcom/taobao/weex/ui/component/DCWXInput;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v1, :cond_0

    .line 1255
    iget-boolean v2, p0, Lcom/taobao/weex/ui/component/DCWXInput$13;->handled:Z

    invoke-interface {v1, p1, p2, p3}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v1

    and-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/DCWXInput$13;->handled:Z

    goto :goto_0

    .line 1258
    :cond_1
    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$13;->handled:Z

    return p1
.end method
