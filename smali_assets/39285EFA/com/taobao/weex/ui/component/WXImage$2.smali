.class Lcom/taobao/weex/ui/component/WXImage$2;
.super Ljava/lang/Object;
.source "WXImage.java"

# interfaces
.implements Lcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXImage;->save(Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXImage;

.field final synthetic val$saveStatuCallback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXImage;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$saveStatuCallback"
        }
    .end annotation

    .line 463
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXImage$2;->this$0:Lcom/taobao/weex/ui/component/WXImage;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXImage$2;->val$saveStatuCallback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSaveFailed(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorDesc"
        }
    .end annotation

    .line 475
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXImage$2;->val$saveStatuCallback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_0

    .line 476
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 477
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "success"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "errorDesc"

    .line 478
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXImage$2;->val$saveStatuCallback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onSaveSucceed(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 466
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXImage$2;->val$saveStatuCallback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz p1, :cond_0

    .line 467
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x1

    .line 468
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "success"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXImage$2;->val$saveStatuCallback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {v0, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
