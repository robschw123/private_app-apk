.class public interface abstract Lcom/taobao/weex/utils/WXLogUtils$LogWatcher;
.super Ljava/lang/Object;
.source "WXLogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/WXLogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LogWatcher"
.end annotation


# virtual methods
.method public abstract onLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "level",
            "tag",
            "msg"
        }
    .end annotation
.end method
