.class Lcom/taobao/weex/ui/component/list/WXListComponent$3;
.super Ljava/lang/Object;
.source "WXListComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/WXListComponent;->createChildViewAt(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/WXListComponent;

.field final synthetic val$childComponent:Lcom/taobao/weex/ui/component/WXComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/WXListComponent;Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$childComponent"
        }
    .end annotation

    .line 312
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/WXListComponent$3;->this$0:Lcom/taobao/weex/ui/component/list/WXListComponent;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/list/WXListComponent$3;->val$childComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXListComponent$3;->this$0:Lcom/taobao/weex/ui/component/list/WXListComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/WXListComponent$3;->val$childComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->setHeaderView(Lcom/taobao/weex/ui/component/WXComponent;)V

    return-void
.end method
