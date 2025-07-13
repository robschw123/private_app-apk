.class public Lcom/taobao/weex/dom/TextDecorationSpan;
.super Landroid/text/style/CharacterStyle;
.source "TextDecorationSpan.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field private final mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/component/WXTextDecoration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wxTextDecoration"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/taobao/weex/dom/TextDecorationSpan;->mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tp"
        }
    .end annotation

    .line 40
    sget-object v0, Lcom/taobao/weex/dom/TextDecorationSpan$1;->$SwitchMap$com$taobao$weex$ui$component$WXTextDecoration:[I

    iget-object v1, p0, Lcom/taobao/weex/dom/TextDecorationSpan;->mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXTextDecoration;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 51
    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setStrikeThruText(Z)V

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 47
    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setStrikeThruText(Z)V

    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 43
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setStrikeThruText(Z)V

    :goto_0
    return-void
.end method
