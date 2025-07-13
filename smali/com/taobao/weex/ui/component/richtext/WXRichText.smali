.class public Lcom/taobao/weex/ui/component/richtext/WXRichText;
.super Lcom/taobao/weex/ui/component/WXText;
.source "WXRichText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/richtext/WXRichText$Creator;,
        Lcom/taobao/weex/ui/component/richtext/WXRichText$RichTextContentBoxMeasurement;
    }
.end annotation


# instance fields
.field private nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;",
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

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXText;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 46
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/richtext/WXRichText;->nodes:Ljava/util/List;

    .line 87
    new-instance p1, Lcom/taobao/weex/ui/component/richtext/WXRichText$RichTextContentBoxMeasurement;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/richtext/WXRichText$RichTextContentBoxMeasurement;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/richtext/WXRichText;->setContentBoxMeasurement(Lcom/taobao/weex/layout/ContentBoxMeasurement;)V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/richtext/WXRichText;)Landroid/text/Spannable;
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/richtext/WXRichText;->toSpan()Landroid/text/Spannable;

    move-result-object p0

    return-object p0
.end method

.method private findRichNode(Ljava/lang/String;)Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/WXRichText;->nodes:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/WXRichText;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;

    .line 151
    invoke-virtual {v1, p1}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->findRichNode(Ljava/lang/String;)Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private toSpan()Landroid/text/Spannable;
    .locals 4

    .line 106
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 107
    iget-object v1, p0, Lcom/taobao/weex/ui/component/richtext/WXRichText;->nodes:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/taobao/weex/ui/component/richtext/WXRichText;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;

    const/4 v3, 0x1

    .line 109
    invoke-virtual {v2, v3}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->toSpan(I)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public AddChildNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ref",
            "nodeType",
            "parentRef",
            "styles",
            "attrs"
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
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/richtext/WXRichText;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/richtext/WXRichText;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getUIContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/richtext/WXRichText;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/richtext/WXRichText;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getUIContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/richtext/WXRichText;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/richtext/WXRichText;->getRef()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNodeManager;->createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;

    move-result-object p1

    .line 94
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 95
    iget-object p2, p0, Lcom/taobao/weex/ui/component/richtext/WXRichText;->nodes:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    :cond_0
    invoke-direct {p0, p3}, Lcom/taobao/weex/ui/component/richtext/WXRichText;->findRichNode(Ljava/lang/String;)Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 99
    invoke-virtual {p2, p1}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->addChildNode(Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;)V

    :cond_1
    :goto_0
    return-void
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

    .line 45
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/richtext/WXRichText;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/component/richtext/WXRichTextView;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/component/richtext/WXRichTextView;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 161
    new-instance v0, Lcom/taobao/weex/ui/component/richtext/WXRichTextView;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/component/richtext/WXRichTextView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXTextView;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "context"
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/richtext/WXRichText;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/component/richtext/WXRichTextView;

    move-result-object p1

    return-object p1
.end method

.method public removeChildNode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parentRef",
            "ref"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/WXRichText;->nodes:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ""

    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object p1, p0, Lcom/taobao/weex/ui/component/richtext/WXRichText;->nodes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;

    .line 119
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/taobao/weex/ui/component/richtext/WXRichText;->nodes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_1
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/richtext/WXRichText;->findRichNode(Ljava/lang/String;)Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 126
    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->removeChildNode(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public updateChildNodeAttrs(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ref",
            "attrs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/richtext/WXRichText;->findRichNode(Ljava/lang/String;)Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->updateAttrs(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public updateChildNodeStyles(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ref",
            "styles"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 133
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/richtext/WXRichText;->findRichNode(Ljava/lang/String;)Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->updateStyles(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
