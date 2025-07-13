.class public Lcom/taobao/weex/ui/component/WXDiv;
.super Lcom/taobao/weex/ui/flat/WidgetContainer;
.source "WXDiv.java"

# interfaces
.implements Lcom/taobao/weex/ui/flat/FlatComponent;


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/WXDiv$Ceator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/flat/WidgetContainer<",
        "Lcom/taobao/weex/ui/view/WXFrameLayout;",
        ">;",
        "Lcom/taobao/weex/ui/flat/FlatComponent<",
        "Lcom/taobao/weex/ui/flat/widget/WidgetGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private mWidgetGroup:Lcom/taobao/weex/ui/flat/widget/WidgetGroup;


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

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/flat/WidgetContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instance",
            "parent",
            "instanceId",
            "isLazy",
            "basicComponentData"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2, p5}, Lcom/taobao/weex/ui/component/WXDiv;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/Widget;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXDiv;->getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/WidgetGroup;

    move-result-object v0

    return-object v0
.end method

.method public getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/WidgetGroup;
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXDiv;->mWidgetGroup:Lcom/taobao/weex/ui/flat/widget/WidgetGroup;

    if-nez v0, :cond_1

    .line 83
    new-instance v0, Lcom/taobao/weex/ui/flat/widget/WidgetGroup;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXDiv;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getFlatUIContext()Lcom/taobao/weex/ui/flat/FlatGUIContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/weex/ui/flat/widget/WidgetGroup;-><init>(Lcom/taobao/weex/ui/flat/FlatGUIContext;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXDiv;->mWidgetGroup:Lcom/taobao/weex/ui/flat/widget/WidgetGroup;

    const/4 v0, 0x0

    .line 84
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXDiv;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 85
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXDiv;->createChildViewAt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXDiv;->mountFlatGUI()V

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXDiv;->mWidgetGroup:Lcom/taobao/weex/ui/flat/widget/WidgetGroup;

    return-object v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "context"
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXDiv;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXFrameLayout;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXFrameLayout;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/taobao/weex/ui/view/WXFrameLayout;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/WXFrameLayout;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {v0, p0}, Lcom/taobao/weex/ui/view/WXFrameLayout;->holdComponent(Lcom/taobao/weex/ui/component/WXDiv;)V

    return-object v0
.end method

.method public intendToBeFlatContainer()Z
    .locals 2

    .line 115
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXDiv;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getFlatUIContext()Lcom/taobao/weex/ui/flat/FlatGUIContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->isFlatUIEnabled(Lcom/taobao/weex/ui/component/WXComponent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/taobao/weex/ui/component/WXDiv;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVirtualComponent()Z
    .locals 2

    const/4 v0, 0x1

    .line 120
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXDiv;->promoteToView(Z)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method protected mountFlatGUI()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXDiv;->widgets:Ljava/util/List;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXDiv;->widgets:Ljava/util/List;

    :cond_0
    const/4 v0, 0x1

    .line 97
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXDiv;->promoteToView(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXDiv;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXDiv;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXFrameLayout;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXDiv;->widgets:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXFrameLayout;->mountFlatGUI(Ljava/util/List;)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXDiv;->mWidgetGroup:Lcom/taobao/weex/ui/flat/widget/WidgetGroup;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXDiv;->widgets:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/flat/widget/WidgetGroup;->replaceAll(Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public promoteToView(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checkAncestor"
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXDiv;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getFlatUIContext()Lcom/taobao/weex/ui/flat/FlatGUIContext;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXDiv;->intendToBeFlatContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXDiv;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getFlatUIContext()Lcom/taobao/weex/ui/flat/FlatGUIContext;

    move-result-object v0

    const-class v2, Lcom/taobao/weex/ui/component/WXDiv;

    invoke-virtual {v0, p0, p1, v2}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->promoteToView(Lcom/taobao/weex/ui/component/WXComponent;ZLjava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public unmountFlatGUI()V
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXDiv;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXDiv;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXFrameLayout;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXFrameLayout;->unmountFlatGUI()V

    :cond_0
    return-void
.end method
