.class Lio/dcloud/feature/weex/extend/DCTabBarModule$5;
.super Ljava/lang/Object;
.source "DCTabBarModule.java"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/extend/DCTabBarModule;->onMaskClick(Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/extend/DCTabBarModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/extend/DCTabBarModule;Lcom/taobao/weex/bridge/JSCallback;)V
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

    .line 259
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCTabBarModule$5;->this$0:Lio/dcloud/feature/weex/extend/DCTabBarModule;

    iput-object p2, p0, Lio/dcloud/feature/weex/extend/DCTabBarModule$5;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pType",
            "pArgs"
        }
    .end annotation

    .line 262
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 263
    iget-object p2, p0, Lio/dcloud/feature/weex/extend/DCTabBarModule$5;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p2, p1}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
