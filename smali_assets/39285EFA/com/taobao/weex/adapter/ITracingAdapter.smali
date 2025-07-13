.class public interface abstract Lcom/taobao/weex/adapter/ITracingAdapter;
.super Ljava/lang/Object;
.source "ITracingAdapter.java"


# virtual methods
.method public abstract disable()V
.end method

.method public abstract enable()V
.end method

.method public abstract submitTracingEvent(Lcom/taobao/weex/tracing/WXTracing$TraceEvent;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation
.end method
