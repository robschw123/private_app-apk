.class final Lcom/dcloud/zxing2/datamatrix/encoder/Base256Encoder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dcloud/zxing2/datamatrix/encoder/Encoder;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static randomize255State(CI)C
    .locals 1

    mul-int/lit16 p1, p1, 0x95

    const/16 v0, 0xff

    .line 1
    rem-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    add-int/2addr p0, p1

    if-gt p0, v0, :cond_0

    int-to-char p0, p0

    return p0

    :cond_0
    add-int/lit16 p0, p0, -0x100

    int-to-char p0, p0

    return p0
.end method


# virtual methods
.method public encode(Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result v2

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    iget v2, p1, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    add-int/2addr v2, v3

    iput v2, p1, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    .line 9
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget v4, p1, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {p0}, Lcom/dcloud/zxing2/datamatrix/encoder/Base256Encoder;->getEncodingMode()I

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->lookAheadTest(Ljava/lang/CharSequence;II)I

    move-result v2

    .line 10
    invoke-virtual {p0}, Lcom/dcloud/zxing2/datamatrix/encoder/Base256Encoder;->getEncodingMode()I

    move-result v4

    if-eq v2, v4, :cond_0

    .line 11
    invoke-virtual {p1, v2}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 15
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v3

    .line 17
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v4

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    .line 18
    invoke-virtual {p1, v4}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 19
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v5

    sub-int/2addr v5, v4

    if-lez v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 20
    :goto_0
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v4, :cond_5

    :cond_3
    const/16 v4, 0xf9

    if-gt v2, v4, :cond_4

    int-to-char v2, v2

    .line 22
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    :cond_4
    if-le v2, v4, :cond_7

    const/16 v5, 0x613

    if-gt v2, v5, :cond_7

    .line 24
    div-int/lit16 v5, v2, 0xfa

    add-int/2addr v5, v4

    int-to-char v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 25
    rem-int/lit16 v2, v2, 0xfa

    int-to-char v2, v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 31
    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_6

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v5

    add-int/2addr v5, v3

    .line 34
    invoke-static {v4, v5}, Lcom/dcloud/zxing2/datamatrix/encoder/Base256Encoder;->randomize255State(CI)C

    move-result v4

    invoke-virtual {p1, v4}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-void

    .line 35
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message length not in valid ranges: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public getEncodingMode()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method
