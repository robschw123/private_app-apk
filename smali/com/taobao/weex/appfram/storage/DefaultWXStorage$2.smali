.class Lcom/taobao/weex/appfram/storage/DefaultWXStorage$2;
.super Ljava/lang/Object;
.source "DefaultWXStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->getItem(Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$key",
            "val$listener"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$2;->this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    iput-object p2, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$2;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$2;->val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$2;->this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    iget-object v1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$2;->val$key:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->access$100(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->getItemResult(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$2;->val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;

    if-nez v1, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-interface {v1, v0}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;->onReceived(Ljava/util/Map;)V

    return-void
.end method
