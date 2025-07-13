.class Lio/dcloud/feature/weex/WXViewWrapper$1;
.super Landroid/os/Handler;
.source "WXViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex/WXViewWrapper;
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

    .line 108
    iput-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper$1;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 111
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 112
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 114
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper$1;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-boolean v0, v0, Lio/dcloud/feature/weex/WXViewWrapper;->isService:Z

    if-eqz v0, :cond_4

    .line 115
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper$1;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-object v0, v0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    if-nez v0, :cond_1

    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper$1;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-object v0, v0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    const-string v1, "nvueLaunchMode"

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v2, 0xa

    if-nez v1, :cond_3

    const-string v1, "fast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getControl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uni-v3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugMode:Z

    if-nez v0, :cond_3

    .line 121
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper$1;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-object v0, v0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    sget-object v1, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->LaunchWebviewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "uniNView"

    .line 122
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper$1;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 v1, 0x64

    invoke-static {v0, p1, v1, v2}, Lio/dcloud/feature/weex/WXViewWrapper;->access$000(Lio/dcloud/feature/weex/WXViewWrapper;Ljava/lang/Object;J)V

    goto :goto_0

    .line 125
    :cond_2
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper$1;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, p1, v2, v3}, Lio/dcloud/feature/weex/WXViewWrapper;->access$000(Lio/dcloud/feature/weex/WXViewWrapper;Ljava/lang/Object;J)V

    :goto_0
    return-void

    .line 129
    :cond_3
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper$1;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, p1, v2, v3}, Lio/dcloud/feature/weex/WXViewWrapper;->access$000(Lio/dcloud/feature/weex/WXViewWrapper;Ljava/lang/Object;J)V

    goto :goto_1

    :cond_4
    const/16 v0, 0xa

    .line 133
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper$1;->this$0:Lio/dcloud/feature/weex/WXViewWrapper;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    int-to-long v2, v0

    invoke-static {v1, p1, v2, v3}, Lio/dcloud/feature/weex/WXViewWrapper;->access$000(Lio/dcloud/feature/weex/WXViewWrapper;Ljava/lang/Object;J)V

    :goto_1
    return-void
.end method
