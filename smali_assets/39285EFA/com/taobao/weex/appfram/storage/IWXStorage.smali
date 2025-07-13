.class interface abstract Lcom/taobao/weex/appfram/storage/IWXStorage;
.super Ljava/lang/Object;
.source "IWXStorage.java"


# virtual methods
.method public abstract getAllKeys(Lcom/taobao/weex/bridge/JSCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract getItem(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "callback"
        }
    .end annotation
.end method

.method public abstract length(Lcom/taobao/weex/bridge/JSCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract removeItem(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "callback"
        }
    .end annotation
.end method

.method public abstract setItem(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "value",
            "callback"
        }
    .end annotation
.end method

.method public abstract setItemPersistent(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "value",
            "callback"
        }
    .end annotation
.end method
