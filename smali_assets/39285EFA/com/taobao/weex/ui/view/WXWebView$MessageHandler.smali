.class Lcom/taobao/weex/ui/view/WXWebView$MessageHandler;
.super Landroid/os/Handler;
.source "WXWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/WXWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageHandler"
.end annotation


# instance fields
.field private final mWv:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/weex/ui/view/WXWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/taobao/weex/ui/view/WXWebView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wv"
        }
    .end annotation

    .line 370
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 371
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView$MessageHandler;->mWv:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/ui/view/WXWebView;Lcom/taobao/weex/ui/view/WXWebView$1;)V
    .locals 0

    .line 367
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/WXWebView$MessageHandler;-><init>(Lcom/taobao/weex/ui/view/WXWebView;)V

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

    .line 377
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 378
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView$MessageHandler;->mWv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView$MessageHandler;->mWv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {v0}, Lcom/taobao/weex/ui/view/WXWebView;->access$200(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView$MessageHandler;->mWv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {v0}, Lcom/taobao/weex/ui/view/WXWebView;->access$200(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    invoke-interface {v0, p1}, Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;->onMessage(Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method
