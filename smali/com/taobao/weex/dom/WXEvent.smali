.class public Lcom/taobao/weex/dom/WXEvent;
.super Lio/dcloud/feature/uniapp/dom/AbsEvent;
.source "WXEvent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lio/dcloud/feature/uniapp/dom/AbsEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/taobao/weex/dom/WXEvent;
    .locals 2

    .line 31
    new-instance v0, Lcom/taobao/weex/dom/WXEvent;

    invoke-direct {v0}, Lcom/taobao/weex/dom/WXEvent;-><init>()V

    .line 32
    invoke-virtual {v0, p0}, Lcom/taobao/weex/dom/WXEvent;->addAll(Ljava/util/Collection;)Z

    .line 33
    invoke-virtual {p0}, Lcom/taobao/weex/dom/WXEvent;->getEventBindingArgs()Landroidx/collection/ArrayMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/taobao/weex/dom/WXEvent;->getEventBindingArgs()Landroidx/collection/ArrayMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->setEventBindingArgs(Landroidx/collection/ArrayMap;)V

    :cond_0
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->setEventBindingArgsValues(Landroidx/collection/ArrayMap;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lio/dcloud/feature/uniapp/dom/AbsEvent;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/taobao/weex/dom/WXEvent;->clone()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/taobao/weex/dom/WXEvent;->clone()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    return-object v0
.end method
