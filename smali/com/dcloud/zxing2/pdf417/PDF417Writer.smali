.class public final Lcom/dcloud/zxing2/pdf417/PDF417Writer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dcloud/zxing2/Writer;


# static fields
.field static final DEFAULT_ERROR_CORRECTION_LEVEL:I = 0x2

.field static final WHITE_SPACE:I = 0x1e


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bitMatrixFromEncoder(Lcom/dcloud/zxing2/pdf417/encoder/PDF417;Ljava/lang/String;IIII)Lcom/dcloud/zxing2/common/BitMatrix;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/WriterException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/dcloud/zxing2/pdf417/encoder/PDF417;->generateBarcodeLogic(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/encoder/PDF417;->getBarcodeMatrix()Lcom/dcloud/zxing2/pdf417/encoder/BarcodeMatrix;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, Lcom/dcloud/zxing2/pdf417/encoder/BarcodeMatrix;->getScaledMatrix(II)[[B

    move-result-object p1

    const/4 v0, 0x0

    if-le p4, p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    aget-object v2, p1, v0

    array-length v2, v2

    array-length v3, p1

    if-ge v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    xor-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 7
    invoke-static {p1}, Lcom/dcloud/zxing2/pdf417/PDF417Writer;->rotateArray([[B)[[B

    move-result-object p1

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 11
    :goto_2
    aget-object v0, p1, v0

    array-length v0, v0

    div-int/2addr p3, v0

    .line 12
    array-length v0, p1

    div-int/2addr p4, v0

    if-ge p3, p4, :cond_3

    goto :goto_3

    :cond_3
    move p3, p4

    :goto_3
    if-le p3, p2, :cond_5

    .line 23
    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/encoder/PDF417;->getBarcodeMatrix()Lcom/dcloud/zxing2/pdf417/encoder/BarcodeMatrix;

    move-result-object p0

    mul-int/lit8 p1, p3, 0x4

    invoke-virtual {p0, p3, p1}, Lcom/dcloud/zxing2/pdf417/encoder/BarcodeMatrix;->getScaledMatrix(II)[[B

    move-result-object p0

    if-eqz v1, :cond_4

    .line 25
    invoke-static {p0}, Lcom/dcloud/zxing2/pdf417/PDF417Writer;->rotateArray([[B)[[B

    move-result-object p0

    .line 27
    :cond_4
    invoke-static {p0, p5}, Lcom/dcloud/zxing2/pdf417/PDF417Writer;->bitMatrixFrombitArray([[BI)Lcom/dcloud/zxing2/common/BitMatrix;

    move-result-object p0

    return-object p0

    .line 29
    :cond_5
    invoke-static {p1, p5}, Lcom/dcloud/zxing2/pdf417/PDF417Writer;->bitMatrixFrombitArray([[BI)Lcom/dcloud/zxing2/common/BitMatrix;

    move-result-object p0

    return-object p0
.end method

.method private static bitMatrixFrombitArray([[BI)Lcom/dcloud/zxing2/common/BitMatrix;
    .locals 7

    .line 1
    new-instance v0, Lcom/dcloud/zxing2/common/BitMatrix;

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    mul-int/lit8 v3, p1, 0x2

    add-int/2addr v2, v3

    array-length v4, p0

    add-int/2addr v4, v3

    invoke-direct {v0, v2, v4}, Lcom/dcloud/zxing2/common/BitMatrix;-><init>(II)V

    .line 2
    invoke-virtual {v0}, Lcom/dcloud/zxing2/common/BitMatrix;->clear()V

    .line 3
    invoke-virtual {v0}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result v2

    sub-int/2addr v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_2

    const/4 v5, 0x0

    .line 4
    :goto_1
    aget-object v6, p0, v1

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 6
    aget-object v6, p0, v4

    aget-byte v6, v6, v5

    if-ne v6, v3, :cond_0

    add-int v6, v5, p1

    .line 7
    invoke-virtual {v0, v6, v2}, Lcom/dcloud/zxing2/common/BitMatrix;->set(II)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static rotateArray([[B)[[B
    .locals 8

    const/4 v0, 0x0

    .line 1
    aget-object v1, p0, v0

    array-length v1, v1

    array-length v2, p0

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    aput v1, v3, v0

    const-class v1, B

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    const/4 v2, 0x0

    .line 2
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 5
    array-length v3, p0

    sub-int/2addr v3, v2

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    .line 6
    :goto_1
    aget-object v6, p0, v0

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 7
    aget-object v6, v1, v5

    aget-object v7, p0, v2

    aget-byte v7, v7, v5

    aput-byte v7, v6, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/dcloud/zxing2/BarcodeFormat;II)Lcom/dcloud/zxing2/common/BitMatrix;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/WriterException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 41
    invoke-virtual/range {v0 .. v5}, Lcom/dcloud/zxing2/pdf417/PDF417Writer;->encode(Ljava/lang/String;Lcom/dcloud/zxing2/BarcodeFormat;IILjava/util/Map;)Lcom/dcloud/zxing2/common/BitMatrix;

    move-result-object p1

    return-object p1
.end method

.method public encode(Ljava/lang/String;Lcom/dcloud/zxing2/BarcodeFormat;IILjava/util/Map;)Lcom/dcloud/zxing2/common/BitMatrix;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dcloud/zxing2/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/dcloud/zxing2/EncodeHintType;",
            "*>;)",
            "Lcom/dcloud/zxing2/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/WriterException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->PDF_417:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p2, v0, :cond_7

    .line 5
    new-instance v1, Lcom/dcloud/zxing2/pdf417/encoder/PDF417;

    invoke-direct {v1}, Lcom/dcloud/zxing2/pdf417/encoder/PDF417;-><init>()V

    const/16 p2, 0x1e

    const/4 v0, 0x2

    if-eqz p5, :cond_6

    .line 10
    sget-object v2, Lcom/dcloud/zxing2/EncodeHintType;->PDF417_COMPACT:Lcom/dcloud/zxing2/EncodeHintType;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11
    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dcloud/zxing2/pdf417/encoder/PDF417;->setCompact(Z)V

    .line 13
    :cond_0
    sget-object v2, Lcom/dcloud/zxing2/EncodeHintType;->PDF417_COMPACTION:Lcom/dcloud/zxing2/EncodeHintType;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 14
    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dcloud/zxing2/pdf417/encoder/Compaction;->valueOf(Ljava/lang/String;)Lcom/dcloud/zxing2/pdf417/encoder/Compaction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dcloud/zxing2/pdf417/encoder/PDF417;->setCompaction(Lcom/dcloud/zxing2/pdf417/encoder/Compaction;)V

    .line 16
    :cond_1
    sget-object v2, Lcom/dcloud/zxing2/EncodeHintType;->PDF417_DIMENSIONS:Lcom/dcloud/zxing2/EncodeHintType;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 17
    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dcloud/zxing2/pdf417/encoder/Dimensions;

    .line 18
    invoke-virtual {v2}, Lcom/dcloud/zxing2/pdf417/encoder/Dimensions;->getMaxCols()I

    move-result v3

    .line 19
    invoke-virtual {v2}, Lcom/dcloud/zxing2/pdf417/encoder/Dimensions;->getMinCols()I

    move-result v4

    .line 20
    invoke-virtual {v2}, Lcom/dcloud/zxing2/pdf417/encoder/Dimensions;->getMaxRows()I

    move-result v5

    .line 21
    invoke-virtual {v2}, Lcom/dcloud/zxing2/pdf417/encoder/Dimensions;->getMinRows()I

    move-result v2

    .line 22
    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/dcloud/zxing2/pdf417/encoder/PDF417;->setDimensions(IIII)V

    .line 27
    :cond_2
    sget-object v2, Lcom/dcloud/zxing2/EncodeHintType;->MARGIN:Lcom/dcloud/zxing2/EncodeHintType;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 28
    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 30
    :cond_3
    sget-object v2, Lcom/dcloud/zxing2/EncodeHintType;->ERROR_CORRECTION:Lcom/dcloud/zxing2/EncodeHintType;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 31
    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 33
    :cond_4
    sget-object v2, Lcom/dcloud/zxing2/EncodeHintType;->CHARACTER_SET:Lcom/dcloud/zxing2/EncodeHintType;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 34
    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p5

    .line 35
    invoke-virtual {v1, p5}, Lcom/dcloud/zxing2/pdf417/encoder/PDF417;->setEncoding(Ljava/nio/charset/Charset;)V

    :cond_5
    move v6, p2

    move v3, v0

    goto :goto_0

    :cond_6
    const/4 v3, 0x2

    const/16 v6, 0x1e

    :goto_0
    move-object v2, p1

    move v4, p3

    move v5, p4

    .line 39
    invoke-static/range {v1 .. v6}, Lcom/dcloud/zxing2/pdf417/PDF417Writer;->bitMatrixFromEncoder(Lcom/dcloud/zxing2/pdf417/encoder/PDF417;Ljava/lang/String;IIII)Lcom/dcloud/zxing2/common/BitMatrix;

    move-result-object p1

    return-object p1

    .line 40
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Can only encode PDF_417, but got "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
