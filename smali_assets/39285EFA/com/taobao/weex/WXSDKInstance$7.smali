.class Lcom/taobao/weex/WXSDKInstance$7;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/WXSDKInstance;->onOldFsRenderTimeLogic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/WXSDKInstance;


# direct methods
.method constructor <init>(Lcom/taobao/weex/WXSDKInstance;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1812
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance$7;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1815
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$7;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v0}, Lcom/taobao/weex/WXSDKInstance;->access$800(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$7;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "onFirstScreen"

    .line 1816
    invoke-static {v0}, Lcom/taobao/weex/utils/Trace;->beginSection(Ljava/lang/String;)V

    .line 1817
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$7;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v0}, Lcom/taobao/weex/WXSDKInstance;->access$800(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/weex/IWXStatisticsListener;->onFirstScreen()V

    .line 1818
    invoke-static {}, Lcom/taobao/weex/utils/Trace;->endSection()V

    :cond_0
    return-void
.end method
