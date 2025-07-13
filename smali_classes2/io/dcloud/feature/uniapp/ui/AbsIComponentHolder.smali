.class public interface abstract Lio/dcloud/feature/uniapp/ui/AbsIComponentHolder;
.super Ljava/lang/Object;
.source "AbsIComponentHolder.java"

# interfaces
.implements Lcom/taobao/weex/ui/ComponentCreator;
.implements Lcom/taobao/weex/bridge/JavascriptInvokable;


# virtual methods
.method public abstract getPropertyInvoker(Ljava/lang/String;)Lcom/taobao/weex/bridge/Invoker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation
.end method

.method public abstract loadIfNonLazy()V
.end method
