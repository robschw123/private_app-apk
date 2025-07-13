.class public interface abstract Lcom/taobao/weex/adapter/IWXConfigAdapter;
.super Ljava/lang/Object;
.source "IWXConfigAdapter.java"


# virtual methods
.method public abstract checkMode(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation
.end method

.method public abstract getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nameSpace",
            "key",
            "defaultValue"
        }
    .end annotation
.end method

.method public abstract getConfigWhenInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nameSpace",
            "key",
            "defaultValue"
        }
    .end annotation
.end method
