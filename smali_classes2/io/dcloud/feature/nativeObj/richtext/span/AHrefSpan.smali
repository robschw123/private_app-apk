.class public Lio/dcloud/feature/nativeObj/richtext/span/AHrefSpan;
.super Lio/dcloud/feature/nativeObj/richtext/span/FontSpan;

# interfaces
.implements Lio/dcloud/feature/nativeObj/richtext/span/ClickSpanAble;


# instance fields
.field mHref:Ljava/lang/String;

.field strOnClickEvent:Ljava/lang/String;


# direct methods
.method public constructor <init>(FIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lio/dcloud/feature/nativeObj/richtext/span/FontSpan;-><init>(FIIII)V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/richtext/span/AHrefSpan;->mHref:Ljava/lang/String;

    .line 5
    iput-object p6, p0, Lio/dcloud/feature/nativeObj/richtext/span/AHrefSpan;->strOnClickEvent:Ljava/lang/String;

    .line 6
    iput-object p7, p0, Lio/dcloud/feature/nativeObj/richtext/span/AHrefSpan;->mHref:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHref()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/span/AHrefSpan;->mHref:Ljava/lang/String;

    return-object v0
.end method

.method public getOnClickEvent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/span/AHrefSpan;->strOnClickEvent:Ljava/lang/String;

    return-object v0
.end method

.method public hasClickEvent()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/richtext/span/AHrefSpan;->getOnClickEvent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;Lio/dcloud/common/DHInterface/IWebview;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/richtext/span/AHrefSpan;->getOnClickEvent()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p2, p1}, Lio/dcloud/common/DHInterface/IWebview;->executeScript(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
