.class Lcom/taobao/weex/performance/WXStateRecord$1;
.super Ljava/lang/Object;
.source "WXStateRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/performance/WXStateRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/performance/WXStateRecord;


# direct methods
.method constructor <init>(Lcom/taobao/weex/performance/WXStateRecord;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/taobao/weex/performance/WXStateRecord$1;->this$0:Lcom/taobao/weex/performance/WXStateRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 200
    iget-object v0, p0, Lcom/taobao/weex/performance/WXStateRecord$1;->this$0:Lcom/taobao/weex/performance/WXStateRecord;

    invoke-static {v0}, Lcom/taobao/weex/performance/WXStateRecord;->access$300(Lcom/taobao/weex/performance/WXStateRecord;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 201
    iget-object v0, p0, Lcom/taobao/weex/performance/WXStateRecord$1;->this$0:Lcom/taobao/weex/performance/WXStateRecord;

    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->getFixUnixTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/performance/WXStateRecord;->access$302(Lcom/taobao/weex/performance/WXStateRecord;J)J

    .line 203
    :cond_0
    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->getFixUnixTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/taobao/weex/performance/WXStateRecord$1;->this$0:Lcom/taobao/weex/performance/WXStateRecord;

    invoke-static {v2}, Lcom/taobao/weex/performance/WXStateRecord;->access$300(Lcom/taobao/weex/performance/WXStateRecord;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 204
    iget-object v2, p0, Lcom/taobao/weex/performance/WXStateRecord$1;->this$0:Lcom/taobao/weex/performance/WXStateRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "diff:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/taobao/weex/performance/WXStateRecord;->recordJsThreadWatch(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/taobao/weex/performance/WXStateRecord$1;->this$0:Lcom/taobao/weex/performance/WXStateRecord;

    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->getFixUnixTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/performance/WXStateRecord;->access$302(Lcom/taobao/weex/performance/WXStateRecord;J)J

    .line 206
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/performance/WXStateRecord$1;->this$0:Lcom/taobao/weex/performance/WXStateRecord;

    invoke-static {v1}, Lcom/taobao/weex/performance/WXStateRecord;->access$400(Lcom/taobao/weex/performance/WXStateRecord;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->postDelay(Ljava/lang/Runnable;J)V

    return-void
.end method
