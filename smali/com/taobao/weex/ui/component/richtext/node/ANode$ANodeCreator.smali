.class Lcom/taobao/weex/ui/component/richtext/node/ANode$ANodeCreator;
.super Ljava/lang/Object;
.source "ANode.java"

# interfaces
.implements Lcom/taobao/weex/ui/component/richtext/node/RichTextNodeCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/richtext/node/ANode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ANodeCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taobao/weex/ui/component/richtext/node/RichTextNodeCreator<",
        "Lcom/taobao/weex/ui/component/richtext/node/ANode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/richtext/node/ANode;
    .locals 2
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

    .line 35
    new-instance v0, Lcom/taobao/weex/ui/component/richtext/node/ANode;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/taobao/weex/ui/component/richtext/node/ANode;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/ui/component/richtext/node/ANode$1;)V

    return-object v0
.end method

.method public createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/taobao/weex/ui/component/richtext/node/ANode;
    .locals 9
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
            ">;)",
            "Lcom/taobao/weex/ui/component/richtext/node/ANode;"
        }
    .end annotation

    .line 40
    new-instance v8, Lcom/taobao/weex/ui/component/richtext/node/ANode;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/taobao/weex/ui/component/richtext/node/ANode;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/taobao/weex/ui/component/richtext/node/ANode$1;)V

    return-object v8
.end method

.method public bridge synthetic createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "context",
            "instanceId",
            "componentRef"
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/richtext/node/ANode$ANodeCreator;->createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/richtext/node/ANode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000
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

    .line 31
    invoke-virtual/range {p0 .. p6}, Lcom/taobao/weex/ui/component/richtext/node/ANode$ANodeCreator;->createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/taobao/weex/ui/component/richtext/node/ANode;

    move-result-object p1

    return-object p1
.end method
