.class Lcom/taobao/weex/appfram/storage/DefaultWXStorage$5;
.super Ljava/lang/Object;
.source "DefaultWXStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->getAllKeys(Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

.field final synthetic val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$listener"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$5;->this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    iput-object p2, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$5;->val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$5;->this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    invoke-static {v0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->access$400(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->getAllkeysResult(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$5;->val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;

    if-nez v1, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-interface {v1, v0}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;->onReceived(Ljava/util/Map;)V

    return-void
.end method
