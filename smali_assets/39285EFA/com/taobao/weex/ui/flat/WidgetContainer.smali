.class public abstract Lcom/taobao/weex/ui/flat/WidgetContainer;
.super Lcom/taobao/weex/ui/component/WXVContainer;
.source "WidgetContainer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/ViewGroup;",
        ">",
        "Lcom/taobao/weex/ui/component/WXVContainer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected widgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/flat/widget/Widget;",
            ">;"
        }
    .end annotation
.end field


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

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXVContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method private addFlatChild(Lcom/taobao/weex/ui/flat/widget/Widget;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widget",
            "index"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/WidgetContainer;->widgets:Ljava/util/List;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/flat/WidgetContainer;->widgets:Ljava/util/List;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/WidgetContainer;->widgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 91
    iget-object p2, p0, Lcom/taobao/weex/ui/flat/WidgetContainer;->widgets:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/WidgetContainer;->widgets:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 96
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/flat/WidgetContainer;->mountFlatGUI()V

    return-void
.end method


# virtual methods
.method public createChildViewAt(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcom/taobao/weex/ui/flat/WidgetContainer;->intendToBeFlatContainer()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/flat/WidgetContainer;->rearrangeIndexAndGetChild(I)Landroid/util/Pair;

    move-result-object p1

    .line 58
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 59
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    .line 61
    invoke-virtual {p0}, Lcom/taobao/weex/ui/flat/WidgetContainer;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getFlatUIContext()Lcom/taobao/weex/ui/flat/FlatGUIContext;

    move-result-object v1

    .line 62
    invoke-virtual {v1, p0}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getFlatComponentAncestor(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/WidgetContainer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {v1, p0}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getAndroidViewWidget(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    move-result-object v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v2, p0

    .line 66
    :cond_1
    invoke-virtual {v1, v0, v2}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->register(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/flat/WidgetContainer;)V

    .line 68
    instance-of v3, v0, Lcom/taobao/weex/ui/flat/FlatComponent;

    if-eqz v3, :cond_2

    move-object v3, v0

    check-cast v3, Lcom/taobao/weex/ui/flat/FlatComponent;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/taobao/weex/ui/flat/FlatComponent;->promoteToView(Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 69
    invoke-interface {v3}, Lcom/taobao/weex/ui/flat/FlatComponent;->getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/Widget;

    move-result-object v2

    goto :goto_0

    .line 71
    :cond_2
    new-instance v3, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    invoke-direct {v3, v1}, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;-><init>(Lcom/taobao/weex/ui/flat/FlatGUIContext;)V

    .line 72
    move-object v4, v3

    check-cast v4, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    invoke-virtual {v1, v0, v4}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->register(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;)V

    .line 73
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->createView()V

    .line 74
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;->setContentView(Landroid/view/View;)V

    .line 76
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Lcom/taobao/weex/ui/flat/WidgetContainer;->addSubView(Landroid/view/View;I)V

    move-object v2, v3

    .line 78
    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->register(Lcom/taobao/weex/ui/flat/widget/Widget;Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 79
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, v2, p1}, Lcom/taobao/weex/ui/flat/WidgetContainer;->addFlatChild(Lcom/taobao/weex/ui/flat/widget/Widget;I)V

    goto :goto_1

    .line 82
    :cond_3
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->createChildViewAt(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public intendToBeFlatContainer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract mountFlatGUI()V
.end method

.method protected abstract unmountFlatGUI()V
.end method
