.class public interface abstract Lcom/taobao/weex/performance/IWXApmMonitorAdapter;
.super Ljava/lang/Object;
.source "IWXApmMonitorAdapter.java"


# virtual methods
.method public abstract addProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation
.end method

.method public abstract addStats(Ljava/lang/String;D)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation
.end method

.method public abstract onAppear()V
.end method

.method public abstract onDisappear()V
.end method

.method public abstract onEnd()V
.end method

.method public abstract onEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation
.end method

.method public abstract onStage(Ljava/lang/String;J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "timestamp"
        }
    .end annotation
.end method

.method public abstract onStart(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instanceId"
        }
    .end annotation
.end method

.method public abstract onSubProcedureEvent(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "procedureName",
            "eventName"
        }
    .end annotation
.end method

.method public abstract onSubProcedureStage(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "procedureName",
            "stageName"
        }
    .end annotation
.end method

.method public abstract parseReportUrl(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originUrl"
        }
    .end annotation
.end method

.method public abstract setSubProcedureProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "procedureName",
            "name",
            "value"
        }
    .end annotation
.end method

.method public abstract setSubProcedureStats(Ljava/lang/String;Ljava/lang/String;D)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "procedureName",
            "name",
            "value"
        }
    .end annotation
.end method
