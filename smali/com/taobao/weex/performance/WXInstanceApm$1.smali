.class Lcom/taobao/weex/performance/WXInstanceApm$1;
.super Ljava/lang/Object;
.source "WXInstanceApm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/performance/WXInstanceApm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/performance/WXInstanceApm;


# direct methods
.method constructor <init>(Lcom/taobao/weex/performance/WXInstanceApm;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 251
    iput-object p1, p0, Lcom/taobao/weex/performance/WXInstanceApm$1;->this$0:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/taobao/weex/performance/WXInstanceApm$1;->this$0:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {v0}, Lcom/taobao/weex/performance/WXInstanceApm;->sendPerformanceToJS()V

    return-void
.end method
