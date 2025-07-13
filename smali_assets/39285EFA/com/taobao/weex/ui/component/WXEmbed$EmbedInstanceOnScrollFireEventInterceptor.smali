.class Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;
.super Lcom/taobao/weex/instance/InstanceOnFireEventInterceptor;
.source "WXEmbed.java"

# interfaces
.implements Lcom/taobao/weex/common/OnWXScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXEmbed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmbedInstanceOnScrollFireEventInterceptor"
.end annotation


# instance fields
.field private firstLayerScroller:Lcom/taobao/weex/ui/component/WXComponent;

.field private mEmbed:Lcom/taobao/weex/ui/component/WXEmbed;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/component/WXEmbed;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "embed"
        }
    .end annotation

    .line 559
    invoke-direct {p0}, Lcom/taobao/weex/instance/InstanceOnFireEventInterceptor;-><init>()V

    .line 560
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->mEmbed:Lcom/taobao/weex/ui/component/WXEmbed;

    return-void
.end method

.method private findFirstLayerScroller()Lcom/taobao/weex/ui/component/WXComponent;
    .locals 5

    .line 604
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->mEmbed:Lcom/taobao/weex/ui/component/WXEmbed;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->mEmbed:Lcom/taobao/weex/ui/component/WXEmbed;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getRootComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 608
    instance-of v2, v0, Lcom/taobao/weex/ui/component/Scrollable;

    if-eqz v2, :cond_1

    return-object v0

    .line 611
    :cond_1
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 612
    invoke-interface {v2, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 613
    :cond_2
    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 614
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    if-nez v0, :cond_3

    goto :goto_1

    .line 618
    :cond_3
    instance-of v3, v0, Lcom/taobao/weex/ui/component/Scrollable;

    if-eqz v3, :cond_4

    return-object v0

    .line 621
    :cond_4
    instance-of v3, v0, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v3, :cond_2

    .line 622
    check-cast v0, Lcom/taobao/weex/ui/component/WXVContainer;

    const/4 v3, 0x0

    .line 623
    :goto_0
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 624
    invoke-virtual {v0, v3}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return-object v1
.end method

.method private initFirstLayerScroller()V
    .locals 3

    .line 587
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->firstLayerScroller:Lcom/taobao/weex/ui/component/WXComponent;

    if-nez v0, :cond_1

    .line 588
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->findFirstLayerScroller()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->firstLayerScroller:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_1

    .line 590
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->getListenEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 591
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->firstLayerScroller:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2, v1}, Lcom/taobao/weex/ui/component/WXComponent;->containsEvent(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 592
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->firstLayerScroller:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/taobao/weex/dom/WXEvent;->add(Ljava/lang/Object;)Z

    .line 593
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->firstLayerScroller:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2, v1}, Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onFireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "elementRef",
            "type",
            "params",
            "domChanges"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->mEmbed:Lcom/taobao/weex/ui/component/WXEmbed;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->mEmbed:Lcom/taobao/weex/ui/component/WXEmbed;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 571
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 574
    :cond_0
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->firstLayerScroller:Lcom/taobao/weex/ui/component/WXComponent;

    if-nez p1, :cond_1

    .line 575
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->initFirstLayerScroller()V

    .line 577
    :cond_1
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->firstLayerScroller:Lcom/taobao/weex/ui/component/WXComponent;

    if-nez p1, :cond_2

    return-void

    .line 580
    :cond_2
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 581
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->mEmbed:Lcom/taobao/weex/ui/component/WXEmbed;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->mEmbed:Lcom/taobao/weex/ui/component/WXEmbed;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXEmbed;->getRef()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/view/View;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "x",
            "y",
            "newState"
        }
    .end annotation

    return-void
.end method

.method public onScrolled(Landroid/view/View;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "x",
            "y"
        }
    .end annotation

    .line 634
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->firstLayerScroller:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz p1, :cond_0

    return-void

    .line 637
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->getListenEvents()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 638
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->initFirstLayerScroller()V

    :cond_1
    return-void
.end method

.method public resetFirstLaterScroller()V
    .locals 1

    const/4 v0, 0x0

    .line 564
    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedInstanceOnScrollFireEventInterceptor;->firstLayerScroller:Lcom/taobao/weex/ui/component/WXComponent;

    return-void
.end method
