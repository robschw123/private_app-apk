.class Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;
.super Landroid/view/View;
.source "WXVContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXVContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoxShadowHost"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXVContainer;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/component/WXVContainer;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;->this$0:Lcom/taobao/weex/ui/component/WXVContainer;

    .line 127
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method
