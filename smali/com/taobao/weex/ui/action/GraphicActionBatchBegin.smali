.class public Lcom/taobao/weex/ui/action/GraphicActionBatchBegin;
.super Lcom/taobao/weex/ui/action/BasicGraphicAction;
.source "GraphicActionBatchBegin.java"


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "ref"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/action/BasicGraphicAction;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 27
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicActionBatchBegin;->mActionType:I

    return-void
.end method


# virtual methods
.method public executeAction()V
    .locals 0

    return-void
.end method
