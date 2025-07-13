.class Lcom/taobao/weex/ui/component/DCTextArea$2$1;
.super Ljava/lang/Object;
.source "DCTextArea.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCTextArea$2;->fireEventForFocus(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/weex/ui/component/DCTextArea$2;

.field final synthetic val$text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCTextArea$2;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$text"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCTextArea$2$1;->this$1:Lcom/taobao/weex/ui/component/DCTextArea$2;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCTextArea$2$1;->val$text:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 98
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCTextArea$2$1;->this$1:Lcom/taobao/weex/ui/component/DCTextArea$2;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/DCTextArea$2;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    iget v0, v0, Lcom/taobao/weex/ui/component/DCTextArea;->keyboardHeight:F

    const-string v1, "focus"

    const-string v2, "detail"

    const-string v3, "height"

    const-string v4, "value"

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmpl-float v0, v0, v6

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCTextArea$2$1;->this$1:Lcom/taobao/weex/ui/component/DCTextArea$2;

    iget v6, v0, Lcom/taobao/weex/ui/component/DCTextArea$2;->count:I

    add-int/2addr v6, v5

    iput v6, v0, Lcom/taobao/weex/ui/component/DCTextArea$2;->count:I

    .line 100
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCTextArea$2$1;->this$1:Lcom/taobao/weex/ui/component/DCTextArea$2;

    iget v0, v0, Lcom/taobao/weex/ui/component/DCTextArea$2;->count:I

    const/4 v6, 0x3

    if-le v0, v6, :cond_0

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 102
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 103
    iget-object v5, p0, Lcom/taobao/weex/ui/component/DCTextArea$2$1;->val$text:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v4, p0, Lcom/taobao/weex/ui/component/DCTextArea$2$1;->this$1:Lcom/taobao/weex/ui/component/DCTextArea$2;

    iget-object v4, v4, Lcom/taobao/weex/ui/component/DCTextArea$2;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    iget v4, v4, Lcom/taobao/weex/ui/component/DCTextArea;->keyboardHeight:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v2, p0, Lcom/taobao/weex/ui/component/DCTextArea$2$1;->this$1:Lcom/taobao/weex/ui/component/DCTextArea$2;

    iget-object v2, v2, Lcom/taobao/weex/ui/component/DCTextArea$2;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {v2, v1, v0}, Lcom/taobao/weex/ui/component/DCTextArea;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCTextArea$2$1;->this$1:Lcom/taobao/weex/ui/component/DCTextArea$2;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCTextArea$2$1;->val$text:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/DCTextArea$2;->access$100(Lcom/taobao/weex/ui/component/DCTextArea$2;Landroid/widget/TextView;)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCTextArea$2$1;->this$1:Lcom/taobao/weex/ui/component/DCTextArea$2;

    const/4 v6, 0x0

    iput v6, v0, Lcom/taobao/weex/ui/component/DCTextArea$2;->count:I

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 113
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 114
    iget-object v5, p0, Lcom/taobao/weex/ui/component/DCTextArea$2$1;->val$text:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v4, p0, Lcom/taobao/weex/ui/component/DCTextArea$2$1;->this$1:Lcom/taobao/weex/ui/component/DCTextArea$2;

    iget-object v4, v4, Lcom/taobao/weex/ui/component/DCTextArea$2;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    iget v4, v4, Lcom/taobao/weex/ui/component/DCTextArea;->keyboardHeight:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v2, p0, Lcom/taobao/weex/ui/component/DCTextArea$2$1;->this$1:Lcom/taobao/weex/ui/component/DCTextArea$2;

    iget-object v2, v2, Lcom/taobao/weex/ui/component/DCTextArea$2;->this$0:Lcom/taobao/weex/ui/component/DCTextArea;

    invoke-virtual {v2, v1, v0}, Lcom/taobao/weex/ui/component/DCTextArea;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void
.end method
