.class public Lcom/taobao/weex/base/SystemMessageHandler;
.super Landroid/os/Handler;
.source "SystemMessageHandler.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final SCHEDULED_WORK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SystemMessageHandler"


# instance fields
.field private mMessageMethodSetAsynchronous:Ljava/lang/reflect/Method;

.field private mMessagePumpDelegateNative:J


# direct methods
.method private constructor <init>(JZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messagePumpDelegateNative",
            "mainHandle"
        }
    .end annotation

    const-string v0, "SystemMessageHandler"

    if-eqz p3, :cond_0

    .line 43
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    :goto_0
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v1, 0x0

    .line 36
    iput-wide v1, p0, Lcom/taobao/weex/base/SystemMessageHandler;->mMessagePumpDelegateNative:J

    .line 44
    iput-wide p1, p0, Lcom/taobao/weex/base/SystemMessageHandler;->mMessagePumpDelegateNative:J

    :try_start_0
    const-string p1, "android.os.Message"

    .line 46
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string p2, "setAsynchronous"

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 47
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, p3, v1

    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/base/SystemMessageHandler;->mMessageMethodSetAsynchronous:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 54
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception while loading Message.setAsynchronous method: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception p1

    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to load Message.setAsynchronous method:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception p1

    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to find android.os.Message class:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static create(JZ)Lcom/taobao/weex/base/SystemMessageHandler;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messagePumpDelegateNative",
            "mainHandle"
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/taobao/weex/base/SystemMessageHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/weex/base/SystemMessageHandler;-><init>(JZ)V

    return-object v0
.end method

.method private native nativeRunWork(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegateNative"
        }
    .end annotation
.end method

.method private obtainAsyncMessage(I)Landroid/os/Message;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "what"
        }
    .end annotation

    .line 79
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 80
    iput p1, v0, Landroid/os/Message;->what:I

    return-object v0
.end method

.method private scheduleDelayedWork(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delayMillis"
        }
    .end annotation

    const/4 v0, 0x1

    .line 70
    invoke-direct {p0, v0}, Lcom/taobao/weex/base/SystemMessageHandler;->obtainAsyncMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/taobao/weex/base/SystemMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private scheduleWork()V
    .locals 1

    const/4 v0, 0x1

    .line 65
    invoke-direct {p0, v0}, Lcom/taobao/weex/base/SystemMessageHandler;->obtainAsyncMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/base/SystemMessageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private stop()V
    .locals 1

    const/4 v0, 0x1

    .line 75
    invoke-virtual {p0, v0}, Lcom/taobao/weex/base/SystemMessageHandler;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 104
    iget-wide v0, p0, Lcom/taobao/weex/base/SystemMessageHandler;->mMessagePumpDelegateNative:J

    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/base/SystemMessageHandler;->nativeRunWork(J)V

    return-void
.end method
