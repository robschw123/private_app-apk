.class public Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;
.super Lcom/taobao/weex/layout/ContentBoxMeasurement;
.source "TextContentBoxMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$SetSpanOperation;
    }
.end annotation


# static fields
.field private static final DUMMY_CANVAS:Landroid/graphics/Canvas;

.field private static final ELLIPSIS:Ljava/lang/String; = "\u2026"


# instance fields
.field private atomicReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/text/Layout;",
            ">;"
        }
    .end annotation
.end field

.field private hasBeenMeasured:Z

.field private layout:Landroid/text/Layout;

.field protected mAlignment:Landroid/text/Layout$Alignment;

.field protected mColor:I

.field protected mFontFamily:Ljava/lang/String;

.field protected mFontSize:I

.field protected mFontStyle:I

.field protected mFontWeight:I

.field protected mIsColorSet:Z

.field protected mLineHeight:I

.field private mNumberOfLines:I

.field private mText:Ljava/lang/String;

.field protected mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

.field protected mTextPaint:Landroid/text/TextPaint;

.field private previousWidth:F

.field private spanned:Landroid/text/Spanned;

.field private textOverflow:Landroid/text/TextUtils$TruncateAt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->DUMMY_CANVAS:Landroid/graphics/Canvas;

    return-void
.end method

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

    .line 72
    invoke-direct {p0, p1}, Lcom/taobao/weex/layout/ContentBoxMeasurement;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    const/4 p1, 0x0

    .line 97
    iput-boolean p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mIsColorSet:Z

    .line 98
    iput-boolean p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->hasBeenMeasured:Z

    const/4 p1, -0x1

    .line 100
    iput p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontStyle:I

    .line 101
    iput p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontWeight:I

    .line 102
    iput p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mNumberOfLines:I

    .line 103
    iput p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontSize:I

    .line 104
    iput p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mLineHeight:I

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 105
    iput p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->previousWidth:F

    const/4 p1, 0x0

    .line 106
    iput-object p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontFamily:Ljava/lang/String;

    .line 107
    iput-object p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mText:Ljava/lang/String;

    .line 110
    sget-object p1, Lcom/taobao/weex/ui/component/WXTextDecoration;->NONE:Lcom/taobao/weex/ui/component/WXTextDecoration;

    iput-object p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

    .line 116
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->atomicReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->atomicReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    return-object p0
.end method

.method private adjustSpansRange(Landroid/text/Spanned;Landroid/text/Spannable;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "beforeTruncate",
            "afterTruncate"
        }
    .end annotation

    .line 465
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 466
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 467
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 468
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-nez v5, :cond_0

    .line 469
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v5

    if-ne v6, v5, :cond_0

    .line 470
    invoke-interface {p2, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 471
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v5

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p2, v4, v2, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createLayout(FLandroid/text/Layout;)Landroid/text/Layout;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "textWidth",
            "previousLayout"
        }
    .end annotation

    .line 360
    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->previousWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 361
    :cond_0
    new-instance p2, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    iget-object v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v4, v0

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 366
    :cond_1
    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mNumberOfLines:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    if-lez v0, :cond_4

    invoke-virtual {p2}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 368
    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mNumberOfLines:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_3

    sub-int/2addr v0, v2

    .line 370
    invoke-virtual {p2, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    .line 371
    iget v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mNumberOfLines:I

    sub-int/2addr v3, v2

    invoke-virtual {p2, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    if-ge v0, v2, :cond_4

    if-lez v0, :cond_2

    .line 376
    new-instance p2, Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    invoke-interface {v3, v1, v0}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 378
    :cond_2
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 380
    :goto_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    invoke-interface {v3, v0, v2}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int p1, v4

    iget-object v4, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->textOverflow:Landroid/text/TextUtils$TruncateAt;

    invoke-direct {p0, v1, v0, p1, v4}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->truncate(Landroid/text/Editable;Landroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 383
    iget-object p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->adjustSpansRange(Landroid/text/Spanned;Landroid/text/Spannable;)V

    .line 384
    iput-object p2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    .line 386
    new-instance p1, Landroid/text/StaticLayout;

    iget-object v5, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    iget-object v6, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v7, v0

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object p1

    :cond_3
    float-to-double p1, p1

    .line 392
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 393
    iget-object p2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    .line 394
    invoke-interface {p2}, Landroid/text/Spanned;->length()I

    move-result v0

    iget-object v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {p2, v1, v0, v3, p1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p2

    .line 395
    invoke-virtual {p2, v2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object p2

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 396
    invoke-virtual {p2, v0}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object p2

    .line 397
    invoke-virtual {p2, p1}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 399
    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p1

    return-object p1

    :cond_4
    return-object p2
.end method

.method private getTextWidth(Landroid/text/TextPaint;FZ)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "textPaint",
            "outerWidth",
            "forceToDesired"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mText:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    if-eqz p3, :cond_2

    goto :goto_0

    .line 337
    :cond_2
    iget-object p3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    invoke-static {p3, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result p1

    .line 338
    invoke-static {p2}, Lcom/taobao/weex/utils/WXUtils;->isUndefined(F)Z

    move-result p3

    if-nez p3, :cond_3

    cmpg-float p3, p1, p2

    if-gez p3, :cond_4

    :cond_3
    move p2, p1

    :cond_4
    :goto_0
    return p2
.end method

.method private recalculateLayout(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "computedWidth"
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/taobao/weex/utils/WXDomUtils;->getContentWidth(Lcom/taobao/weex/dom/CSSShorthand;Lcom/taobao/weex/dom/CSSShorthand;F)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    .line 479
    iget-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mText:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->createSpanned(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    if-eqz v1, :cond_0

    .line 481
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->createLayout(FLandroid/text/Layout;)Landroid/text/Layout;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    .line 482
    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->previousWidth:F

    goto :goto_0

    .line 484
    :cond_0
    iput v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->previousWidth:F

    :cond_1
    :goto_0
    return-void
.end method

.method private swap()V
    .locals 2

    .line 513
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 514
    iget-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->atomicReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 515
    iput-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    :cond_0
    const/4 v0, 0x0

    .line 517
    iput-boolean v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->hasBeenMeasured:Z

    return-void
.end method

.method private truncate(Landroid/text/Editable;Landroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;)Landroid/text/Spanned;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "paint",
            "desired",
            "truncateAt"
        }
    .end annotation

    move-object v8, p1

    .line 424
    new-instance v9, Landroid/text/SpannedString;

    const-string v0, ""

    invoke-direct {v9, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 425
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v10, 0x1

    if-eqz p4, :cond_1

    const-string/jumbo v0, "\u2026"

    .line 427
    invoke-interface {p1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 428
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 429
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 430
    invoke-interface {p1, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 431
    invoke-interface {p1, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-nez v5, :cond_0

    .line 432
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v5

    sub-int/2addr v5, v10

    if-ne v6, v5, :cond_0

    .line 433
    invoke-interface {p1, v4}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 434
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-interface {p1, v4}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p1, v4, v2, v5, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 442
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-le v0, v10, :cond_3

    .line 443
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    sub-int/2addr v0, v10

    if-eqz p4, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    add-int/lit8 v1, v0, 0x1

    .line 447
    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 448
    new-instance v11, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 449
    invoke-virtual {v11}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-gt v0, v10, :cond_1

    goto :goto_1

    :cond_3
    move-object v8, v9

    :goto_1
    return-object v8
.end method

.method private updateStyleAndText()V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->updateStyleImp(Ljava/util/Map;)V

    .line 205
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/dom/WXAttr;->getValue(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mText:Ljava/lang/String;

    return-void
.end method

.method private updateStyleImp(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
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

    if-eqz p1, :cond_9

    const-string v0, "lines"

    .line 234
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 235
    invoke-static {p1}, Lcom/taobao/weex/dom/WXStyle;->getLines(Ljava/util/Map;)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 236
    :goto_0
    iput v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mNumberOfLines:I

    :cond_1
    const-string v0, "fontSize"

    .line 238
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result v0

    iget-object v2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v2

    invoke-static {p1, v0, v2}, Lcom/taobao/weex/dom/WXStyle;->getFontSize(Ljava/util/Map;IF)I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontSize:I

    :cond_2
    const-string v0, "fontWeight"

    .line 241
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    invoke-static {p1}, Lcom/taobao/weex/dom/WXStyle;->getFontWeight(Ljava/util/Map;)I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontWeight:I

    :cond_3
    const-string v0, "fontStyle"

    .line 244
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 245
    invoke-static {p1}, Lcom/taobao/weex/dom/WXStyle;->getFontStyle(Ljava/util/Map;)I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontStyle:I

    :cond_4
    const-string v0, "color"

    .line 247
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 248
    invoke-static {p1}, Lcom/taobao/weex/dom/WXStyle;->getTextColor(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mColor:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 249
    :goto_1
    iput-boolean v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mIsColorSet:Z

    :cond_6
    const-string v0, "textDecoration"

    .line 251
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 252
    invoke-static {p1}, Lcom/taobao/weex/dom/WXStyle;->getTextDecoration(Ljava/util/Map;)Lcom/taobao/weex/ui/component/WXTextDecoration;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

    :cond_7
    const-string v0, "fontFamily"

    .line 254
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 255
    invoke-static {p1}, Lcom/taobao/weex/dom/WXStyle;->getFontFamily(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontFamily:Ljava/lang/String;

    .line 257
    :cond_8
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->isLayoutRTL()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/taobao/weex/dom/WXStyle;->getTextAlignment(Ljava/util/Map;Z)Landroid/text/Layout$Alignment;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mAlignment:Landroid/text/Layout$Alignment;

    .line 258
    invoke-static {p1}, Lcom/taobao/weex/dom/WXStyle;->getTextOverflow(Ljava/util/Map;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->textOverflow:Landroid/text/TextUtils$TruncateAt;

    .line 259
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v0

    invoke-static {p1, v0}, Lcom/taobao/weex/dom/WXStyle;->getLineHeight(Ljava/util/Map;F)I

    move-result p1

    if-eq p1, v1, :cond_9

    .line 261
    iput p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mLineHeight:I

    :cond_9
    return-void
.end method

.method private warmUpTextLayoutCache(Landroid/text/Layout;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layout"
        }
    .end annotation

    .line 499
    :try_start_0
    sget-object v0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->DUMMY_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {p1, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "TextWarmUp"

    .line 502
    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->eTag(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected createSpanned(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 275
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 p1, 0x11

    .line 277
    invoke-virtual {p0, v0, p1}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->updateSpannable(Landroid/text/Spannable;I)V

    return-object v0

    .line 280
    :cond_0
    new-instance p1, Landroid/text/SpannableString;

    const-string v0, ""

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public forceRelayout()V
    .locals 4

    .line 218
    invoke-virtual {p0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layoutBefore()V

    .line 221
    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->previousWidth:F

    sget v1, Lcom/taobao/weex/layout/MeasureMode;->EXACTLY:I

    sget v2, Lcom/taobao/weex/layout/MeasureMode;->UNSPECIFIED:I

    const/high16 v3, 0x7fc00000    # Float.NaN

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->measure(FFII)V

    .line 224
    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->previousWidth:F

    invoke-virtual {p0, v0, v3}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layoutAfter(FF)V

    return-void
.end method

.method public layoutAfter(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "computedWidth",
            "computedHeight"
        }
    .end annotation

    .line 172
    iget-object p2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz p2, :cond_3

    .line 173
    iget-boolean p2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->hasBeenMeasured:Z

    if-eqz p2, :cond_0

    .line 174
    iget-object p2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 176
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object p2

    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/taobao/weex/utils/WXDomUtils;->getContentWidth(Lcom/taobao/weex/dom/CSSShorthand;Lcom/taobao/weex/dom/CSSShorthand;F)F

    move-result p2

    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->previousWidth:F

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_1

    .line 178
    invoke-direct {p0, p1}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->recalculateLayout(F)V

    goto :goto_0

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->updateStyleAndText()V

    .line 182
    invoke-direct {p0, p1}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->recalculateLayout(F)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 184
    iput-boolean p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->hasBeenMeasured:Z

    .line 185
    iget-object p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->atomicReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_2

    .line 187
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p2

    if-eq p1, p2, :cond_2

    .line 188
    iget-object p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    invoke-direct {p0, p1}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->warmUpTextLayoutCache(Landroid/text/Layout;)Z

    .line 191
    :cond_2
    invoke-direct {p0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->swap()V

    .line 192
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p1

    new-instance p2, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$1;

    invoke-direct {p2, p0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement$1;-><init>(Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;)V

    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 199
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {p1, p2, v0}, Lcom/taobao/weex/ui/WXRenderManager;->postOnUiThread(Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public layoutBefore()V
    .locals 2

    .line 123
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->hasBeenMeasured:Z

    .line 125
    invoke-direct {p0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->updateStyleAndText()V

    .line 126
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->createSpanned(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    return-void
.end method

.method public measureInternal(FFII)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "widthMeasureMode",
            "heightMeasureMode"
        }
    .end annotation

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->hasBeenMeasured:Z

    .line 138
    iget-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    sget v2, Lcom/taobao/weex/layout/MeasureMode;->EXACTLY:I

    if-ne p3, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v1, p1, v0}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->getTextWidth(Landroid/text/TextPaint;FZ)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    .line 140
    iget-object v2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->spanned:Landroid/text/Spanned;

    if-eqz v2, :cond_2

    const/4 p3, 0x0

    .line 141
    invoke-direct {p0, v0, p3}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->createLayout(FLandroid/text/Layout;)Landroid/text/Layout;

    move-result-object p3

    iput-object p3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    .line 142
    invoke-virtual {p3}, Landroid/text/Layout;->getWidth()I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->previousWidth:F

    .line 143
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 144
    iget-object p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    goto :goto_1

    .line 146
    :cond_1
    iget-object p3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    invoke-virtual {p3}, Landroid/text/Layout;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 149
    :goto_1
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 150
    iget-object p2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->layout:Landroid/text/Layout;

    invoke-virtual {p2}, Landroid/text/Layout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    goto :goto_2

    .line 153
    :cond_2
    sget v0, Lcom/taobao/weex/layout/MeasureMode;->UNSPECIFIED:I

    if-ne p3, v0, :cond_3

    const/4 p1, 0x0

    .line 156
    :cond_3
    sget p3, Lcom/taobao/weex/layout/MeasureMode;->UNSPECIFIED:I

    if-ne p4, p3, :cond_4

    const/4 p2, 0x0

    .line 160
    :cond_4
    :goto_2
    iput p1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mMeasureWidth:F

    .line 161
    iput p2, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mMeasureHeight:F

    return-void
.end method

.method protected setSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "spannable",
            "what",
            "start",
            "end",
            "spanFlag"
        }
    .end annotation

    .line 312
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method protected updateSpannable(Landroid/text/Spannable;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "spannable",
            "spanFlag"
        }
    .end annotation

    .line 284
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v6

    .line 285
    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontSize:I

    const/4 v7, -0x1

    if-ne v0, v7, :cond_0

    .line 286
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_0

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 292
    :goto_0
    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mLineHeight:I

    if-eq v0, v7, :cond_1

    .line 293
    new-instance v2, Lcom/taobao/weex/dom/WXLineHeightSpan;

    invoke-direct {v2, v0}, Lcom/taobao/weex/dom/WXLineHeightSpan;-><init>(I)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, v6

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 296
    :cond_1
    new-instance v2, Landroid/text/style/AlignmentSpan$Standard;

    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mAlignment:Landroid/text/Layout$Alignment;

    invoke-direct {v2, v0}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, v6

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 298
    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontStyle:I

    if-ne v0, v7, :cond_2

    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontWeight:I

    if-ne v0, v7, :cond_2

    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontFamily:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 299
    :cond_2
    new-instance v2, Lcom/taobao/weex/dom/WXCustomStyleSpan;

    iget v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontStyle:I

    iget v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontWeight:I

    iget-object v3, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mFontFamily:Ljava/lang/String;

    invoke-direct {v2, v0, v1, v3}, Lcom/taobao/weex/dom/WXCustomStyleSpan;-><init>(IILjava/lang/String;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, v6

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 302
    :cond_3
    iget-boolean v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mIsColorSet:Z

    if-eqz v0, :cond_4

    .line 303
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 306
    :cond_4
    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

    sget-object v1, Lcom/taobao/weex/ui/component/WXTextDecoration;->UNDERLINE:Lcom/taobao/weex/ui/component/WXTextDecoration;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

    sget-object v1, Lcom/taobao/weex/ui/component/WXTextDecoration;->LINETHROUGH:Lcom/taobao/weex/ui/component/WXTextDecoration;

    if-ne v0, v1, :cond_6

    .line 307
    :cond_5
    new-instance v2, Lcom/taobao/weex/dom/TextDecorationSpan;

    iget-object v0, p0, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

    invoke-direct {v2, v0}, Lcom/taobao/weex/dom/TextDecorationSpan;-><init>(Lcom/taobao/weex/ui/component/WXTextDecoration;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, v6

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/layout/measurefunc/TextContentBoxMeasurement;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_6
    return-void
.end method
