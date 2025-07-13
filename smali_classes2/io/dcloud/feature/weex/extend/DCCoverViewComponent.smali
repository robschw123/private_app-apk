.class public Lio/dcloud/feature/weex/extend/DCCoverViewComponent;
.super Lcom/taobao/weex/ui/component/WXVContainer;
.source "DCCoverViewComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXVContainer<",
        "Landroid/view/ViewGroup;",
        ">;"
    }
.end annotation


# instance fields
.field CalloutMarkerIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final onDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private realView:Landroid/widget/FrameLayout;

.field private final throttle:Lio/dcloud/common/util/ThrottleUtil;


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

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXVContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 26
    new-instance p1, Lio/dcloud/common/util/ThrottleUtil;

    invoke-direct {p1}, Lio/dcloud/common/util/ThrottleUtil;-><init>()V

    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;->throttle:Lio/dcloud/common/util/ThrottleUtil;

    .line 27
    new-instance p1, Lio/dcloud/feature/weex/extend/DCCoverViewComponent$1;

    invoke-direct {p1, p0}, Lio/dcloud/feature/weex/extend/DCCoverViewComponent$1;-><init>(Lio/dcloud/feature/weex/extend/DCCoverViewComponent;)V

    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;->onDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 81
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;->CalloutMarkerIds:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/weex/extend/DCCoverViewComponent;)Lio/dcloud/common/util/ThrottleUtil;
    .locals 0

    .line 24
    iget-object p0, p0, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;->throttle:Lio/dcloud/common/util/ThrottleUtil;

    return-object p0
.end method

.method static synthetic access$100(Lio/dcloud/feature/weex/extend/DCCoverViewComponent;)Landroid/view/ViewTreeObserver$OnDrawListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;->onDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    return-object p0
.end method


# virtual methods
.method public addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "child",
            "index"
        }
    .end annotation

    .line 85
    instance-of v0, p1, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "markerId"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;->CalloutMarkerIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;->onDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 94
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVContainer;->addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V

    return-void
.end method

.method public getCalloutMarkerIds()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;->CalloutMarkerIds:Ljava/util/HashMap;

    return-object v0
.end method

.method public bridge synthetic getRealView()Landroid/view/View;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getRealView()Landroid/view/ViewGroup;
    .locals 1

    .line 74
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;->realView:Landroid/widget/FrameLayout;

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

    .line 24
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    const-string v1, "overflow"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    const-string v1, "overflowY"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    :cond_1
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;->realView:Landroid/widget/FrameLayout;

    const-string v0, "scroll"

    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 59
    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;->realView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 62
    :cond_2
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;->realView:Landroid/widget/FrameLayout;

    .line 64
    :goto_1
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    const-string v1, "slot"

    invoke-virtual {p1, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v1, "callout"

    .line 65
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x4

    .line 66
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 67
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;->onDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_3
    return-object v0
.end method

.method public remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "child",
            "destroy"
        }
    .end annotation

    .line 99
    instance-of v0, p1, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p2

    const-string v0, "marker-id"

    invoke-virtual {p2, v0}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 102
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;->CalloutMarkerIds:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 104
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;->CalloutMarkerIds:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    .line 109
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVContainer;->remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    return-void
.end method

.method public updateCallout()V
    .locals 2

    .line 113
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;->CalloutMarkerIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    instance-of v0, v0, Lio/dcloud/feature/weex/extend/IDCCoverViewUpdate;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    instance-of v0, v0, Lio/dcloud/feature/weex/adapter/IWeexMap;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex/extend/IDCCoverViewUpdate;

    .line 116
    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;->CalloutMarkerIds:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lio/dcloud/feature/weex/extend/IDCCoverViewUpdate;->update(Ljava/util/Map;)V

    .line 119
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lio/dcloud/feature/weex/extend/DCCoverViewComponent$2;

    invoke-direct {v1, p0}, Lio/dcloud/feature/weex/extend/DCCoverViewComponent$2;-><init>(Lio/dcloud/feature/weex/extend/DCCoverViewComponent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
