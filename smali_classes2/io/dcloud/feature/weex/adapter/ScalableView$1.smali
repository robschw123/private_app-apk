.class Lio/dcloud/feature/weex/adapter/ScalableView$1;
.super Ljava/lang/Object;
.source "ScalableView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/ScalableView;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/ScalableView;

.field final synthetic val$h:I

.field final synthetic val$w:I


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/ScalableView;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$h",
            "val$w"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/ScalableView$1;->this$0:Lio/dcloud/feature/weex/adapter/ScalableView;

    iput p2, p0, Lio/dcloud/feature/weex/adapter/ScalableView$1;->val$h:I

    iput p3, p0, Lio/dcloud/feature/weex/adapter/ScalableView$1;->val$w:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 27
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/ScalableView$1;->this$0:Lio/dcloud/feature/weex/adapter/ScalableView;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/adapter/ScalableView;->getComponent()Lcom/taobao/weex/ui/component/WXDiv;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/ScalableView$1;->this$0:Lio/dcloud/feature/weex/adapter/ScalableView;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/adapter/ScalableView;->getComponent()Lcom/taobao/weex/ui/component/WXDiv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXDiv;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/ScalableView$1;->this$0:Lio/dcloud/feature/weex/adapter/ScalableView;

    invoke-virtual {v1}, Lio/dcloud/feature/weex/adapter/ScalableView;->getComponent()Lcom/taobao/weex/ui/component/WXDiv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXDiv;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/feature/weex/adapter/ScalableView$1;->this$0:Lio/dcloud/feature/weex/adapter/ScalableView;

    invoke-virtual {v2}, Lio/dcloud/feature/weex/adapter/ScalableView;->getComponent()Lcom/taobao/weex/ui/component/WXDiv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXDiv;->getRef()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lio/dcloud/feature/weex/adapter/ScalableView$1;->val$h:I

    int-to-float v3, v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleHeight(Ljava/lang/String;Ljava/lang/String;FZ)V

    .line 29
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/ScalableView$1;->this$0:Lio/dcloud/feature/weex/adapter/ScalableView;

    invoke-virtual {v1}, Lio/dcloud/feature/weex/adapter/ScalableView;->getComponent()Lcom/taobao/weex/ui/component/WXDiv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXDiv;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/feature/weex/adapter/ScalableView$1;->this$0:Lio/dcloud/feature/weex/adapter/ScalableView;

    invoke-virtual {v2}, Lio/dcloud/feature/weex/adapter/ScalableView;->getComponent()Lcom/taobao/weex/ui/component/WXDiv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXDiv;->getRef()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lio/dcloud/feature/weex/adapter/ScalableView$1;->val$w:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleWidth(Ljava/lang/String;Ljava/lang/String;FZ)V

    .line 30
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/ScalableView$1;->this$0:Lio/dcloud/feature/weex/adapter/ScalableView;

    iget v1, p0, Lio/dcloud/feature/weex/adapter/ScalableView$1;->val$w:I

    iput v1, v0, Lio/dcloud/feature/weex/adapter/ScalableView;->mWidth:I

    .line 31
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/ScalableView$1;->this$0:Lio/dcloud/feature/weex/adapter/ScalableView;

    iget v1, p0, Lio/dcloud/feature/weex/adapter/ScalableView$1;->val$h:I

    iput v1, v0, Lio/dcloud/feature/weex/adapter/ScalableView;->mHeight:I

    :cond_0
    return-void
.end method
