.class final Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;
.super Ljava/lang/Object;


# instance fields
.field private final buffer:Ljava/lang/StringBuilder;

.field private final current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

.field private final information:Lcom/dcloud/zxing2/common/BitArray;


# direct methods
.method constructor <init>(Lcom/dcloud/zxing2/common/BitArray;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-direct {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;-><init>()V

    iput-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    .line 6
    iput-object p1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    return-void
.end method

.method private decodeAlphanumeric(I)Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;
    .locals 3

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 3
    new-instance v1, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;

    add-int/2addr p1, v0

    const/16 v0, 0x24

    invoke-direct {v1, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    return-object v1

    :cond_0
    if-lt v1, v0, :cond_1

    if-ge v1, v2, :cond_1

    .line 7
    new-instance v2, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;

    add-int/2addr p1, v0

    add-int/lit8 v1, v1, 0x30

    sub-int/2addr v1, v0

    int-to-char v0, v1

    invoke-direct {v2, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    return-object v2

    :cond_1
    const/4 v0, 0x6

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v1

    const/16 v2, 0x20

    if-lt v1, v2, :cond_2

    const/16 v2, 0x3a

    if-ge v1, v2, :cond_2

    .line 13
    new-instance v2, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;

    add-int/2addr p1, v0

    add-int/lit8 v1, v1, 0x21

    int-to-char v0, v1

    invoke-direct {v2, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    return-object v2

    :cond_2
    packed-switch v1, :pswitch_data_0

    .line 34
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decoding invalid alphanumeric value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/16 v1, 0x2f

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x2e

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x2d

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x2c

    goto :goto_0

    :pswitch_4
    const/16 v1, 0x2a

    .line 36
    :goto_0
    new-instance v2, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;

    add-int/2addr p1, v0

    invoke-direct {v2, p1, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private decodeIsoIec646(I)Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 3
    new-instance v1, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;

    add-int/2addr p1, v0

    const/16 v0, 0x24

    invoke-direct {v1, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    return-object v1

    :cond_0
    if-lt v1, v0, :cond_1

    if-ge v1, v2, :cond_1

    .line 7
    new-instance v2, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;

    add-int/2addr p1, v0

    add-int/lit8 v1, v1, 0x30

    sub-int/2addr v1, v0

    int-to-char v0, v1

    invoke-direct {v2, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    return-object v2

    :cond_1
    const/4 v0, 0x7

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v1

    const/16 v2, 0x40

    const/16 v3, 0x5a

    if-lt v1, v2, :cond_2

    if-ge v1, v3, :cond_2

    .line 13
    new-instance v2, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;

    add-int/2addr p1, v0

    add-int/lit8 v1, v1, 0x1

    int-to-char v0, v1

    invoke-direct {v2, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    return-object v2

    :cond_2
    if-lt v1, v3, :cond_3

    const/16 v2, 0x74

    if-ge v1, v2, :cond_3

    .line 17
    new-instance v2, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    int-to-char v0, v1

    invoke-direct {v2, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    return-object v2

    :cond_3
    const/16 v0, 0x8

    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 87
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p1

    throw p1

    :pswitch_0
    const/16 v1, 0x20

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x5f

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x3f

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x3e

    goto :goto_0

    :pswitch_4
    const/16 v1, 0x3d

    goto :goto_0

    :pswitch_5
    const/16 v1, 0x3c

    goto :goto_0

    :pswitch_6
    const/16 v1, 0x3b

    goto :goto_0

    :pswitch_7
    const/16 v1, 0x3a

    goto :goto_0

    :pswitch_8
    const/16 v1, 0x2f

    goto :goto_0

    :pswitch_9
    const/16 v1, 0x2e

    goto :goto_0

    :pswitch_a
    const/16 v1, 0x2d

    goto :goto_0

    :pswitch_b
    const/16 v1, 0x2c

    goto :goto_0

    :pswitch_c
    const/16 v1, 0x2b

    goto :goto_0

    :pswitch_d
    const/16 v1, 0x2a

    goto :goto_0

    :pswitch_e
    const/16 v1, 0x29

    goto :goto_0

    :pswitch_f
    const/16 v1, 0x28

    goto :goto_0

    :pswitch_10
    const/16 v1, 0x27

    goto :goto_0

    :pswitch_11
    const/16 v1, 0x26

    goto :goto_0

    :pswitch_12
    const/16 v1, 0x25

    goto :goto_0

    :pswitch_13
    const/16 v1, 0x22

    goto :goto_0

    :pswitch_14
    const/16 v1, 0x21

    .line 89
    :goto_0
    new-instance v2, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;

    add-int/2addr p1, v0

    invoke-direct {v2, p1, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0xe8
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private decodeNumeric(I)Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x7

    .line 1
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v1

    if-le v0, v1, :cond_1

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result p1

    const/16 v0, 0xa

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;

    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v1

    invoke-direct {p1, v1, v0, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;-><init>(III)V

    return-object p1

    .line 6
    :cond_0
    new-instance v1, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;

    iget-object v2, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v2}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v2

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v1, v2, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;-><init>(III)V

    return-object v1

    :cond_1
    const/4 v1, 0x7

    .line 8
    invoke-virtual {p0, p1, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result p1

    add-int/lit8 p1, p1, -0x8

    .line 10
    div-int/lit8 v1, p1, 0xb

    .line 11
    rem-int/lit8 p1, p1, 0xb

    .line 13
    new-instance v2, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;

    invoke-direct {v2, v0, v1, p1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;-><init>(III)V

    return-object v2
.end method

.method static extractNumericValueFromBitArray(Lcom/dcloud/zxing2/common/BitArray;II)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    add-int v2, p1, v0

    .line 2
    invoke-virtual {p0, v2}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sub-int v2, p2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private isAlphaOr646ToNumericLatch(I)Z
    .locals 3

    add-int/lit8 v0, p1, 0x3

    .line 1
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    :goto_0
    if-ge p1, v0, :cond_2

    .line 6
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v1, p1}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private isAlphaTo646ToAlphaLatch(I)Z
    .locals 4

    add-int/lit8 v0, p1, 0x1

    .line 1
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    add-int v1, v0, p1

    .line 5
    iget-object v3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v3}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v3

    if-ge v1, v3, :cond_3

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 7
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    add-int/lit8 v3, p1, 0x2

    invoke-virtual {v1, v3}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 10
    :cond_1
    iget-object v3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v3, v1}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private isNumericToAlphaNumericLatch(I)Z
    .locals 4

    add-int/lit8 v0, p1, 0x1

    .line 1
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    add-int v1, v0, p1

    .line 5
    iget-object v3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v3}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 6
    iget-object v3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v3, v1}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private isStillAlpha(I)Z
    .locals 5

    add-int/lit8 v0, p1, 0x5

    .line 1
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x5

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v1

    const/4 v3, 0x1

    const/16 v4, 0x10

    if-lt v1, v0, :cond_1

    if-ge v1, v4, :cond_1

    return v3

    :cond_1
    add-int/lit8 v0, p1, 0x6

    .line 11
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v1

    if-le v0, v1, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x6

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result p1

    if-lt p1, v4, :cond_3

    const/16 v0, 0x3f

    if-ge p1, v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method private isStillIsoIec646(I)Z
    .locals 4

    add-int/lit8 v0, p1, 0x5

    .line 1
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x5

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v1

    const/4 v3, 0x1

    if-lt v1, v0, :cond_1

    const/16 v0, 0x10

    if-ge v1, v0, :cond_1

    return v3

    :cond_1
    add-int/lit8 v0, p1, 0x7

    .line 10
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v1

    if-le v0, v1, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x7

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v0

    const/16 v1, 0x40

    if-lt v0, v1, :cond_3

    const/16 v1, 0x74

    if-ge v0, v1, :cond_3

    return v3

    :cond_3
    add-int/lit8 v0, p1, 0x8

    .line 19
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v1

    if-le v0, v1, :cond_4

    return v2

    :cond_4
    const/16 v0, 0x8

    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result p1

    const/16 v0, 0xe8

    if-lt p1, v0, :cond_5

    const/16 v0, 0xfd

    if-ge p1, v0, :cond_5

    const/4 v2, 0x1

    :cond_5
    return v2
.end method

.method private isStillNumeric(I)Z
    .locals 3

    add-int/lit8 v0, p1, 0x7

    .line 1
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v1, :cond_1

    add-int/lit8 p1, p1, 0x4

    .line 2
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v0

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    move v0, p1

    :goto_1
    add-int/lit8 v1, p1, 0x3

    if-ge v0, v1, :cond_3

    .line 6
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v1, v0}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {p1, v1}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result p1

    return p1
.end method

.method private parseAlphaBlock()Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;
    .locals 3

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isStillAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeAlphanumeric(I)Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedObject;->getNewPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V

    .line 5
    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;->isFNC1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    new-instance v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;

    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v1

    iget-object v2, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V

    .line 7
    new-instance v1, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;Z)V

    return-object v1

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;->getValue()C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isAlphaOr646ToNumericLatch(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->incrementPosition(I)V

    .line 15
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->setNumeric()V

    goto :goto_2

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isAlphaTo646ToAlphaLatch(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    const/4 v1, 0x5

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v2}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 18
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->incrementPosition(I)V

    goto :goto_1

    .line 20
    :cond_3
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V

    .line 23
    :goto_1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->setIsoIec646()V

    .line 25
    :cond_4
    :goto_2
    new-instance v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Z)V

    return-object v0
.end method

.method private parseBlocks()Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->isAlpha()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->parseAlphaBlock()Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;->isFinished()Z

    move-result v2

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->isIsoIec646()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->parseIsoIec646Block()Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;->isFinished()Z

    move-result v2

    goto :goto_0

    .line 10
    :cond_2
    invoke-direct {p0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->parseNumericBlock()Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;->isFinished()Z

    move-result v2

    .line 14
    :goto_0
    iget-object v3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v3}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v3

    if-eq v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_0

    .line 20
    :goto_2
    invoke-virtual {v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;->getDecodedInformation()Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;

    move-result-object v0

    return-object v0
.end method

.method private parseIsoIec646Block()Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isStillIsoIec646(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeIsoIec646(I)Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedObject;->getNewPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V

    .line 5
    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;->isFNC1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    new-instance v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;

    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v1

    iget-object v2, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V

    .line 7
    new-instance v1, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;Z)V

    return-object v1

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;->getValue()C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isAlphaOr646ToNumericLatch(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->incrementPosition(I)V

    .line 14
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->setNumeric()V

    goto :goto_2

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isAlphaTo646ToAlphaLatch(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    const/4 v1, 0x5

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v2}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 17
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->incrementPosition(I)V

    goto :goto_1

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V

    .line 22
    :goto_1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->setAlpha()V

    .line 24
    :cond_4
    :goto_2
    new-instance v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Z)V

    return-object v0
.end method

.method private parseNumericBlock()Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isStillNumeric(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeNumeric(I)Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedObject;->getNewPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V

    .line 5
    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;->isFirstDigitFNC1()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;->isSecondDigitFNC1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    new-instance v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;

    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v1

    iget-object v3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_0
    new-instance v1, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;

    iget-object v3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v3}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v3

    iget-object v4, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;->getSecondDigit()I

    move-result v0

    invoke-direct {v1, v3, v4, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;I)V

    move-object v0, v1

    .line 12
    :goto_1
    new-instance v1, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;

    invoke-direct {v1, v0, v2}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;Z)V

    return-object v1

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;->getFirstDigit()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;->isSecondDigitFNC1()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    new-instance v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;

    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v1

    iget-object v3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V

    .line 18
    new-instance v1, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;

    invoke-direct {v1, v0, v2}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;Z)V

    return-object v1

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;->getSecondDigit()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 23
    :cond_3
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isNumericToAlphaNumericLatch(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 24
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->setAlpha()V

    .line 25
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->incrementPosition(I)V

    .line 27
    :cond_4
    new-instance v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method decodeAllCodes(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;,
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    .line 1
    :goto_0
    invoke-virtual {p0, p2, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeGeneralPurposeField(ILjava/lang/String;)Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;->getNewString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;->isRemaining()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;->getRemainingValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 12
    :goto_1
    invoke-virtual {v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedObject;->getNewPosition()I

    move-result v3

    if-ne p2, v3, :cond_2

    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 19
    :cond_2
    invoke-virtual {v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedObject;->getNewPosition()I

    move-result p2

    move-object v1, v2

    goto :goto_0
.end method

.method decodeGeneralPurposeField(ILjava/lang/String;)Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    if-eqz p2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {p2, p1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V

    .line 9
    invoke-direct {p0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->parseBlocks()Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;->isRemaining()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 11
    new-instance p2, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;

    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;->getRemainingValue()I

    move-result p1

    invoke-direct {p2, v0, v1, p1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;I)V

    return-object p2

    .line 13
    :cond_1
    new-instance p1, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;

    iget-object p2, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {p2}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result p2

    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V

    return-object p1
.end method

.method extractNumericValueFromBitArray(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-static {v0, p1, p2}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(Lcom/dcloud/zxing2/common/BitArray;II)I

    move-result p1

    return p1
.end method
