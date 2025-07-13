.class Lcom/taobao/weex/ui/component/AbstractEditComponent$4;
.super Ljava/lang/Object;
.source "AbstractEditComponent.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/AbstractEditComponent;->appleStyleAfterCreated(Lcom/taobao/weex/ui/view/WXEditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

.field final synthetic val$editText:Lcom/taobao/weex/ui/view/WXEditText;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/AbstractEditComponent;Lcom/taobao/weex/ui/view/WXEditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$editText"
        }
    .end annotation

    .line 258
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->val$editText:Lcom/taobao/weex/ui/view/WXEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$500(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$500(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/TextWatcher;

    .line 297
    invoke-interface {v1, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "start",
            "count",
            "after"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$500(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$500(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/TextWatcher;

    .line 263
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "start",
            "before",
            "count"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$600(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$600(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->access$700(Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$600(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->access$800(Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$900(Lcom/taobao/weex/ui/component/AbstractEditComponent;)I

    move-result v1

    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    .line 275
    iget-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {p2}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$900(Lcom/taobao/weex/ui/component/AbstractEditComponent;)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    invoke-static {p2, p3}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$902(Lcom/taobao/weex/ui/component/AbstractEditComponent;I)I

    .line 276
    iget-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->val$editText:Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/WXEditText;->getSelectionStart()I

    move-result p2

    .line 277
    iget-object p3, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {p3}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$600(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

    move-result-object p3

    iget-object p4, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {p4}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$600(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;

    move-result-object p4

    invoke-interface {p1, v2, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->access$700(Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;->access$800(Lcom/taobao/weex/ui/component/AbstractEditComponent$TextFormatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 278
    iget-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->val$editText:Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2, v0}, Lcom/taobao/weex/ui/view/WXEditText;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object p2, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->val$editText:Lcom/taobao/weex/ui/view/WXEditText;

    invoke-virtual {p2, p1}, Lcom/taobao/weex/ui/view/WXEditText;->setSelection(I)V

    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0, v2}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$902(Lcom/taobao/weex/ui/component/AbstractEditComponent;I)I

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$500(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AbstractEditComponent$4;->this$0:Lcom/taobao/weex/ui/component/AbstractEditComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/AbstractEditComponent;->access$500(Lcom/taobao/weex/ui/component/AbstractEditComponent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/TextWatcher;

    .line 288
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0

    :cond_2
    return-void
.end method
