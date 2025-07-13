.class public abstract Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;
.super Ljava/lang/Object;
.source "RichTextNode.java"


# static fields
.field public static final ATTR:Ljava/lang/String; = "attr"

.field public static final CHILDREN:Ljava/lang/String; = "children"

.field public static final ITEM_CLICK:Ljava/lang/String; = "itemclick"

.field private static final MAX_LEVEL:I = 0xff

.field public static final PSEUDO_REF:Ljava/lang/String; = "pseudoRef"

.field public static final STYLE:Ljava/lang/String; = "style"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final VALUE:Ljava/lang/String; = "value"


# instance fields
.field protected attr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;",
            ">;"
        }
    .end annotation
.end field

.field protected final mComponentRef:Ljava/lang/String;

.field protected final mContext:Landroid/content/Context;

.field protected final mInstanceId:Ljava/lang/String;

.field protected final mRef:Ljava/lang/String;

.field protected style:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "instanceId",
            "componentRef"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->mInstanceId:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->mComponentRef:Ljava/lang/String;

    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->mRef:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "instanceId",
            "componentRef",
            "ref",
            "styles",
            "attrs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->mInstanceId:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->mComponentRef:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->mRef:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz p5, :cond_0

    .line 82
    iput-object p5, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    goto :goto_0

    .line 85
    :cond_0
    new-instance p2, Landroidx/collection/ArrayMap;

    invoke-direct {p2, p1}, Landroidx/collection/ArrayMap;-><init>(I)V

    iput-object p2, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    :goto_0
    if-eqz p6, :cond_1

    .line 88
    iput-object p6, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->attr:Ljava/util/Map;

    goto :goto_1

    .line 90
    :cond_1
    new-instance p2, Landroidx/collection/ArrayMap;

    invoke-direct {p2, p1}, Landroidx/collection/ArrayMap;-><init>(I)V

    iput-object p2, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->attr:Ljava/util/Map;

    .line 92
    :goto_1
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->children:Ljava/util/List;

    return-void
.end method

.method private createCustomStyleSpan()Lcom/taobao/weex/dom/WXCustomStyleSpan;
    .locals 5

    .line 261
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    const-string v1, "fontWeight"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    invoke-static {v0}, Lcom/taobao/weex/dom/WXStyle;->getFontWeight(Ljava/util/Map;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 264
    :goto_0
    iget-object v2, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    const-string v3, "fontStyle"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 265
    iget-object v2, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    invoke-static {v2}, Lcom/taobao/weex/dom/WXStyle;->getFontStyle(Ljava/util/Map;)I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    .line 267
    :goto_1
    iget-object v3, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    const-string v4, "fontFamily"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 268
    iget-object v3, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    invoke-static {v3}, Lcom/taobao/weex/dom/WXStyle;->getFontFamily(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v4

    :goto_2
    if-ne v0, v1, :cond_4

    if-ne v2, v1, :cond_4

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    return-object v4

    .line 273
    :cond_4
    :goto_3
    new-instance v1, Lcom/taobao/weex/dom/WXCustomStyleSpan;

    invoke-direct {v1, v2, v0, v3}, Lcom/taobao/weex/dom/WXCustomStyleSpan;-><init>(IILjava/lang/String;)V

    return-object v1
.end method

.method private static createPriorityFlag(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    sub-int/2addr v0, p0

    shl-int/lit8 p0, v0, 0x10

    goto :goto_0

    :cond_0
    const/high16 p0, 0xff0000

    :goto_0
    return p0
.end method

.method public static createSpanFlag(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 119
    invoke-static {p0}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->createPriorityFlag(I)I

    move-result p0

    or-int/lit8 p0, p0, 0x11

    return p0
.end method

.method public static parse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "instanceId",
            "componentRef",
            "json"
        }
    .end annotation

    .line 98
    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 102
    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 104
    :goto_0
    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 105
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 107
    invoke-static {p0, p1, p2, v2}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNodeManager;->createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 109
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_1
    invoke-static {v0}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->parse(Ljava/util/List;)Landroid/text/Spannable;

    move-result-object p0

    return-object p0

    .line 115
    :cond_2
    new-instance p0, Landroid/text/SpannableString;

    const-string p1, ""

    invoke-direct {p0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method private static parse(Ljava/util/List;)Landroid/text/Spannable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;",
            ">;)",
            "Landroid/text/Spannable;"
        }
    .end annotation

    .line 237
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 238
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;

    const/4 v2, 0x1

    .line 239
    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->toSpan(I)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public addChildNode(Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->children:Ljava/util/List;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->children:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->isInternalNode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public findRichNode(Ljava/lang/String;)Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->mRef:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->children:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;

    .line 285
    invoke-virtual {v1, p1}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->findRichNode(Ljava/lang/String;)Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRef()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->mRef:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract isInternalNode()Z
.end method

.method final parse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "instanceId",
            "componentRef",
            "jsonObject"
        }
    .end annotation

    const-string v0, "style"

    .line 135
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 136
    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    .line 137
    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 139
    :cond_0
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0, v1}, Landroidx/collection/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    :goto_0
    const-string v0, "attr"

    .line 142
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 143
    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroidx/collection/ArrayMap;-><init>(I)V

    iput-object v2, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->attr:Ljava/util/Map;

    .line 144
    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 146
    :cond_1
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0, v1}, Landroidx/collection/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->attr:Ljava/util/Map;

    :goto_1
    const-string v0, "children"

    .line 149
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->children:Ljava/util/List;

    .line 151
    :goto_2
    invoke-virtual {p4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 152
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 153
    invoke-static {p1, p2, p3, v0}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNodeManager;->createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 155
    iget-object v2, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->children:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 159
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->children:Ljava/util/List;

    :cond_4
    return-void
.end method

.method public removeChildNode(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->children:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;

    .line 174
    iget-object v2, v1, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->mRef:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->children:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 179
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public toSpan(I)Landroid/text/Spannable;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 245
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 246
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 247
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->isInternalNode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->children:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 248
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;

    add-int/lit8 v3, p1, 0x1

    .line 249
    invoke-virtual {v2, v3}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->toSpan(I)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->updateSpans(Landroid/text/SpannableStringBuilder;I)V

    return-object v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public updateAttrs(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->attr:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->attr:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method protected updateSpans(Landroid/text/SpannableStringBuilder;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "spannableStringBuilder",
            "level"
        }
    .end annotation

    .line 195
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 197
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 199
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->createCustomStyleSpan()Lcom/taobao/weex/dom/WXCustomStyleSpan;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 201
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_0
    iget-object v2, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    const-string v3, "fontSize"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v3, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result v4

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v0

    invoke-static {v3, v4, v0}, Lcom/taobao/weex/dom/WXStyle;->getFontSize(Ljava/util/Map;IF)I

    move-result v0

    invoke-direct {v2, v0}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    const-string v2, "backgroundColor"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v2, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    const-string v2, "color"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    invoke-static {v2}, Lcom/taobao/weex/dom/WXStyle;->getTextColor(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_3
    invoke-static {p2}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->createSpanFlag(I)I

    move-result p2

    .line 221
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 222
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v1, v3, v2, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public updateStyles(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "styles"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 184
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
