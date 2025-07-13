.class Lcom/taobao/weex/common/WXThread$SafeRunnable;
.super Ljava/lang/Object;
.source "WXThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/common/WXThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SafeRunnable"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "SafeRunnable"


# instance fields
.field private mInstance:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/weex/WXSDKInstance;",
            ">;"
        }
    .end annotation
.end field

.field final mTask:Ljava/lang/Runnable;

.field private mTimelineLog:Lcom/taobao/weex/utils/tools/LogDetail;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/common/WXThread$SafeRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "runnable",
            "instance",
            "taskName"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/taobao/weex/common/WXThread$SafeRunnable;->mTimelineLog:Lcom/taobao/weex/utils/tools/LogDetail;

    .line 56
    iput-object p1, p0, Lcom/taobao/weex/common/WXThread$SafeRunnable;->mTask:Ljava/lang/Runnable;

    if-eqz p3, :cond_0

    .line 58
    new-instance p1, Lcom/taobao/weex/utils/tools/LogDetail;

    invoke-direct {p1}, Lcom/taobao/weex/utils/tools/LogDetail;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/common/WXThread$SafeRunnable;->mTimelineLog:Lcom/taobao/weex/utils/tools/LogDetail;

    .line 59
    iget-object p1, p1, Lcom/taobao/weex/utils/tools/LogDetail;->info:Lcom/taobao/weex/utils/tools/Info;

    const-string v0, "Android"

    iput-object v0, p1, Lcom/taobao/weex/utils/tools/Info;->platform:Ljava/lang/String;

    .line 60
    iget-object p1, p0, Lcom/taobao/weex/common/WXThread$SafeRunnable;->mTimelineLog:Lcom/taobao/weex/utils/tools/LogDetail;

    invoke-virtual {p1, p3}, Lcom/taobao/weex/utils/tools/LogDetail;->name(Ljava/lang/String;)V

    .line 61
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/taobao/weex/common/WXThread$SafeRunnable;->mInstance:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "task",
            "taskName"
        }
    .end annotation

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0, p2}, Lcom/taobao/weex/common/WXThread$SafeRunnable;-><init>(Ljava/lang/Runnable;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/common/WXThread$SafeRunnable;->mTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/taobao/weex/common/WXThread$SafeRunnable;->mTimelineLog:Lcom/taobao/weex/utils/tools/LogDetail;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/taobao/weex/utils/tools/LogDetail;->taskStart()V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/common/WXThread$SafeRunnable;->mTask:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 72
    iget-object v0, p0, Lcom/taobao/weex/common/WXThread$SafeRunnable;->mTimelineLog:Lcom/taobao/weex/utils/tools/LogDetail;

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v0}, Lcom/taobao/weex/utils/tools/LogDetail;->taskEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 77
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v1

    const-string v2, "SafeRunnable"

    if-nez v1, :cond_3

    .line 81
    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/taobao/weex/common/WXThread$SafeRunnable;->mTimelineLog:Lcom/taobao/weex/utils/tools/LogDetail;

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/taobao/weex/common/WXThread$SafeRunnable;->mInstance:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 86
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_2

    .line 87
    iget-object v1, v0, Lcom/taobao/weex/WXSDKInstance;->mTimeCalculator:Lcom/taobao/weex/utils/tools/TimeCalculator;

    if-eqz v1, :cond_2

    .line 88
    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->mTimeCalculator:Lcom/taobao/weex/utils/tools/TimeCalculator;

    iget-object v1, p0, Lcom/taobao/weex/common/WXThread$SafeRunnable;->mTimelineLog:Lcom/taobao/weex/utils/tools/LogDetail;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/utils/tools/TimeCalculator;->addLog(Lcom/taobao/weex/utils/tools/LogDetail;)V

    :cond_2
    return-void

    .line 78
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SafeRunnable run throw expection:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    throw v0
.end method
