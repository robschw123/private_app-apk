.class final Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;
.super Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedObject;


# static fields
.field static final FNC1:I = 0xa


# instance fields
.field private final firstDigit:I

.field private final secondDigit:I


# direct methods
.method constructor <init>(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedObject;-><init>(I)V

    if-ltz p2, :cond_0

    const/16 p1, 0xa

    if-gt p2, p1, :cond_0

    if-ltz p3, :cond_0

    if-gt p3, p1, :cond_0

    .line 7
    iput p2, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;->firstDigit:I

    .line 8
    iput p3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;->secondDigit:I

    return-void

    .line 9
    :cond_0
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method getFirstDigit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;->firstDigit:I

    return v0
.end method

.method getSecondDigit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;->secondDigit:I

    return v0
.end method

.method getValue()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;->firstDigit:I

    mul-int/lit8 v0, v0, 0xa

    iget v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;->secondDigit:I

    add-int/2addr v0, v1

    return v0
.end method

.method isAnyFNC1()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;->firstDigit:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;->secondDigit:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isFirstDigitFNC1()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;->firstDigit:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isSecondDigitFNC1()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;->secondDigit:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
