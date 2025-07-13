.class Lcom/taobao/weex/ui/component/richtext/WXRichText$RichTextContentBoxMeasurement;
.super Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;
.source "WXRichText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/richtext/WXRichText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RichTextContentBoxMeasurement"
.end annotation


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    return-void
.end method


# virtual methods
.method protected createSpanned(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 58
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/WXRichText$RichTextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/taobao/weex/ui/component/richtext/WXRichText$RichTextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getUIContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/WXRichText$RichTextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 59
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/taobao/weex/ui/component/richtext/WXRichText$RichTextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 61
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getUIContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/taobao/weex/ui/component/richtext/WXRichText$RichTextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 62
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/weex/ui/component/richtext/WXRichText$RichTextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 63
    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-static {v0, v2, v3, p1}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->parse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object p1

    .line 65
    invoke-static {v1}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->createSpanFlag(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/ui/component/richtext/WXRichText$RichTextContentBoxMeasurement;->updateSpannable(Landroid/text/Spannable;I)V

    return-object p1

    .line 68
    :cond_2
    new-instance p1, Landroid/text/SpannedString;

    const-string v0, ""

    invoke-direct {p1, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object p1

    .line 72
    :cond_3
    iget-object p1, p0, Lcom/taobao/weex/ui/component/richtext/WXRichText$RichTextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    check-cast p1, Lcom/taobao/weex/ui/component/richtext/WXRichText;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/richtext/WXRichText;->access$000(Lcom/taobao/weex/ui/component/richtext/WXRichText;)Landroid/text/Spannable;

    move-result-object p1

    .line 73
    invoke-static {v1}, Lcom/taobao/weex/ui/component/richtext/node/RichTextNode;->createSpanFlag(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/ui/component/richtext/WXRichText$RichTextContentBoxMeasurement;->updateSpannable(Landroid/text/Spannable;I)V

    return-object p1
.end method
