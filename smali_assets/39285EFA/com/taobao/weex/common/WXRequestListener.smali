.class public interface abstract Lcom/taobao/weex/common/WXRequestListener;
.super Ljava/lang/Object;
.source "WXRequestListener.java"


# virtual methods
.method public abstract onError(ILjava/lang/Object;Lcom/taobao/weex/common/WXResponse;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestType",
            "context",
            "response"
        }
    .end annotation
.end method

.method public abstract onSuccess(ILjava/lang/Object;Lcom/taobao/weex/common/WXResponse;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestType",
            "context",
            "response"
        }
    .end annotation
.end method
