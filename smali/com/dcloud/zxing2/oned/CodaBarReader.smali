.class public final Lcom/dcloud/zxing2/oned/CodaBarReader;
.super Lcom/dcloud/zxing2/oned/OneDReader;


# static fields
.field static final ALPHABET:[C

.field private static final ALPHABET_STRING:Ljava/lang/String; = "0123456789-$:/.+ABCD"

.field static final CHARACTER_ENCODINGS:[I

.field private static final MAX_ACCEPTABLE:F = 2.0f

.field private static final MIN_CHARACTER_LENGTH:I = 0x3

.field private static final PADDING:F = 1.5f

.field private static final STARTEND_ENCODING:[C


# instance fields
.field private counterLength:I

.field private counters:[I

.field private final decodeRowResult:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789-$:/.+ABCD"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/dcloud/zxing2/oned/CodaBarReader;->ALPHABET:[C

    const/16 v0, 0x14

    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_0

    sput-object v0, Lcom/dcloud/zxing2/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    const/4 v0, 0x4

    new-array v0, v0, [C

    .line 18
    fill-array-data v0, :array_1

    sput-object v0, Lcom/dcloud/zxing2/oned/CodaBarReader;->STARTEND_ENCODING:[C

    return-void

    :array_0
    .array-data 4
        0x3
        0x6
        0x9
        0x60
        0x12
        0x42
        0x21
        0x24
        0x30
        0x48
        0xc
        0x18
        0x45
        0x51
        0x54
        0x15
        0x1a
        0x29
        0xb
        0xe
    .end array-data

    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/dcloud/zxing2/oned/OneDReader;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    const/16 v0, 0x50

    new-array v0, v0, [I

    .line 3
    iput-object v0, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->counters:[I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->counterLength:I

    return-void
.end method

.method static arrayContains([CC)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-char v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private counterAppend(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->counters:[I

    iget v1, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->counterLength:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 2
    iput v1, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->counterLength:I

    .line 3
    array-length p1, v0

    if-lt v1, p1, :cond_0

    mul-int/lit8 p1, v1, 0x2

    .line 4
    new-array p1, p1, [I

    const/4 v2, 0x0

    .line 5
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iput-object p1, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->counters:[I

    :cond_0
    return-void
.end method

.method private findStartPattern()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 1
    :goto_0
    iget v2, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->counterLength:I

    if-ge v1, v2, :cond_3

    .line 2
    invoke-direct {p0, v1}, Lcom/dcloud/zxing2/oned/CodaBarReader;->toNarrowWidePattern(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 3
    sget-object v3, Lcom/dcloud/zxing2/oned/CodaBarReader;->STARTEND_ENCODING:[C

    sget-object v4, Lcom/dcloud/zxing2/oned/CodaBarReader;->ALPHABET:[C

    aget-char v2, v4, v2

    invoke-static {v3, v2}, Lcom/dcloud/zxing2/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    move v3, v1

    :goto_1
    add-int/lit8 v4, v1, 0x7

    if-ge v3, v4, :cond_0

    .line 8
    iget-object v4, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->counters:[I

    aget v4, v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    if-eq v1, v0, :cond_1

    .line 10
    iget-object v3, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->counters:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    div-int/lit8 v2, v2, 0x2

    if-lt v3, v2, :cond_2

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 15
    :cond_3
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object v0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private setCounters(Lcom/dcloud/zxing2/common/BitArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->counterLength:I

    .line 3
    invoke-virtual {p1, v0}, Lcom/dcloud/zxing2/common/BitArray;->getNextUnset(I)I

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    if-ge v1, v2, :cond_1

    .line 11
    invoke-virtual {p1, v1}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v5

    xor-int/2addr v5, v4

    if-eqz v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 14
    :cond_0
    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/oned/CodaBarReader;->counterAppend(I)V

    xor-int/lit8 v4, v4, 0x1

    const/4 v0, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    :cond_1
    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/oned/CodaBarReader;->counterAppend(I)V

    return-void

    .line 21
    :cond_2
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private toNarrowWidePattern(I)I
    .locals 10

    add-int/lit8 v0, p1, 0x7

    .line 1
    iget v1, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->counterLength:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_0

    return v2

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->counters:[I

    const v3, 0x7fffffff

    const/4 v4, 0x0

    move v5, p1

    const v6, 0x7fffffff

    const/4 v7, 0x0

    :goto_0
    if-ge v5, v0, :cond_3

    .line 10
    aget v8, v1, v5

    if-ge v8, v6, :cond_1

    move v6, v8

    :cond_1
    if-le v8, v7, :cond_2

    move v7, v8

    :cond_2
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_3
    add-int/2addr v6, v7

    .line 18
    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v5, p1, 0x1

    const/4 v7, 0x0

    :goto_1
    if-ge v5, v0, :cond_6

    .line 23
    aget v8, v1, v5

    if-ge v8, v3, :cond_4

    move v3, v8

    :cond_4
    if-le v8, v7, :cond_5

    move v7, v8

    :cond_5
    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    :cond_6
    add-int/2addr v3, v7

    .line 31
    div-int/lit8 v3, v3, 0x2

    const/16 v0, 0x80

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_2
    const/4 v8, 0x7

    if-ge v5, v8, :cond_9

    and-int/lit8 v8, v5, 0x1

    if-nez v8, :cond_7

    move v8, v6

    goto :goto_3

    :cond_7
    move v8, v3

    :goto_3
    shr-int/lit8 v0, v0, 0x1

    add-int v9, p1, v5

    .line 38
    aget v9, v1, v9

    if-le v9, v8, :cond_8

    or-int/2addr v7, v0

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 43
    :cond_9
    :goto_4
    sget-object p1, Lcom/dcloud/zxing2/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    array-length v0, p1

    if-ge v4, v0, :cond_b

    .line 44
    aget p1, p1, v4

    if-ne p1, v7, :cond_a

    return v4

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    return v2
.end method


# virtual methods
.method public decodeRow(ILcom/dcloud/zxing2/common/BitArray;Ljava/util/Map;)Lcom/dcloud/zxing2/Result;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/dcloud/zxing2/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/dcloud/zxing2/DecodeHintType;",
            "*>;)",
            "Lcom/dcloud/zxing2/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->counters:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2
    invoke-direct {p0, p2}, Lcom/dcloud/zxing2/oned/CodaBarReader;->setCounters(Lcom/dcloud/zxing2/common/BitArray;)V

    .line 3
    invoke-direct {p0}, Lcom/dcloud/zxing2/oned/CodaBarReader;->findStartPattern()I

    move-result p2

    .line 6
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    move v0, p2

    .line 8
    :cond_0
    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/oned/CodaBarReader;->toNarrowWidePattern(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_d

    .line 15
    iget-object v4, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    int-to-char v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x8

    .line 18
    iget-object v4, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    sget-object v4, Lcom/dcloud/zxing2/oned/CodaBarReader;->STARTEND_ENCODING:[C

    sget-object v6, Lcom/dcloud/zxing2/oned/CodaBarReader;->ALPHABET:[C

    aget-char v2, v6, v2

    .line 19
    invoke-static {v4, v2}, Lcom/dcloud/zxing2/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 22
    :cond_1
    iget v2, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->counterLength:I

    if-lt v0, v2, :cond_0

    .line 25
    :goto_0
    iget-object v2, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->counters:[I

    add-int/lit8 v4, v0, -0x1

    aget v2, v2, v4

    const/4 v6, -0x8

    const/4 v7, 0x0

    :goto_1
    if-ge v6, v3, :cond_2

    .line 28
    iget-object v8, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->counters:[I

    add-int v9, v0, v6

    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 34
    :cond_2
    iget v3, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->counterLength:I

    const/4 v6, 0x2

    if-ge v0, v3, :cond_4

    div-int/2addr v7, v6

    if-lt v2, v7, :cond_3

    goto :goto_2

    .line 35
    :cond_3
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    .line 38
    :cond_4
    :goto_2
    invoke-virtual {p0, p2}, Lcom/dcloud/zxing2/oned/CodaBarReader;->validatePattern(I)V

    const/4 v0, 0x0

    .line 41
    :goto_3
    iget-object v2, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 42
    iget-object v2, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    sget-object v3, Lcom/dcloud/zxing2/oned/CodaBarReader;->ALPHABET:[C

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    aget-char v3, v3, v7

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 45
    :cond_5
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 46
    sget-object v2, Lcom/dcloud/zxing2/oned/CodaBarReader;->STARTEND_ENCODING:[C

    invoke-static {v2, v0}, Lcom/dcloud/zxing2/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 49
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 50
    invoke-static {v2, v0}, Lcom/dcloud/zxing2/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 55
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_a

    if-eqz p3, :cond_6

    .line 60
    sget-object v0, Lcom/dcloud/zxing2/DecodeHintType;->RETURN_CODABAR_START_END:Lcom/dcloud/zxing2/DecodeHintType;

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 61
    :cond_6
    iget-object p3, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 62
    iget-object p3, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_7
    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_4
    if-ge p3, p2, :cond_8

    .line 67
    iget-object v2, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->counters:[I

    aget v2, v2, p3

    add-int/2addr v0, v2

    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_8
    int-to-float p3, v0

    :goto_5
    if-ge p2, v4, :cond_9

    .line 71
    iget-object v2, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->counters:[I

    aget v2, v2, p2

    add-int/2addr v0, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_9
    int-to-float p2, v0

    .line 74
    new-instance v0, Lcom/dcloud/zxing2/Result;

    iget-object v2, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Lcom/dcloud/zxing2/ResultPoint;

    new-instance v4, Lcom/dcloud/zxing2/ResultPoint;

    int-to-float p1, p1

    invoke-direct {v4, p3, p1}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    aput-object v4, v3, v1

    new-instance p3, Lcom/dcloud/zxing2/ResultPoint;

    invoke-direct {p3, p2, p1}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    aput-object p3, v3, v5

    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->CODABAR:Lcom/dcloud/zxing2/BarcodeFormat;

    const/4 p2, 0x0

    invoke-direct {v0, v2, p2, v3, p1}, Lcom/dcloud/zxing2/Result;-><init>(Ljava/lang/String;[B[Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/BarcodeFormat;)V

    return-object v0

    .line 76
    :cond_a
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    .line 77
    :cond_b
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    .line 78
    :cond_c
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    .line 79
    :cond_d
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method validatePattern(I)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    new-array v2, v0, [I

    .line 2
    fill-array-data v2, :array_1

    .line 3
    iget-object v3, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    move v6, p1

    const/4 v5, 0x0

    .line 9
    :goto_0
    sget-object v7, Lcom/dcloud/zxing2/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    iget-object v8, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x6

    const/4 v9, 0x6

    :goto_1
    const/4 v10, 0x2

    if-ltz v9, :cond_0

    and-int/lit8 v11, v9, 0x1

    and-int/lit8 v12, v7, 0x1

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    .line 14
    aget v10, v1, v11

    iget-object v12, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->counters:[I

    add-int v13, v6, v9

    aget v12, v12, v13

    add-int/2addr v10, v12

    aput v10, v1, v11

    .line 15
    aget v10, v2, v11

    add-int/lit8 v10, v10, 0x1

    aput v10, v2, v11

    shr-int/lit8 v7, v7, 0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    :cond_0
    if-lt v5, v3, :cond_5

    new-array v7, v0, [F

    new-array v9, v0, [F

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v10, :cond_1

    const/4 v5, 0x0

    .line 32
    aput v5, v9, v0

    add-int/lit8 v5, v0, 0x2

    .line 33
    aget v6, v1, v0

    int-to-float v6, v6

    aget v11, v2, v0

    int-to-float v11, v11

    div-float/2addr v6, v11

    aget v11, v1, v5

    int-to-float v11, v11

    aget v12, v2, v5

    int-to-float v12, v12

    div-float/2addr v11, v12

    add-float/2addr v6, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v6, v11

    aput v6, v9, v5

    .line 34
    aget v6, v9, v5

    aput v6, v7, v0

    .line 35
    aget v6, v1, v5

    int-to-float v6, v6

    mul-float v6, v6, v11

    const/high16 v11, 0x3fc00000    # 1.5f

    add-float/2addr v6, v11

    aget v11, v2, v5

    int-to-float v11, v11

    div-float/2addr v6, v11

    aput v6, v7, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 41
    :cond_1
    :goto_3
    sget-object v0, Lcom/dcloud/zxing2/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    iget-object v1, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x6

    :goto_4
    if-ltz v1, :cond_3

    and-int/lit8 v2, v1, 0x1

    and-int/lit8 v5, v0, 0x1

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    .line 46
    iget-object v5, p0, Lcom/dcloud/zxing2/oned/CodaBarReader;->counters:[I

    add-int v6, p1, v1

    aget v5, v5, v6

    int-to-float v5, v5

    .line 47
    aget v6, v9, v2

    cmpg-float v6, v5, v6

    if-ltz v6, :cond_2

    aget v2, v7, v2

    cmpl-float v2, v5, v2

    if-gtz v2, :cond_2

    shr-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 48
    :cond_2
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    :cond_3
    if-lt v4, v3, :cond_4

    return-void

    :cond_4
    add-int/lit8 p1, p1, 0x8

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v6, v6, 0x8

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
