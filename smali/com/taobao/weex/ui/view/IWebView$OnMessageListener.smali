.class public interface abstract Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;
.super Ljava/lang/Object;
.source "IWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/IWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMessageListener"
.end annotation


# virtual methods
.method public abstract onMessage(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
