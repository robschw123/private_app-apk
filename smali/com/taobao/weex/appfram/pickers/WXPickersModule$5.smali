.class Lcom/taobao/weex/appfram/pickers/WXPickersModule$5;
.super Ljava/lang/Object;
.source "WXPickersModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/pickers/WXPickersModule;->performSinglePick(Ljava/util/List;Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/pickers/WXPickersModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/pickers/WXPickersModule;Lcom/taobao/weex/bridge/JSCallback;)V
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

    .line 217
    iput-object p1, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$5;->this$0:Lcom/taobao/weex/appfram/pickers/WXPickersModule;

    iput-object p2, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$5;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "which"
        }
    .end annotation

    .line 221
    new-instance p1, Ljava/util/HashMap;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    const-string p2, "result"

    const-string v0, "success"

    .line 222
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object p2, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$5;->this$0:Lcom/taobao/weex/appfram/pickers/WXPickersModule;

    invoke-static {p2}, Lcom/taobao/weex/appfram/pickers/WXPickersModule;->access$000(Lcom/taobao/weex/appfram/pickers/WXPickersModule;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "data"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object p2, p0, Lcom/taobao/weex/appfram/pickers/WXPickersModule$5;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    return-void
.end method
