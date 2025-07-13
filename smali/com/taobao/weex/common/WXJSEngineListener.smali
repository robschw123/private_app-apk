.class public interface abstract Lcom/taobao/weex/common/WXJSEngineListener;
.super Ljava/lang/Object;
.source "WXJSEngineListener.java"


# virtual methods
.method public abstract callback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "success",
            "instanceId",
            "funcId",
            "data"
        }
    .end annotation
.end method

.method public abstract createInstanceFailed(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instanceId"
        }
    .end annotation
.end method

.method public abstract createInstanceSuccess(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instanceId"
        }
    .end annotation
.end method

.method public abstract destroyInstanceFailed(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instanceId"
        }
    .end annotation
.end method

.method public abstract destroyInstanceSuccess(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instanceId"
        }
    .end annotation
.end method

.method public abstract fireEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "success",
            "instanceId",
            "ref",
            "type"
        }
    .end annotation
.end method

.method public abstract initFramework(ZLjava/lang/String;D)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "success",
            "version",
            "jslibSize"
        }
    .end annotation
.end method
