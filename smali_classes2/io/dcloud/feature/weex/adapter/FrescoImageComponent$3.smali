.class Lio/dcloud/feature/weex/adapter/FrescoImageComponent$3;
.super Ljava/lang/Object;
.source "FrescoImageComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->setStyleWidth(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

.field final synthetic val$width:F


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$width"
        }
    .end annotation

    .line 245
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$3;->this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    iput p2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$3;->val$width:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 248
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$3;->this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$3;->this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    invoke-virtual {v1}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$3;->this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    invoke-virtual {v2}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$3;->val$width:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleWidth(Ljava/lang/String;Ljava/lang/String;F)V

    :cond_0
    return-void
.end method
