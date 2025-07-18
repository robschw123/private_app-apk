.class final Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;
.super Ljava/lang/Object;


# instance fields
.field private final mappingBitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

.field private final readMappingMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

.field private final version:Lcom/dcloud/zxing2/datamatrix/decoder/Version;


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

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x90

    if-gt v0, v1, :cond_0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 7
    invoke-static {p1}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readVersion(Lcom/dcloud/zxing2/common/BitMatrix;)Lcom/dcloud/zxing2/datamatrix/decoder/Version;

    move-result-object v0

    iput-object v0, p0, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->version:Lcom/dcloud/zxing2/datamatrix/decoder/Version;

    .line 8
    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->extractDataRegion(Lcom/dcloud/zxing2/common/BitMatrix;)Lcom/dcloud/zxing2/common/BitMatrix;

    move-result-object p1

    iput-object p1, p0, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    .line 9
    new-instance v0, Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitMatrix;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/dcloud/zxing2/common/BitMatrix;-><init>(II)V

    iput-object v0, p0, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p1

    throw p1
.end method

.method private static readVersion(Lcom/dcloud/zxing2/common/BitMatrix;)Lcom/dcloud/zxing2/datamatrix/decoder/Version;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitMatrix;->getWidth()I

    move-result p0

    .line 3
    invoke-static {v0, p0}, Lcom/dcloud/zxing2/datamatrix/decoder/Version;->getVersionForDimensions(II)Lcom/dcloud/zxing2/datamatrix/decoder/Version;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method extractDataRegion(Lcom/dcloud/zxing2/common/BitMatrix;)Lcom/dcloud/zxing2/common/BitMatrix;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->version:Lcom/dcloud/zxing2/datamatrix/decoder/Version;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/datamatrix/decoder/Version;->getSymbolSizeRows()I

    move-result v1

    .line 2
    iget-object v2, v0, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->version:Lcom/dcloud/zxing2/datamatrix/decoder/Version;

    invoke-virtual {v2}, Lcom/dcloud/zxing2/datamatrix/decoder/Version;->getSymbolSizeColumns()I

    move-result v2

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result v3

    if-ne v3, v1, :cond_5

    .line 8
    iget-object v3, v0, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->version:Lcom/dcloud/zxing2/datamatrix/decoder/Version;

    invoke-virtual {v3}, Lcom/dcloud/zxing2/datamatrix/decoder/Version;->getDataRegionSizeRows()I

    move-result v3

    .line 9
    iget-object v4, v0, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->version:Lcom/dcloud/zxing2/datamatrix/decoder/Version;

    invoke-virtual {v4}, Lcom/dcloud/zxing2/datamatrix/decoder/Version;->getDataRegionSizeColumns()I

    move-result v4

    .line 11
    div-int/2addr v1, v3

    .line 12
    div-int/2addr v2, v4

    mul-int v5, v1, v3

    mul-int v6, v2, v4

    .line 17
    new-instance v7, Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-direct {v7, v6, v5}, Lcom/dcloud/zxing2/common/BitMatrix;-><init>(II)V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_4

    mul-int v8, v6, v3

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v2, :cond_3

    mul-int v10, v9, v4

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v3, :cond_2

    add-int/lit8 v12, v3, 0x2

    mul-int v12, v12, v6

    add-int/lit8 v12, v12, 0x1

    add-int/2addr v12, v11

    add-int v13, v8, v11

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v4, :cond_1

    add-int/lit8 v15, v4, 0x2

    mul-int v15, v15, v9

    add-int/lit8 v15, v15, 0x1

    add-int/2addr v15, v14

    move-object/from16 v5, p1

    .line 27
    invoke-virtual {v5, v15, v12}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v15

    if-eqz v15, :cond_0

    add-int v15, v10, v14

    .line 29
    invoke-virtual {v7, v15, v13}, Lcom/dcloud/zxing2/common/BitMatrix;->set(II)V

    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_1
    move-object/from16 v5, p1

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v5, p1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v5, p1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    return-object v7

    .line 30
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Dimension of bitMarix must match the version size"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method

.method getVersion()Lcom/dcloud/zxing2/datamatrix/decoder/Version;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->version:Lcom/dcloud/zxing2/datamatrix/decoder/Version;

    return-object v0
.end method

.method readCodewords()[B
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->version:Lcom/dcloud/zxing2/datamatrix/decoder/Version;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/datamatrix/decoder/Version;->getTotalCodewords()I

    move-result v0

    new-array v0, v0, [B

    .line 7
    iget-object v1, p0, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result v1

    .line 8
    iget-object v2, p0, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v2}, Lcom/dcloud/zxing2/common/BitMatrix;->getWidth()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x4

    :cond_0
    const/4 v11, 0x1

    if-ne v10, v1, :cond_1

    if-nez v4, :cond_1

    if-nez v5, :cond_1

    add-int/lit8 v5, v6, 0x1

    .line 19
    invoke-virtual {p0, v1, v2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readCorner1(II)I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v0, v6

    add-int/lit8 v10, v10, -0x2

    add-int/lit8 v4, v4, 0x2

    move v6, v5

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_1
    add-int/lit8 v12, v1, -0x2

    if-ne v10, v12, :cond_2

    if-nez v4, :cond_2

    and-int/lit8 v13, v2, 0x3

    if-eqz v13, :cond_2

    if-nez v7, :cond_2

    add-int/lit8 v7, v6, 0x1

    .line 24
    invoke-virtual {p0, v1, v2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readCorner2(II)I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v0, v6

    add-int/lit8 v10, v10, -0x2

    add-int/lit8 v4, v4, 0x2

    move v6, v7

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v13, v1, 0x4

    if-ne v10, v13, :cond_3

    const/4 v13, 0x2

    if-ne v4, v13, :cond_3

    and-int/lit8 v13, v2, 0x7

    if-nez v13, :cond_3

    if-nez v8, :cond_3

    add-int/lit8 v8, v6, 0x1

    .line 29
    invoke-virtual {p0, v1, v2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readCorner3(II)I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v0, v6

    add-int/lit8 v10, v10, -0x2

    add-int/lit8 v4, v4, 0x2

    move v6, v8

    const/4 v8, 0x1

    goto :goto_0

    :cond_3
    if-ne v10, v12, :cond_4

    if-nez v4, :cond_4

    and-int/lit8 v12, v2, 0x7

    if-ne v12, v3, :cond_4

    if-nez v9, :cond_4

    add-int/lit8 v9, v6, 0x1

    .line 34
    invoke-virtual {p0, v1, v2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readCorner4(II)I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v0, v6

    add-int/lit8 v10, v10, -0x2

    add-int/lit8 v4, v4, 0x2

    move v6, v9

    const/4 v9, 0x1

    goto :goto_0

    :cond_4
    if-ge v10, v1, :cond_5

    if-ltz v4, :cond_5

    .line 41
    iget-object v11, p0, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v11, v4, v10}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v11

    if-nez v11, :cond_5

    add-int/lit8 v11, v6, 0x1

    .line 42
    invoke-virtual {p0, v10, v4, v1, v2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readUtah(IIII)I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v0, v6

    move v6, v11

    :cond_5
    add-int/lit8 v10, v10, -0x2

    add-int/lit8 v4, v4, 0x2

    if-ltz v10, :cond_6

    if-lt v4, v2, :cond_4

    :cond_6
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v4, v4, 0x3

    :cond_7
    if-ltz v10, :cond_8

    if-ge v4, v2, :cond_8

    .line 52
    iget-object v11, p0, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v11, v4, v10}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v11

    if-nez v11, :cond_8

    add-int/lit8 v11, v6, 0x1

    .line 53
    invoke-virtual {p0, v10, v4, v1, v2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readUtah(IIII)I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v0, v6

    move v6, v11

    :cond_8
    add-int/lit8 v10, v10, 0x2

    add-int/lit8 v4, v4, -0x2

    if-ge v10, v1, :cond_9

    if-gez v4, :cond_7

    :cond_9
    add-int/lit8 v10, v10, 0x3

    add-int/lit8 v4, v4, 0x1

    :goto_0
    if-lt v10, v1, :cond_0

    if-lt v4, v2, :cond_0

    .line 63
    iget-object v1, p0, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->version:Lcom/dcloud/zxing2/datamatrix/decoder/Version;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/datamatrix/decoder/Version;->getTotalCodewords()I

    move-result v1

    if-ne v6, v1, :cond_a

    return-object v0

    .line 64
    :cond_a
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object v0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method readCorner1(II)I
    .locals 5

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v2

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    .line 5
    invoke-virtual {p0, v0, v3, p1, p2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_0

    or-int/lit8 v2, v2, 0x1

    :cond_0
    shl-int/2addr v2, v3

    const/4 v4, 0x2

    .line 9
    invoke-virtual {p0, v0, v4, p1, p2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    or-int/lit8 v2, v2, 0x1

    :cond_1
    shl-int/lit8 v0, v2, 0x1

    add-int/lit8 v2, p2, -0x2

    .line 13
    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v2

    if-eqz v2, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    shl-int/2addr v0, v3

    add-int/lit8 v2, p2, -0x1

    .line 17
    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/2addr v0, v3

    .line 21
    invoke-virtual {p0, v3, v2, p1, p2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/2addr v0, v3

    .line 25
    invoke-virtual {p0, v4, v2, p1, p2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/2addr v0, v3

    const/4 v1, 0x3

    .line 29
    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result p1

    if-eqz p1, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    return v0
.end method

.method readCorner2(II)I
    .locals 4

    add-int/lit8 v0, p1, -0x3

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v0

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/lit8 v3, p1, -0x2

    .line 5
    invoke-virtual {p0, v3, v1, p1, p2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    shl-int/2addr v0, v2

    add-int/lit8 v3, p1, -0x1

    .line 9
    invoke-virtual {p0, v3, v1, p1, p2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x4

    .line 13
    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x3

    .line 17
    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x2

    .line 21
    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x1

    .line 25
    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/2addr v0, v2

    .line 29
    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result p1

    if-eqz p1, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    return v0
.end method

.method readCorner3(II)I
    .locals 7

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v2

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    add-int/lit8 v4, p2, -0x1

    .line 5
    invoke-virtual {p0, v0, v4, p1, p2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    or-int/lit8 v2, v2, 0x1

    :cond_0
    shl-int/lit8 v0, v2, 0x1

    add-int/lit8 v2, p2, -0x3

    .line 9
    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v5

    if-eqz v5, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    shl-int/2addr v0, v3

    add-int/lit8 v5, p2, -0x2

    .line 13
    invoke-virtual {p0, v1, v5, p1, p2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v6

    if-eqz v6, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    shl-int/2addr v0, v3

    .line 17
    invoke-virtual {p0, v1, v4, p1, p2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/2addr v0, v3

    .line 21
    invoke-virtual {p0, v3, v2, p1, p2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/2addr v0, v3

    .line 25
    invoke-virtual {p0, v3, v5, p1, p2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/2addr v0, v3

    .line 29
    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result p1

    if-eqz p1, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    return v0
.end method

.method readCorner4(II)I
    .locals 4

    add-int/lit8 v0, p1, -0x3

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v0

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/lit8 v3, p1, -0x2

    .line 5
    invoke-virtual {p0, v3, v1, p1, p2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    shl-int/2addr v0, v2

    add-int/lit8 v3, p1, -0x1

    .line 9
    invoke-virtual {p0, v3, v1, p1, p2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x2

    .line 13
    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x1

    .line 17
    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/2addr v0, v2

    .line 21
    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/2addr v0, v2

    const/4 v1, 0x2

    .line 25
    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/2addr v0, v2

    const/4 v1, 0x3

    .line 29
    invoke-virtual {p0, v1, v3, p1, p2}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result p1

    if-eqz p1, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    return v0
.end method

.method readModule(IIII)Z
    .locals 0

    if-gez p1, :cond_0

    add-int/2addr p1, p3

    add-int/lit8 p3, p3, 0x4

    and-int/lit8 p3, p3, 0x7

    rsub-int/lit8 p3, p3, 0x4

    add-int/2addr p2, p3

    :cond_0
    if-gez p2, :cond_1

    add-int/2addr p2, p4

    add-int/lit8 p4, p4, 0x4

    and-int/lit8 p3, p4, 0x7

    rsub-int/lit8 p3, p3, 0x4

    add-int/2addr p1, p3

    .line 1
    :cond_1
    iget-object p3, p0, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {p3, p2, p1}, Lcom/dcloud/zxing2/common/BitMatrix;->set(II)V

    .line 2
    iget-object p3, p0, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {p3, p2, p1}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result p1

    return p1
.end method

.method readUtah(IIII)I
    .locals 5

    add-int/lit8 v0, p1, -0x2

    add-int/lit8 v1, p2, -0x2

    .line 1
    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, p2, -0x1

    .line 5
    invoke-virtual {p0, v0, v3, p3, p4}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    or-int/lit8 v2, v2, 0x1

    :cond_0
    shl-int/lit8 v0, v2, 0x1

    add-int/lit8 v2, p1, -0x1

    .line 9
    invoke-virtual {p0, v2, v1, p3, p4}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    shl-int/lit8 v0, v0, 0x1

    .line 13
    invoke-virtual {p0, v2, v3, p3, p4}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    shl-int/lit8 v0, v0, 0x1

    .line 17
    invoke-virtual {p0, v2, p2, p3, p4}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v2

    if-eqz v2, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/lit8 v0, v0, 0x1

    .line 21
    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/lit8 v0, v0, 0x1

    .line 25
    invoke-virtual {p0, p1, v3, p3, p4}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/lit8 v0, v0, 0x1

    .line 29
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/dcloud/zxing2/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result p1

    if-eqz p1, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    return v0
.end method
