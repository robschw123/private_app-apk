.class Lcom/taobao/weex/ui/WXComponentRegistry$2;
.super Ljava/lang/Object;
.source "WXComponentRegistry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/WXComponentRegistry;->registerComponent(Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$componentInfo:Ljava/util/Map;

.field final synthetic val$holder:Lcom/taobao/weex/ui/IFComponentHolder;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$componentInfo",
            "val$type",
            "val$holder"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/taobao/weex/ui/WXComponentRegistry$2;->val$componentInfo:Ljava/util/Map;

    iput-object p2, p0, Lcom/taobao/weex/ui/WXComponentRegistry$2;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/ui/WXComponentRegistry$2;->val$holder:Lcom/taobao/weex/ui/IFComponentHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/WXComponentRegistry$2;->val$componentInfo:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const-string v1, "type"

    .line 97
    iget-object v2, p0, Lcom/taobao/weex/ui/WXComponentRegistry$2;->val$type:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "methods"

    .line 98
    iget-object v2, p0, Lcom/taobao/weex/ui/WXComponentRegistry$2;->val$holder:Lcom/taobao/weex/ui/IFComponentHolder;

    invoke-interface {v2}, Lcom/taobao/weex/ui/IFComponentHolder;->getMethods()[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v1, p0, Lcom/taobao/weex/ui/WXComponentRegistry$2;->val$type:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/ui/WXComponentRegistry$2;->val$holder:Lcom/taobao/weex/ui/IFComponentHolder;

    invoke-static {v1, v2}, Lcom/taobao/weex/ui/WXComponentRegistry;->access$000(Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;)Z

    .line 100
    invoke-static {v0}, Lcom/taobao/weex/ui/WXComponentRegistry;->access$200(Ljava/util/Map;)Z

    .line 101
    invoke-static {}, Lcom/taobao/weex/ui/WXComponentRegistry;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/taobao/weex/common/WXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "register component error:"

    .line 103
    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
