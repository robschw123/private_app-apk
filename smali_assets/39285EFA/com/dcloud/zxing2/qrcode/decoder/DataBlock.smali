.class final Lcom/dcloud/zxing2/qrcode/decoder/DataBlock;
.super Ljava/lang/Object;


# instance fields
.field private final codewords:[B

.field private final numDataCodewords:I


# direct methods
.method private constructor <init>(I[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/dcloud/zxing2/qrcode/decoder/DataBlock;->numDataCodewords:I

    .line 3
    iput-object p2, p0, Lcom/dcloud/zxing2/qrcode/decoder/DataBlock;->codewords:[B

    return-void
.end method

.method static getDataBlocks([BLcom/dcloud/zxing2/qrcode/decoder/Version;Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/dcloud/zxing2/qrcode/decoder/DataBlock;
    .locals 12

    .line 1
    array-length v0, p0

    invoke-virtual {p1}, Lcom/dcloud/zxing2/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 7
    invoke-virtual {p1, p2}, Lcom/dcloud/zxing2/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;)Lcom/dcloud/zxing2/qrcode/decoder/Version$ECBlocks;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/dcloud/zxing2/qrcode/decoder/Version$ECBlocks;->getECBlocks()[Lcom/dcloud/zxing2/qrcode/decoder/Version$ECB;

    move-result-object p2

    .line 12
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, p2, v2

    .line 13
    invoke-virtual {v4}, Lcom/dcloud/zxing2/qrcode/decoder/Version$ECB;->getCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 17
    :cond_0
    new-array v0, v3, [Lcom/dcloud/zxing2/qrcode/decoder/DataBlock;

    .line 19
    array-length v2, p2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v6, p2, v4

    const/4 v7, 0x0

    .line 20
    :goto_2
    invoke-virtual {v6}, Lcom/dcloud/zxing2/qrcode/decoder/Version$ECB;->getCount()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 21
    invoke-virtual {v6}, Lcom/dcloud/zxing2/qrcode/decoder/Version$ECB;->getDataCodewords()I

    move-result v8

    .line 22
    invoke-virtual {p1}, Lcom/dcloud/zxing2/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v9

    add-int/2addr v9, v8

    add-int/lit8 v10, v5, 0x1

    .line 23
    new-instance v11, Lcom/dcloud/zxing2/qrcode/decoder/DataBlock;

    new-array v9, v9, [B

    invoke-direct {v11, v8, v9}, Lcom/dcloud/zxing2/qrcode/decoder/DataBlock;-><init>(I[B)V

    aput-object v11, v0, v5

    add-int/lit8 v7, v7, 0x1

    move v5, v10

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 29
    :cond_2
    aget-object p2, v0, v1

    iget-object p2, p2, Lcom/dcloud/zxing2/qrcode/decoder/DataBlock;->codewords:[B

    array-length p2, p2

    add-int/lit8 v3, v3, -0x1

    :goto_3
    if-ltz v3, :cond_4

    .line 32
    aget-object v2, v0, v3

    iget-object v2, v2, Lcom/dcloud/zxing2/qrcode/decoder/DataBlock;->codewords:[B

    array-length v2, v2

    if-ne v2, p2, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 40
    invoke-virtual {p1}, Lcom/dcloud/zxing2/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result p1

    sub-int/2addr p2, p1

    const/4 p1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge p1, p2, :cond_6

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v5, :cond_5

    .line 46
    aget-object v6, v0, v4

    iget-object v6, v6, Lcom/dcloud/zxing2/qrcode/decoder/DataBlock;->codewords:[B

    add-int/lit8 v7, v2, 0x1

    aget-byte v2, p0, v2

    aput-byte v2, v6, p1

    add-int/lit8 v4, v4, 0x1

    move v2, v7

    goto :goto_6

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_6
    move p1, v3

    :goto_7
    if-ge p1, v5, :cond_7

    .line 51
    aget-object v4, v0, p1

    iget-object v4, v4, Lcom/dcloud/zxing2/qrcode/decoder/DataBlock;->codewords:[B

    add-int/lit8 v6, v2, 0x1

    aget-byte v2, p0, v2

    aput-byte v2, v4, p2

    add-int/lit8 p1, p1, 0x1

    move v2, v6

    goto :goto_7

    .line 54
    :cond_7
    aget-object p1, v0, v1

    iget-object p1, p1, Lcom/dcloud/zxing2/qrcode/decoder/DataBlock;->codewords:[B

    array-length p1, p1

    :goto_8
    if-ge p2, p1, :cond_a

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v5, :cond_9

    if-ge v4, v3, :cond_8

    move v6, p2

    goto :goto_a

    :cond_8
    add-int/lit8 v6, p2, 0x1

    .line 58
    :goto_a
    aget-object v7, v0, v4

    iget-object v7, v7, Lcom/dcloud/zxing2/qrcode/decoder/DataBlock;->codewords:[B

    add-int/lit8 v8, v2, 0x1

    aget-byte v2, p0, v2

    aput-byte v2, v7, v6

    add-int/lit8 v4, v4, 0x1

    move v2, v8

    goto :goto_9

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_a
    return-object v0

    .line 59
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_c

    :goto_b
    throw p0

    :goto_c
    goto :goto_b
.end method


# virtual methods
.method getCodewords()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/decoder/DataBlock;->codewords:[B

    return-object v0
.end method

.method getNumDataCodewords()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/qrcode/decoder/DataBlock;->numDataCodewords:I

    return v0
.end method
