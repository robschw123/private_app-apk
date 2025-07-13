.class public Lcom/taobao/weex/dom/CSSShorthand;
.super Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;
.source "CSSShorthand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/dom/CSSShorthand$CORNER;,
        Lcom/taobao/weex/dom/CSSShorthand$EDGE;,
        Lcom/taobao/weex/dom/CSSShorthand$WXCSSProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum<",
        "+",
        "Lcom/taobao/weex/dom/CSSShorthand$WXCSSProperty;",
        ">;>",
        "Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;-><init>()V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;-><init>([F)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/taobao/weex/dom/CSSShorthand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 48
    invoke-super {p0}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->clone()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/dom/CSSShorthand;

    return-object v0
.end method

.method public bridge synthetic clone()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Lcom/taobao/weex/dom/CSSShorthand;->clone()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Lcom/taobao/weex/dom/CSSShorthand;->clone()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    return-object v0
.end method
