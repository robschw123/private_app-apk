.class public Lcom/taobao/weex/dom/WXCustomStyleSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "WXCustomStyleSpan.java"


# instance fields
.field private final mFontFamily:Ljava/lang/String;

.field private final mStyle:I

.field private final mWeight:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fontStyle",
            "fontWeight",
            "fontFamily"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 33
    iput p1, p0, Lcom/taobao/weex/dom/WXCustomStyleSpan;->mStyle:I

    .line 34
    iput p2, p0, Lcom/taobao/weex/dom/WXCustomStyleSpan;->mWeight:I

    .line 35
    iput-object p3, p0, Lcom/taobao/weex/dom/WXCustomStyleSpan;->mFontFamily:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFontFamily()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/taobao/weex/dom/WXCustomStyleSpan;->mFontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()I
    .locals 2

    .line 52
    iget v0, p0, Lcom/taobao/weex/dom/WXCustomStyleSpan;->mStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public getWeight()I
    .locals 2

    .line 59
    iget v0, p0, Lcom/taobao/weex/dom/WXCustomStyleSpan;->mWeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ds"
        }
    .end annotation

    .line 40
    iget v0, p0, Lcom/taobao/weex/dom/WXCustomStyleSpan;->mStyle:I

    iget v1, p0, Lcom/taobao/weex/dom/WXCustomStyleSpan;->mWeight:I

    iget-object v2, p0, Lcom/taobao/weex/dom/WXCustomStyleSpan;->mFontFamily:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/taobao/weex/utils/TypefaceUtil;->applyFontStyle(Landroid/graphics/Paint;IILjava/lang/String;)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paint"
        }
    .end annotation

    .line 45
    iget v0, p0, Lcom/taobao/weex/dom/WXCustomStyleSpan;->mStyle:I

    iget v1, p0, Lcom/taobao/weex/dom/WXCustomStyleSpan;->mWeight:I

    iget-object v2, p0, Lcom/taobao/weex/dom/WXCustomStyleSpan;->mFontFamily:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/taobao/weex/utils/TypefaceUtil;->applyFontStyle(Landroid/graphics/Paint;IILjava/lang/String;)V

    return-void
.end method
