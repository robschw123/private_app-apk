.class Lcom/taobao/weex/bridge/WXModuleManager$1;
.super Ljava/lang/Object;
.source "WXModuleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXModuleManager;->registerModule(Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$iterator"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXModuleManager$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    :goto_0
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXModuleManager$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXModuleManager$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 84
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/utils/cache/RegisterCache$ModuleCache;

    .line 85
    iget-object v2, v1, Lcom/taobao/weex/utils/cache/RegisterCache$ModuleCache;->name:Ljava/lang/String;

    const-string v3, "dom"

    .line 86
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "Cannot registered module with name \'dom\'."

    .line 87
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->access$000()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->access$000()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WXComponentRegistry Duplicate the Module name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    .line 94
    :cond_1
    iget-object v3, v1, Lcom/taobao/weex/utils/cache/RegisterCache$ModuleCache;->factory:Lcom/taobao/weex/bridge/ModuleFactory;

    .line 96
    :try_start_0
    invoke-static {v2, v3}, Lcom/taobao/weex/bridge/WXModuleManager;->registerNativeModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;)Z
    :try_end_0
    .catch Lcom/taobao/weex/common/WXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerNativeModule"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 101
    :goto_1
    iget-boolean v1, v1, Lcom/taobao/weex/utils/cache/RegisterCache$ModuleCache;->global:Z

    if-eqz v1, :cond_2

    .line 103
    :try_start_1
    invoke-interface {v3}, Lcom/taobao/weex/bridge/ModuleFactory;->buildInstance()Lcom/taobao/weex/common/WXModule;

    move-result-object v1

    .line 104
    invoke-virtual {v1, v2}, Lcom/taobao/weex/common/WXModule;->setModuleName(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->access$100()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " class must have a default constructor without params. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    :cond_2
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->access$000()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    new-instance v4, Lcom/taobao/weex/bridge/ModuleFactoryImpl;

    invoke-direct {v4, v3}, Lcom/taobao/weex/bridge/ModuleFactoryImpl;-><init>(Lcom/taobao/weex/bridge/ModuleFactory;)V

    invoke-interface {v1, v2, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    :catchall_0
    invoke-interface {v3}, Lcom/taobao/weex/bridge/ModuleFactory;->getMethods()[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 118
    :cond_3
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/weex/WXSDKManager;->registerModules(Ljava/util/Map;)V

    return-void
.end method
