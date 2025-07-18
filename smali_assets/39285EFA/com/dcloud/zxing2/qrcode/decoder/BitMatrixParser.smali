.class final Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;
.super Ljava/lang/Object;


# instance fields
.field private final bitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

.field private mirror:Z

.field private parsedFormatInfo:Lcom/dcloud/zxing2/qrcode/decoder/FormatInformation;

.field private parsedVersion:Lcom/dcloud/zxing2/qrcode/decoder/Version;


# direct methods
.method constructor <init>(Lcom/dcloud/zxing2/common/BitMatrix;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6
    iput-object p1, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p1

    throw p1
.end method

.method private copyBit(III)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->mirror:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v0, p2, p1}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v0, p1, p2}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    shl-int/lit8 p1, p3, 0x1

    or-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    shl-int/lit8 p1, p3, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method mirror()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitMatrix;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    .line 2
    :goto_1
    iget-object v3, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v3}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3
    iget-object v3, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v3, v0, v2}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v3

    iget-object v4, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v4, v2, v0}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v4

    if-eq v3, v4, :cond_0

    .line 4
    iget-object v3, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v3, v2, v0}, Lcom/dcloud/zxing2/common/BitMatrix;->flip(II)V

    .line 5
    iget-object v3, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v3, v0, v2}, Lcom/dcloud/zxing2/common/BitMatrix;->flip(II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method readCodewords()[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/dcloud/zxing2/qrcode/decoder/FormatInformation;

    move-result-object v1

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/dcloud/zxing2/qrcode/decoder/Version;

    move-result-object v2

    .line 6
    invoke-virtual {v1}, Lcom/dcloud/zxing2/qrcode/decoder/FormatInformation;->getDataMask()B

    move-result v1

    invoke-static {v1}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask;->forReference(I)Lcom/dcloud/zxing2/qrcode/decoder/DataMask;

    move-result-object v1

    .line 7
    iget-object v3, v0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v3}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result v3

    .line 8
    iget-object v4, v0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v1, v4, v3}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask;->unmaskBitMatrix(Lcom/dcloud/zxing2/common/BitMatrix;I)V

    .line 10
    invoke-virtual {v2}, Lcom/dcloud/zxing2/qrcode/decoder/Version;->buildFunctionPattern()Lcom/dcloud/zxing2/common/BitMatrix;

    move-result-object v1

    .line 13
    invoke-virtual {v2}, Lcom/dcloud/zxing2/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v4

    new-array v4, v4, [B

    add-int/lit8 v5, v3, -0x1

    const/4 v7, 0x1

    move v8, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-lez v8, :cond_6

    const/4 v12, 0x6

    if-ne v8, v12, :cond_0

    add-int/lit8 v8, v8, -0x1

    :cond_0
    const/4 v12, 0x0

    :goto_1
    if-ge v12, v3, :cond_5

    if-eqz v7, :cond_1

    sub-int v13, v5, v12

    goto :goto_2

    :cond_1
    move v13, v12

    :goto_2
    const/4 v14, 0x0

    :goto_3
    const/4 v15, 0x2

    if-ge v14, v15, :cond_4

    sub-int v15, v8, v14

    .line 29
    invoke-virtual {v1, v15, v13}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v16

    if-nez v16, :cond_3

    add-int/lit8 v11, v11, 0x1

    shl-int/lit8 v10, v10, 0x1

    .line 33
    iget-object v6, v0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v6, v15, v13}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_2

    or-int/lit8 v6, v10, 0x1

    move v10, v6

    :cond_2
    const/16 v6, 0x8

    if-ne v11, v6, :cond_3

    add-int/lit8 v6, v9, 0x1

    int-to-byte v10, v10

    .line 38
    aput-byte v10, v4, v9

    move v9, v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_5
    xor-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, -0x2

    goto :goto_0

    .line 47
    :cond_6
    invoke-virtual {v2}, Lcom/dcloud/zxing2/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v1

    if-ne v9, v1, :cond_7

    return-object v4

    .line 48
    :cond_7
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object v1

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method

.method readFormatInformation()Lcom/dcloud/zxing2/qrcode/decoder/FormatInformation;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/dcloud/zxing2/qrcode/decoder/FormatInformation;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x6

    const/16 v4, 0x8

    if-ge v1, v3, :cond_1

    .line 8
    invoke-direct {p0, v1, v4, v2}, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    .line 11
    invoke-direct {p0, v1, v4, v2}, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v2

    .line 12
    invoke-direct {p0, v4, v4, v2}, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v2

    .line 13
    invoke-direct {p0, v4, v1, v2}, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v1

    const/4 v2, 0x5

    :goto_1
    if-ltz v2, :cond_2

    .line 16
    invoke-direct {p0, v4, v2, v1}, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 20
    :cond_2
    iget-object v2, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v2}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result v2

    add-int/lit8 v3, v2, -0x7

    add-int/lit8 v5, v2, -0x1

    :goto_2
    if-lt v5, v3, :cond_3

    .line 24
    invoke-direct {p0, v4, v5, v0}, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v0

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v2, -0x8

    :goto_3
    if-ge v3, v2, :cond_4

    .line 27
    invoke-direct {p0, v3, v4, v0}, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 30
    :cond_4
    invoke-static {v1, v0}, Lcom/dcloud/zxing2/qrcode/decoder/FormatInformation;->decodeFormatInformation(II)Lcom/dcloud/zxing2/qrcode/decoder/FormatInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/dcloud/zxing2/qrcode/decoder/FormatInformation;

    if-eqz v0, :cond_5

    return-object v0

    .line 34
    :cond_5
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object v0

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method readVersion()Lcom/dcloud/zxing2/qrcode/decoder/Version;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/dcloud/zxing2/qrcode/decoder/Version;

    if-eqz v0, :cond_0

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result v0

    add-int/lit8 v1, v0, -0x11

    .line 7
    div-int/lit8 v1, v1, 0x4

    const/4 v2, 0x6

    if-gt v1, v2, :cond_1

    .line 9
    invoke-static {v1}, Lcom/dcloud/zxing2/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/dcloud/zxing2/qrcode/decoder/Version;

    move-result-object v0

    return-object v0

    :cond_1
    add-int/lit8 v1, v0, -0xb

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    :goto_0
    if-ltz v4, :cond_3

    add-int/lit8 v6, v0, -0x9

    :goto_1
    if-lt v6, v1, :cond_2

    .line 17
    invoke-direct {p0, v6, v4, v5}, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v5

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 21
    :cond_3
    invoke-static {v5}, Lcom/dcloud/zxing2/qrcode/decoder/Version;->decodeVersionInformation(I)Lcom/dcloud/zxing2/qrcode/decoder/Version;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 22
    invoke-virtual {v4}, Lcom/dcloud/zxing2/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v5

    if-ne v5, v0, :cond_4

    .line 23
    iput-object v4, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/dcloud/zxing2/qrcode/decoder/Version;

    return-object v4

    :cond_4
    :goto_2
    if-ltz v2, :cond_6

    add-int/lit8 v4, v0, -0x9

    :goto_3
    if-lt v4, v1, :cond_5

    .line 31
    invoke-direct {p0, v2, v4, v3}, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v3

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 35
    :cond_6
    invoke-static {v3}, Lcom/dcloud/zxing2/qrcode/decoder/Version;->decodeVersionInformation(I)Lcom/dcloud/zxing2/qrcode/decoder/Version;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 36
    invoke-virtual {v1}, Lcom/dcloud/zxing2/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v2

    if-ne v2, v0, :cond_7

    .line 37
    iput-object v1, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/dcloud/zxing2/qrcode/decoder/Version;

    return-object v1

    .line 40
    :cond_7
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object v0

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method remask()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/dcloud/zxing2/qrcode/decoder/FormatInformation;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/dcloud/zxing2/qrcode/decoder/FormatInformation;->getDataMask()B

    move-result v0

    invoke-static {v0}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask;->forReference(I)Lcom/dcloud/zxing2/qrcode/decoder/DataMask;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result v1

    .line 6
    iget-object v2, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v0, v2, v1}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask;->unmaskBitMatrix(Lcom/dcloud/zxing2/common/BitMatrix;I)V

    return-void
.end method

.method setMirror(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/dcloud/zxing2/qrcode/decoder/Version;

    .line 2
    iput-object v0, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/dcloud/zxing2/qrcode/decoder/FormatInformation;

    .line 3
    iput-boolean p1, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->mirror:Z

    return-void
.end method
