.class public interface abstract Lcom/taobao/weex/adapter/IWXHttpAdapter;
.super Ljava/lang/Object;
.source "IWXHttpAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;
    }
.end annotation


# virtual methods
.method public abstract sendRequest(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "request",
            "listener"
        }
    .end annotation
.end method
