.class public Lio/dcloud/common/ui/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lio/dcloud/common/ui/c;


# instance fields
.field b:I

.field c:I

.field d:I

.field e:I

.field f:Landroid/content/Context;

.field g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x1000000

    .line 2
    iput v0, p0, Lio/dcloud/common/ui/c;->b:I

    .line 3
    iput v0, p0, Lio/dcloud/common/ui/c;->c:I

    .line 4
    iput v0, p0, Lio/dcloud/common/ui/c;->d:I

    const/16 v0, 0x11

    .line 5
    iput v0, p0, Lio/dcloud/common/ui/c;->e:I

    const-string v0, "isSelected"

    .line 14
    iput-object v0, p0, Lio/dcloud/common/ui/c;->g:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lio/dcloud/common/ui/c;->f:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lio/dcloud/common/ui/c;
    .locals 1

    .line 1
    sget-object v0, Lio/dcloud/common/ui/c;->a:Lio/dcloud/common/ui/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/dcloud/common/ui/c;

    invoke-direct {v0, p0}, Lio/dcloud/common/ui/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lio/dcloud/common/ui/c;->a:Lio/dcloud/common/ui/c;

    .line 4
    :cond_0
    sget-object p0, Lio/dcloud/common/ui/c;->a:Lio/dcloud/common/ui/c;

    return-object p0
.end method

.method private a(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;)V
    .locals 4

    .line 10
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 11
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 12
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    .line 13
    new-instance v3, Lio/dcloud/common/ui/c$a;

    invoke-direct {v3, p0, p2}, Lio/dcloud/common/ui/c$a;-><init>(Lio/dcloud/common/ui/c;Landroid/text/style/URLSpan;)V

    .line 30
    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 51
    new-instance p2, Landroid/text/style/TextAppearanceSpan;

    iget-object v2, p0, Lio/dcloud/common/ui/c;->f:Landroid/content/Context;

    sget v3, Lio/dcloud/base/R$style;->textAppearance:I

    invoke-direct {p2, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/16 v2, 0x21

    .line 52
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    .line 5
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    .line 6
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 7
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result p1

    const-class v1, Landroid/text/style/URLSpan;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/URLSpan;

    .line 8
    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 9
    invoke-direct {p0, v0, v3}, Lio/dcloud/common/ui/c;->a(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
