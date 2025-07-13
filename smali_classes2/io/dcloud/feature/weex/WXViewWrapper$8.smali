.class Lio/dcloud/feature/weex/WXViewWrapper$8;
.super Ljava/lang/Object;
.source "WXViewWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/WXViewWrapper;->loadTemplate(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/WXViewWrapper;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/WXViewWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 531
    iput-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper$8;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 534
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper$8;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-object v0, v0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    if-nez v0, :cond_0

    return-void

    .line 537
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper$8;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-object v0, v0, Lio/dcloud/feature/weex/WXViewWrapper;->mSrcPath:Ljava/lang/String;

    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper$8;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-object v1, v1, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getEncryptionInputStream(Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 540
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 541
    iget-object v2, p0, Lio/dcloud/feature/weex/WXViewWrapper$8;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-boolean v2, v2, Lio/dcloud/feature/weex/WXViewWrapper;->isService:Z

    if-eqz v2, :cond_1

    .line 542
    iget-object v2, p0, Lio/dcloud/feature/weex/WXViewWrapper$8;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    invoke-static {v2, v1}, Lio/dcloud/feature/weex/WXViewWrapper;->access$200(Lio/dcloud/feature/weex/WXViewWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 544
    :cond_1
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 545
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0x3e8

    .line 546
    iput v1, v2, Landroid/os/Message;->what:I

    .line 547
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper$8;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-boolean v1, v1, Lio/dcloud/feature/weex/WXViewWrapper;->isService:Z

    if-nez v1, :cond_2

    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v1

    iget-object v3, p0, Lio/dcloud/feature/weex/WXViewWrapper$8;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-object v3, v3, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/dcloud/feature/weex/WeexInstanceMgr;->isUniServiceCreated(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 548
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper$8;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    invoke-static {v1}, Lio/dcloud/feature/weex/WXViewWrapper;->access$300(Lio/dcloud/feature/weex/WXViewWrapper;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 549
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper$8;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    invoke-static {v1}, Lio/dcloud/feature/weex/WXViewWrapper;->access$300(Lio/dcloud/feature/weex/WXViewWrapper;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 551
    :cond_2
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->isJsFrameworkReady()Z

    move-result v1

    if-nez v1, :cond_3

    .line 552
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper$8;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    invoke-static {v1}, Lio/dcloud/feature/weex/WXViewWrapper;->access$400(Lio/dcloud/feature/weex/WXViewWrapper;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 553
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper$8;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    invoke-static {v1}, Lio/dcloud/feature/weex/WXViewWrapper;->access$400(Lio/dcloud/feature/weex/WXViewWrapper;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 555
    :cond_3
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper$8;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-boolean v1, v1, Lio/dcloud/feature/weex/WXViewWrapper;->isDelayRender:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper$8;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-boolean v1, v1, Lio/dcloud/feature/weex/WXViewWrapper;->isService:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper$8;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    invoke-static {v1}, Lio/dcloud/feature/weex/WXViewWrapper;->access$500(Lio/dcloud/feature/weex/WXViewWrapper;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 556
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper$8;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    invoke-static {v1}, Lio/dcloud/feature/weex/WXViewWrapper;->access$400(Lio/dcloud/feature/weex/WXViewWrapper;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 557
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper$8;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    invoke-static {v1}, Lio/dcloud/feature/weex/WXViewWrapper;->access$400(Lio/dcloud/feature/weex/WXViewWrapper;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 560
    :cond_4
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper$8;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-object v1, v1, Lio/dcloud/feature/weex/WXViewWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 563
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 565
    :cond_5
    :goto_0
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    :cond_6
    return-void
.end method
