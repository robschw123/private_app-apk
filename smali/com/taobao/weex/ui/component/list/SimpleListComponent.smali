.class public Lcom/taobao/weex/ui/component/list/SimpleListComponent;
.super Lcom/taobao/weex/ui/component/list/BasicListComponent;
.source "SimpleListComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/list/BasicListComponent<",
        "Lcom/taobao/weex/ui/component/list/SimpleRecyclerView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instance",
            "parent",
            "basicComponentData"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/list/BasicListComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic generateListView(Landroid/content/Context;I)Landroid/view/ViewGroup;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "context",
            "orientation"
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/SimpleListComponent;->generateListView(Landroid/content/Context;I)Lcom/taobao/weex/ui/component/list/SimpleRecyclerView;

    move-result-object p1

    return-object p1
.end method

.method protected generateListView(Landroid/content/Context;I)Lcom/taobao/weex/ui/component/list/SimpleRecyclerView;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "orientation"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/taobao/weex/ui/component/list/SimpleRecyclerView;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/component/list/SimpleRecyclerView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 42
    invoke-virtual {v0, p1, v1, p2}, Lcom/taobao/weex/ui/component/list/SimpleRecyclerView;->initView(Landroid/content/Context;II)V

    return-object v0
.end method
