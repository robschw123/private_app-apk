.class Lcom/taobao/weex/appfram/storage/WXStorageModule$6;
.super Ljava/lang/Object;
.source "WXStorageModule.java"

# interfaces
.implements Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/storage/WXStorageModule;->setItemPersistent(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/storage/WXStorageModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/storage/WXStorageModule;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$callback"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$6;->this$0:Lcom/taobao/weex/appfram/storage/WXStorageModule;

    iput-object p2, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$6;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule$6;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_0

    .line 167
    invoke-interface {v0, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
