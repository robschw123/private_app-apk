.class public interface abstract Lcom/taobao/weex/bridge/Invoker;
.super Ljava/lang/Object;
.source "Invoker.java"


# virtual methods
.method public abstract getParameterTypes()[Ljava/lang/reflect/Type;
.end method

.method public varargs abstract invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "receiver",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method public abstract isRunOnUIThread()Z
.end method
