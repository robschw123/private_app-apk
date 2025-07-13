.class Lcom/taobao/weex/ui/component/WXComponent$4;
.super Ljava/lang/Object;
.source "WXComponent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXComponent;->addClickListener(Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 694
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$4;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 697
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$4;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    iget-object p1, p1, Lcom/taobao/weex/ui/component/WXComponent;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$4;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    iget-object p1, p1, Lcom/taobao/weex/ui/component/WXComponent;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->isTouchEventConsumedByAdvancedGesture()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 701
    :cond_0
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$4;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/WXComponent;->access$300(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;

    if-eqz v0, :cond_1

    .line 703
    invoke-interface {v0}, Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;->onHostViewClick()V

    goto :goto_0

    :cond_2
    return-void
.end method
