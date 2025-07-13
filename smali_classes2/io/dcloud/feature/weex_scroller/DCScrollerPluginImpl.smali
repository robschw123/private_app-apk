.class public Lio/dcloud/feature/weex_scroller/DCScrollerPluginImpl;
.super Ljava/lang/Object;
.source "DCScrollerPluginImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initPlugin(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string p0, "scroll-view"

    .line 15
    :try_start_0
    new-instance v0, Lcom/taobao/weex/ui/SimpleComponentHolder;

    const-class v1, Lcom/taobao/weex/ui/component/DCWXScroller;

    new-instance v2, Lcom/taobao/weex/ui/component/DCWXScroller$Creator;

    invoke-direct {v2}, Lcom/taobao/weex/ui/component/DCWXScroller$Creator;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V

    const/4 v1, 0x0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    .line 16
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    const-class v1, Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-virtual {v0, p0, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->addComponentByName(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catch Lcom/taobao/weex/common/WXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Lcom/taobao/weex/common/WXException;->printStackTrace()V

    :goto_0
    return-void
.end method
