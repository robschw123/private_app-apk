.class public interface abstract Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;
.super Ljava/lang/Object;
.source "IWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/IWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnErrorListener"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "message"
        }
    .end annotation
.end method
