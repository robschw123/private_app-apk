.class Lio/dcloud/feature/weex/extend/DCUniMPModule$2$1;
.super Ljava/lang/Object;
.source "DCUniMPModule.java"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/extend/DCUniMPModule$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/feature/weex/extend/DCUniMPModule$2;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/extend/DCUniMPModule$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$2$1;->this$1:Lio/dcloud/feature/weex/extend/DCUniMPModule$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
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

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "code"

    const-string v2, "type"

    if-ltz p1, :cond_0

    const-string p1, "success"

    .line 113
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 114
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const-string v3, "fail"

    .line 116
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 118
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "Unknown error"

    :goto_0
    const-string p2, "message"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :goto_1
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$2$1;->this$1:Lio/dcloud/feature/weex/extend/DCUniMPModule$2;

    iget-object p1, p1, Lio/dcloud/feature/weex/extend/DCUniMPModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz p1, :cond_2

    .line 122
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$2$1;->this$1:Lio/dcloud/feature/weex/extend/DCUniMPModule$2;

    iget-object p1, p1, Lio/dcloud/feature/weex/extend/DCUniMPModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
