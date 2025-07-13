.class public Lcom/taobao/weex/common/WXThread;
.super Landroid/os/HandlerThread;
.source "WXThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/common/WXThread$SafeCallback;,
        Lcom/taobao/weex/common/WXThread$SafeRunnable;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 152
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/taobao/weex/common/WXThread;->start()V

    .line 154
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/taobao/weex/common/WXThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/taobao/weex/common/WXThread;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "priority"
        }
    .end annotation

    .line 181
    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 182
    invoke-virtual {p0}, Lcom/taobao/weex/common/WXThread;->start()V

    .line 183
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/taobao/weex/common/WXThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/taobao/weex/common/WXThread;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/os/Handler$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "priority",
            "callback"
        }
    .end annotation

    .line 170
    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 171
    invoke-virtual {p0}, Lcom/taobao/weex/common/WXThread;->start()V

    .line 172
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/taobao/weex/common/WXThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {p3}, Lcom/taobao/weex/common/WXThread;->secure(Landroid/os/Handler$Callback;)Landroid/os/Handler$Callback;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/taobao/weex/common/WXThread;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "callback"
        }
    .end annotation

    .line 159
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/taobao/weex/common/WXThread;->start()V

    .line 161
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/taobao/weex/common/WXThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p2}, Lcom/taobao/weex/common/WXThread;->secure(Landroid/os/Handler$Callback;)Landroid/os/Handler$Callback;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/taobao/weex/common/WXThread;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static secure(Landroid/os/Handler$Callback;)Landroid/os/Handler$Callback;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 141
    instance-of v0, p0, Lcom/taobao/weex/common/WXThread$SafeCallback;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    new-instance v0, Lcom/taobao/weex/common/WXThread$SafeCallback;

    invoke-direct {v0, p0}, Lcom/taobao/weex/common/WXThread$SafeCallback;-><init>(Landroid/os/Handler$Callback;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    const/4 v0, 0x0

    .line 129
    invoke-static {p0, v0, v0}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static secure(Ljava/lang/Runnable;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)Ljava/lang/Runnable;
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
            "runnableName"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 134
    instance-of v0, p0, Lcom/taobao/weex/common/WXThread$SafeRunnable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    new-instance v0, Lcom/taobao/weex/common/WXThread$SafeRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/weex/common/WXThread$SafeRunnable;-><init>(Ljava/lang/Runnable;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/taobao/weex/common/WXThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public isWXThreadAlive()Z
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/taobao/weex/common/WXThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/common/WXThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/common/WXThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public quit()Z
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/taobao/weex/common/WXThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 197
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 199
    :cond_0
    invoke-super {p0}, Landroid/os/HandlerThread;->quit()Z

    move-result v0

    return v0
.end method
