.class Lcom/taobao/weex/ui/view/border/BorderUtil;
.super Ljava/lang/Object;
.source "BorderUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fetchFromSparseArray(Landroid/util/SparseIntArray;II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "array",
            "position",
            "fallback"
        }
    .end annotation

    if-nez p0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    sget-object p2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p2}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    :goto_0
    return p2
.end method

.method static updateSparseArray(Landroid/util/SparseIntArray;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "array",
            "position",
            "value"
        }
    .end annotation

    .line 36
    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 37
    sget-object p1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    sget-object p1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    sget-object p1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    sget-object p1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    sget-object p1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    :goto_0
    return-void
.end method
