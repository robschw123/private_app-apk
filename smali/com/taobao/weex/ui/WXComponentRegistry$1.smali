.class Lcom/taobao/weex/ui/WXComponentRegistry$1;
.super Ljava/lang/Object;
.source "WXComponentRegistry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/WXComponentRegistry;->registerComponent(Ljava/util/Map;)Z
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

    .line 50
    iput-object p1, p0, Lcom/taobao/weex/ui/WXComponentRegistry$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    :goto_0
    iget-object v1, p0, Lcom/taobao/weex/ui/WXComponentRegistry$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/taobao/weex/ui/WXComponentRegistry$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 57
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/utils/cache/RegisterCache$ComponentCache;

    .line 58
    iget-object v2, v1, Lcom/taobao/weex/utils/cache/RegisterCache$ComponentCache;->componentInfo:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 60
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const-string v3, "type"

    .line 62
    iget-object v4, v1, Lcom/taobao/weex/utils/cache/RegisterCache$ComponentCache;->type:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "methods"

    .line 63
    iget-object v4, v1, Lcom/taobao/weex/utils/cache/RegisterCache$ComponentCache;->holder:Lcom/taobao/weex/ui/IFComponentHolder;

    invoke-interface {v4}, Lcom/taobao/weex/ui/IFComponentHolder;->getMethods()[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v3, v1, Lcom/taobao/weex/utils/cache/RegisterCache$ComponentCache;->type:Ljava/lang/String;

    iget-object v1, v1, Lcom/taobao/weex/utils/cache/RegisterCache$ComponentCache;->holder:Lcom/taobao/weex/ui/IFComponentHolder;

    invoke-static {v3, v1}, Lcom/taobao/weex/ui/WXComponentRegistry;->access$000(Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;)Z

    .line 65
    invoke-static {}, Lcom/taobao/weex/ui/WXComponentRegistry;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/taobao/weex/common/WXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 68
    invoke-virtual {v1}, Lcom/taobao/weex/common/WXException;->printStackTrace()V

    goto :goto_0

    .line 71
    :cond_1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/weex/WXSDKManager;->registerComponents(Ljava/util/List;)V

    return-void
.end method
