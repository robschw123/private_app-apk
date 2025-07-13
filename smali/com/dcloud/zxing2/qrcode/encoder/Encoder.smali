.class public final Lcom/dcloud/zxing2/qrcode/encoder/Encoder;
.super Ljava/lang/Object;


# static fields
.field private static final ALPHANUMERIC_TABLE:[I

.field static final DEFAULT_BYTE_MODE_ENCODING:Ljava/lang/String; = "ISO-8859-1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x60

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/dcloud/zxing2/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        0x25
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x28
        -0x1
        0x29
        0x2a
        0x2b
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static append8BitBytes(Ljava/lang/String;Lcom/dcloud/zxing2/common/BitArray;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/WriterException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-byte v1, p0, v0

    const/16 v2, 0x8

    .line 6
    invoke-virtual {p1, v1, v2}, Lcom/dcloud/zxing2/common/BitArray;->appendBits(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 7
    new-instance p1, Lcom/dcloud/zxing2/WriterException;

    invoke-direct {p1, p0}, Lcom/dcloud/zxing2/WriterException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method static appendAlphanumericBytes(Ljava/lang/CharSequence;Lcom/dcloud/zxing2/common/BitArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/WriterException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 4
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/dcloud/zxing2/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    add-int/lit8 v4, v1, 0x1

    if-ge v4, v0, :cond_1

    .line 9
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/dcloud/zxing2/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v4

    if-eq v4, v3, :cond_0

    mul-int/lit8 v2, v2, 0x2d

    add-int/2addr v2, v4

    const/16 v3, 0xb

    .line 14
    invoke-virtual {p1, v2, v3}, Lcom/dcloud/zxing2/common/BitArray;->appendBits(II)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 15
    :cond_0
    new-instance p0, Lcom/dcloud/zxing2/WriterException;

    invoke-direct {p0}, Lcom/dcloud/zxing2/WriterException;-><init>()V

    throw p0

    :cond_1
    const/4 v1, 0x6

    .line 22
    invoke-virtual {p1, v2, v1}, Lcom/dcloud/zxing2/common/BitArray;->appendBits(II)V

    move v1, v4

    goto :goto_0

    .line 23
    :cond_2
    new-instance p0, Lcom/dcloud/zxing2/WriterException;

    invoke-direct {p0}, Lcom/dcloud/zxing2/WriterException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method static appendBytes(Ljava/lang/String;Lcom/dcloud/zxing2/qrcode/decoder/Mode;Lcom/dcloud/zxing2/common/BitArray;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/WriterException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/qrcode/encoder/Encoder$1;->$SwitchMap$com$dcloud$zxing2$qrcode$decoder$Mode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p3, 0x4

    if-ne v0, p3, :cond_0

    .line 16
    invoke-static {p0, p2}, Lcom/dcloud/zxing2/qrcode/encoder/Encoder;->appendKanjiBytes(Ljava/lang/String;Lcom/dcloud/zxing2/common/BitArray;)V

    goto :goto_0

    .line 15
    :cond_0
    new-instance p0, Lcom/dcloud/zxing2/WriterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid mode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dcloud/zxing2/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_1
    invoke-static {p0, p2, p3}, Lcom/dcloud/zxing2/qrcode/encoder/Encoder;->append8BitBytes(Ljava/lang/String;Lcom/dcloud/zxing2/common/BitArray;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_2
    invoke-static {p0, p2}, Lcom/dcloud/zxing2/qrcode/encoder/Encoder;->appendAlphanumericBytes(Ljava/lang/CharSequence;Lcom/dcloud/zxing2/common/BitArray;)V

    goto :goto_0

    .line 19
    :cond_3
    invoke-static {p0, p2}, Lcom/dcloud/zxing2/qrcode/encoder/Encoder;->appendNumericBytes(Ljava/lang/CharSequence;Lcom/dcloud/zxing2/common/BitArray;)V

    :goto_0
    return-void
.end method

.method private static appendECI(Lcom/dcloud/zxing2/common/CharacterSetECI;Lcom/dcloud/zxing2/common/BitArray;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->ECI:Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->getBits()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/dcloud/zxing2/common/BitArray;->appendBits(II)V

    .line 3
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/CharacterSetECI;->getValue()I

    move-result p0

    const/16 v0, 0x8

    invoke-virtual {p1, p0, v0}, Lcom/dcloud/zxing2/common/BitArray;->appendBits(II)V

    return-void
.end method

.method static appendKanjiBytes(Ljava/lang/String;Lcom/dcloud/zxing2/common/BitArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/WriterException;
        }
    .end annotation

    :try_start_0
    const-string v0, "Shift_JIS"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 7
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    .line 8
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    const v3, 0x8140

    const/4 v4, -0x1

    if-lt v2, v3, :cond_0

    const v5, 0x9ffc

    if-gt v2, v5, :cond_0

    :goto_1
    sub-int/2addr v2, v3

    goto :goto_2

    :cond_0
    const v3, 0xe040

    if-lt v2, v3, :cond_1

    const v3, 0xebbf

    if-gt v2, v3, :cond_1

    const v3, 0xc140

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    :goto_2
    if-eq v2, v4, :cond_2

    shr-int/lit8 v3, v2, 0x8

    mul-int/lit16 v3, v3, 0xc0

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v3, v2

    const/16 v2, 0xd

    .line 20
    invoke-virtual {p1, v3, v2}, Lcom/dcloud/zxing2/common/BitArray;->appendBits(II)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 21
    :cond_2
    new-instance p0, Lcom/dcloud/zxing2/WriterException;

    const-string p1, "Invalid byte sequence"

    invoke-direct {p0, p1}, Lcom/dcloud/zxing2/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void

    :catch_0
    move-exception p0

    .line 22
    new-instance p1, Lcom/dcloud/zxing2/WriterException;

    invoke-direct {p1, p0}, Lcom/dcloud/zxing2/WriterException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method static appendLengthInfo(ILcom/dcloud/zxing2/qrcode/decoder/Version;Lcom/dcloud/zxing2/qrcode/decoder/Mode;Lcom/dcloud/zxing2/common/BitArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/WriterException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2, p1}, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/dcloud/zxing2/qrcode/decoder/Version;)I

    move-result p1

    const/4 p2, 0x1

    shl-int v0, p2, p1

    if-ge p0, v0, :cond_0

    .line 5
    invoke-virtual {p3, p0, p1}, Lcom/dcloud/zxing2/common/BitArray;->appendBits(II)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Lcom/dcloud/zxing2/WriterException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is bigger than "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v0, p2

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/dcloud/zxing2/WriterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static appendModeInfo(Lcom/dcloud/zxing2/qrcode/decoder/Mode;Lcom/dcloud/zxing2/common/BitArray;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->getBits()I

    move-result p0

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Lcom/dcloud/zxing2/common/BitArray;->appendBits(II)V

    return-void
.end method

.method static appendNumericBytes(Ljava/lang/CharSequence;Lcom/dcloud/zxing2/common/BitArray;)V
    .locals 6

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/lit8 v3, v1, 0x2

    if-ge v3, v0, :cond_0

    add-int/lit8 v4, v1, 0x1

    .line 7
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    .line 8
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v2, v2, 0x64

    const/16 v5, 0xa

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    .line 9
    invoke-virtual {p1, v2, v5}, Lcom/dcloud/zxing2/common/BitArray;->appendBits(II)V

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_1

    .line 13
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v1

    const/4 v1, 0x7

    .line 14
    invoke-virtual {p1, v2, v1}, Lcom/dcloud/zxing2/common/BitArray;->appendBits(II)V

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    .line 18
    invoke-virtual {p1, v2, v3}, Lcom/dcloud/zxing2/common/BitArray;->appendBits(II)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static calculateMaskPenalty(Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/dcloud/zxing2/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1(Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)I

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/dcloud/zxing2/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule2(Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-static {p0}, Lcom/dcloud/zxing2/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule3(Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    invoke-static {p0}, Lcom/dcloud/zxing2/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule4(Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static chooseMaskPattern(Lcom/dcloud/zxing2/common/BitArray;Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;Lcom/dcloud/zxing2/qrcode/decoder/Version;Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/WriterException;
        }
    .end annotation

    const v0, 0x7fffffff

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 1
    invoke-static {p0, p1, p2, v2, p3}, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/dcloud/zxing2/common/BitArray;Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;Lcom/dcloud/zxing2/qrcode/decoder/Version;ILcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V

    .line 2
    invoke-static {p3}, Lcom/dcloud/zxing2/qrcode/encoder/Encoder;->calculateMaskPenalty(Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)I

    move-result v3

    if-ge v3, v0, :cond_0

    move v1, v2

    move v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static chooseMode(Ljava/lang/String;)Lcom/dcloud/zxing2/qrcode/decoder/Mode;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/dcloud/zxing2/qrcode/encoder/Encoder;->chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    move-result-object p0

    return-object p0
.end method

.method private static chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/dcloud/zxing2/qrcode/decoder/Mode;
    .locals 5

    const-string v0, "Shift_JIS"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/dcloud/zxing2/qrcode/encoder/Encoder;->isOnlyDoubleByteKanji(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    sget-object p0, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->KANJI:Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p1, v2, :cond_3

    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    const/4 v4, 0x1

    if-lt v2, v3, :cond_1

    const/16 v3, 0x39

    if-gt v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    .line 12
    :cond_1
    invoke-static {v2}, Lcom/dcloud/zxing2/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 15
    :cond_2
    sget-object p0, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->BYTE:Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    return-object p0

    :cond_3
    if-eqz v0, :cond_4

    .line 19
    sget-object p0, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    return-object p0

    :cond_4
    if-eqz v1, :cond_5

    .line 22
    sget-object p0, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->NUMERIC:Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    return-object p0

    .line 24
    :cond_5
    sget-object p0, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->BYTE:Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    return-object p0
.end method

.method private static chooseVersion(ILcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;)Lcom/dcloud/zxing2/qrcode/decoder/Version;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/WriterException;
        }
    .end annotation

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x28

    if-gt v0, v1, :cond_1

    .line 1
    invoke-static {v0}, Lcom/dcloud/zxing2/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/dcloud/zxing2/qrcode/decoder/Version;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/dcloud/zxing2/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v2

    .line 5
    invoke-virtual {v1, p1}, Lcom/dcloud/zxing2/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;)Lcom/dcloud/zxing2/qrcode/decoder/Version$ECBlocks;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Lcom/dcloud/zxing2/qrcode/decoder/Version$ECBlocks;->getTotalECCodewords()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v3, p0, 0x7

    .line 9
    div-int/lit8 v3, v3, 0x8

    if-lt v2, v3, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_1
    new-instance p0, Lcom/dcloud/zxing2/WriterException;

    const-string p1, "Data too big"

    invoke-direct {p0, p1}, Lcom/dcloud/zxing2/WriterException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static encode(Ljava/lang/String;Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;)Lcom/dcloud/zxing2/qrcode/encoder/QRCode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/WriterException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/dcloud/zxing2/qrcode/encoder/Encoder;->encode(Ljava/lang/String;Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/dcloud/zxing2/qrcode/encoder/QRCode;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/String;Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/dcloud/zxing2/qrcode/encoder/QRCode;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;",
            "Ljava/util/Map<",
            "Lcom/dcloud/zxing2/EncodeHintType;",
            "*>;)",
            "Lcom/dcloud/zxing2/qrcode/encoder/QRCode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/WriterException;
        }
    .end annotation

    const-string v0, "ISO-8859-1"

    if-eqz p2, :cond_0

    .line 2
    sget-object v1, Lcom/dcloud/zxing2/EncodeHintType;->CHARACTER_SET:Lcom/dcloud/zxing2/EncodeHintType;

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 8
    :goto_0
    invoke-static {p0, p2}, Lcom/dcloud/zxing2/qrcode/encoder/Encoder;->chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    move-result-object v1

    .line 12
    new-instance v2, Lcom/dcloud/zxing2/common/BitArray;

    invoke-direct {v2}, Lcom/dcloud/zxing2/common/BitArray;-><init>()V

    .line 15
    sget-object v3, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->BYTE:Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    if-ne v1, v3, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 16
    invoke-static {p2}, Lcom/dcloud/zxing2/common/CharacterSetECI;->getCharacterSetECIByName(Ljava/lang/String;)Lcom/dcloud/zxing2/common/CharacterSetECI;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 18
    invoke-static {v0, v2}, Lcom/dcloud/zxing2/qrcode/encoder/Encoder;->appendECI(Lcom/dcloud/zxing2/common/CharacterSetECI;Lcom/dcloud/zxing2/common/BitArray;)V

    .line 23
    :cond_1
    invoke-static {v1, v2}, Lcom/dcloud/zxing2/qrcode/encoder/Encoder;->appendModeInfo(Lcom/dcloud/zxing2/qrcode/decoder/Mode;Lcom/dcloud/zxing2/common/BitArray;)V

    .line 27
    new-instance v0, Lcom/dcloud/zxing2/common/BitArray;

    invoke-direct {v0}, Lcom/dcloud/zxing2/common/BitArray;-><init>()V

    .line 28
    invoke-static {p0, v1, v0, p2}, Lcom/dcloud/zxing2/qrcode/encoder/Encoder;->appendBytes(Ljava/lang/String;Lcom/dcloud/zxing2/qrcode/decoder/Mode;Lcom/dcloud/zxing2/common/BitArray;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v2}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result p2

    const/4 v4, 0x1

    .line 35
    invoke-static {v4}, Lcom/dcloud/zxing2/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/dcloud/zxing2/qrcode/decoder/Version;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/dcloud/zxing2/qrcode/decoder/Version;)I

    move-result v4

    add-int/2addr p2, v4

    .line 36
    invoke-virtual {v0}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v4

    add-int/2addr p2, v4

    .line 37
    invoke-static {p2, p1}, Lcom/dcloud/zxing2/qrcode/encoder/Encoder;->chooseVersion(ILcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;)Lcom/dcloud/zxing2/qrcode/decoder/Version;

    move-result-object p2

    .line 41
    invoke-virtual {v2}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v4

    .line 42
    invoke-virtual {v1, p2}, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/dcloud/zxing2/qrcode/decoder/Version;)I

    move-result p2

    add-int/2addr v4, p2

    .line 43
    invoke-virtual {v0}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result p2

    add-int/2addr v4, p2

    .line 44
    invoke-static {v4, p1}, Lcom/dcloud/zxing2/qrcode/encoder/Encoder;->chooseVersion(ILcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;)Lcom/dcloud/zxing2/qrcode/decoder/Version;

    move-result-object p2

    .line 46
    new-instance v4, Lcom/dcloud/zxing2/common/BitArray;

    invoke-direct {v4}, Lcom/dcloud/zxing2/common/BitArray;-><init>()V

    .line 47
    invoke-virtual {v4, v2}, Lcom/dcloud/zxing2/common/BitArray;->appendBitArray(Lcom/dcloud/zxing2/common/BitArray;)V

    if-ne v1, v3, :cond_2

    .line 49
    invoke-virtual {v0}, Lcom/dcloud/zxing2/common/BitArray;->getSizeInBytes()I

    move-result p0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .line 50
    :goto_1
    invoke-static {p0, p2, v1, v4}, Lcom/dcloud/zxing2/qrcode/encoder/Encoder;->appendLengthInfo(ILcom/dcloud/zxing2/qrcode/decoder/Version;Lcom/dcloud/zxing2/qrcode/decoder/Mode;Lcom/dcloud/zxing2/common/BitArray;)V

    .line 52
    invoke-virtual {v4, v0}, Lcom/dcloud/zxing2/common/BitArray;->appendBitArray(Lcom/dcloud/zxing2/common/BitArray;)V

    .line 54
    invoke-virtual {p2, p1}, Lcom/dcloud/zxing2/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;)Lcom/dcloud/zxing2/qrcode/decoder/Version$ECBlocks;

    move-result-object p0

    .line 55
    invoke-virtual {p2}, Lcom/dcloud/zxing2/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v0

    invoke-virtual {p0}, Lcom/dcloud/zxing2/qrcode/decoder/Version$ECBlocks;->getTotalECCodewords()I

    move-result v2

    sub-int/2addr v0, v2

    .line 58
    invoke-static {v0, v4}, Lcom/dcloud/zxing2/qrcode/encoder/Encoder;->terminateBits(ILcom/dcloud/zxing2/common/BitArray;)V

    .line 62
    invoke-virtual {p2}, Lcom/dcloud/zxing2/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v2

    .line 64
    invoke-virtual {p0}, Lcom/dcloud/zxing2/qrcode/decoder/Version$ECBlocks;->getNumBlocks()I

    move-result p0

    .line 65
    invoke-static {v4, v2, v0, p0}, Lcom/dcloud/zxing2/qrcode/encoder/Encoder;->interleaveWithECBytes(Lcom/dcloud/zxing2/common/BitArray;III)Lcom/dcloud/zxing2/common/BitArray;

    move-result-object p0

    .line 70
    new-instance v0, Lcom/dcloud/zxing2/qrcode/encoder/QRCode;

    invoke-direct {v0}, Lcom/dcloud/zxing2/qrcode/encoder/QRCode;-><init>()V

    .line 72
    invoke-virtual {v0, p1}, Lcom/dcloud/zxing2/qrcode/encoder/QRCode;->setECLevel(Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;)V

    .line 73
    invoke-virtual {v0, v1}, Lcom/dcloud/zxing2/qrcode/encoder/QRCode;->setMode(Lcom/dcloud/zxing2/qrcode/decoder/Mode;)V

    .line 74
    invoke-virtual {v0, p2}, Lcom/dcloud/zxing2/qrcode/encoder/QRCode;->setVersion(Lcom/dcloud/zxing2/qrcode/decoder/Version;)V

    .line 77
    invoke-virtual {p2}, Lcom/dcloud/zxing2/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v1

    .line 78
    new-instance v2, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;

    invoke-direct {v2, v1, v1}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;-><init>(II)V

    .line 79
    invoke-static {p0, p1, p2, v2}, Lcom/dcloud/zxing2/qrcode/encoder/Encoder;->chooseMaskPattern(Lcom/dcloud/zxing2/common/BitArray;Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;Lcom/dcloud/zxing2/qrcode/decoder/Version;Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)I

    move-result v1

    .line 80
    invoke-virtual {v0, v1}, Lcom/dcloud/zxing2/qrcode/encoder/QRCode;->setMaskPattern(I)V

    .line 83
    invoke-static {p0, p1, p2, v1, v2}, Lcom/dcloud/zxing2/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/dcloud/zxing2/common/BitArray;Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;Lcom/dcloud/zxing2/qrcode/decoder/Version;ILcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V

    .line 84
    invoke-virtual {v0, v2}, Lcom/dcloud/zxing2/qrcode/encoder/QRCode;->setMatrix(Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)V

    return-object v0
.end method

.method static generateECBytes([BI)[B
    .locals 5

    .line 1
    array-length v0, p0

    add-int v1, v0, p1

    .line 2
    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 4
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Lcom/dcloud/zxing2/common/reedsolomon/ReedSolomonEncoder;

    sget-object v3, Lcom/dcloud/zxing2/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/dcloud/zxing2/common/reedsolomon/GenericGF;

    invoke-direct {p0, v3}, Lcom/dcloud/zxing2/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/dcloud/zxing2/common/reedsolomon/GenericGF;)V

    invoke-virtual {p0, v1, p1}, Lcom/dcloud/zxing2/common/reedsolomon/ReedSolomonEncoder;->encode([II)V

    .line 8
    new-array p0, p1, [B

    :goto_1
    if-ge v2, p1, :cond_1

    add-int v3, v0, v2

    .line 10
    aget v3, v1, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method static getAlphanumericCode(I)I
    .locals 2

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 2
    aget p0, v0, p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method static getNumDataBytesAndNumECBytesForBlockID(IIII[I[I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/WriterException;
        }
    .end annotation

    if-ge p3, p2, :cond_4

    .line 1
    rem-int v0, p0, p2

    sub-int v1, p2, v0

    .line 5
    div-int v2, p0, p2

    add-int/lit8 v3, v2, 0x1

    .line 9
    div-int/2addr p1, p2

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v2, p1

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_3

    add-int v5, v1, v0

    if-ne p2, v5, :cond_2

    add-int p2, p1, v2

    mul-int p2, p2, v1

    add-int v5, v4, v3

    mul-int v5, v5, v0

    add-int/2addr p2, v5

    if-ne p0, p2, :cond_1

    const/4 p0, 0x0

    if-ge p3, v1, :cond_0

    .line 35
    aput p1, p4, p0

    .line 36
    aput v2, p5, p0

    goto :goto_0

    .line 38
    :cond_0
    aput v4, p4, p0

    .line 39
    aput v3, p5, p0

    :goto_0
    return-void

    .line 40
    :cond_1
    new-instance p0, Lcom/dcloud/zxing2/WriterException;

    const-string p1, "Total bytes mismatch"

    invoke-direct {p0, p1}, Lcom/dcloud/zxing2/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 41
    :cond_2
    new-instance p0, Lcom/dcloud/zxing2/WriterException;

    const-string p1, "RS blocks mismatch"

    invoke-direct {p0, p1}, Lcom/dcloud/zxing2/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42
    :cond_3
    new-instance p0, Lcom/dcloud/zxing2/WriterException;

    const-string p1, "EC bytes mismatch"

    invoke-direct {p0, p1}, Lcom/dcloud/zxing2/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_4
    new-instance p0, Lcom/dcloud/zxing2/WriterException;

    const-string p1, "Block ID too large"

    invoke-direct {p0, p1}, Lcom/dcloud/zxing2/WriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static interleaveWithECBytes(Lcom/dcloud/zxing2/common/BitArray;III)Lcom/dcloud/zxing2/common/BitArray;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/WriterException;
        }
    .end annotation

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/dcloud/zxing2/common/BitArray;->getSizeInBytes()I

    move-result v0

    if-ne v0, v7, :cond_9

    .line 12
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v11, v8, :cond_0

    const/4 v0, 0x1

    new-array v15, v0, [I

    new-array v5, v0, [I

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move v3, v11

    move-object v4, v15

    move-object/from16 v16, v5

    .line 17
    invoke-static/range {v0 .. v5}, Lcom/dcloud/zxing2/qrcode/encoder/Encoder;->getNumDataBytesAndNumECBytesForBlockID(IIII[I[I)V

    .line 21
    aget v0, v15, v10

    .line 22
    new-array v1, v0, [B

    mul-int/lit8 v2, v12, 0x8

    move-object/from16 v3, p0

    .line 23
    invoke-virtual {v3, v2, v1, v10, v0}, Lcom/dcloud/zxing2/common/BitArray;->toBytes(I[BII)V

    .line 24
    aget v2, v16, v10

    invoke-static {v1, v2}, Lcom/dcloud/zxing2/qrcode/encoder/Encoder;->generateECBytes([BI)[B

    move-result-object v2

    .line 25
    new-instance v4, Lcom/dcloud/zxing2/qrcode/encoder/BlockPair;

    invoke-direct {v4, v1, v2}, Lcom/dcloud/zxing2/qrcode/encoder/BlockPair;-><init>([B[B)V

    invoke-interface {v9, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 28
    array-length v0, v2

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 29
    aget v0, v15, v10

    add-int/2addr v12, v0

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    if-ne v7, v12, :cond_8

    .line 35
    new-instance v0, Lcom/dcloud/zxing2/common/BitArray;

    invoke-direct {v0}, Lcom/dcloud/zxing2/common/BitArray;-><init>()V

    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x8

    if-ge v1, v14, :cond_3

    .line 39
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dcloud/zxing2/qrcode/encoder/BlockPair;

    .line 40
    invoke-virtual {v4}, Lcom/dcloud/zxing2/qrcode/encoder/BlockPair;->getDataBytes()[B

    move-result-object v4

    .line 41
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 42
    aget-byte v4, v4, v1

    invoke-virtual {v0, v4, v2}, Lcom/dcloud/zxing2/common/BitArray;->appendBits(II)V

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    if-ge v10, v13, :cond_6

    .line 48
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dcloud/zxing2/qrcode/encoder/BlockPair;

    .line 49
    invoke-virtual {v3}, Lcom/dcloud/zxing2/qrcode/encoder/BlockPair;->getErrorCorrectionBytes()[B

    move-result-object v3

    .line 50
    array-length v4, v3

    if-ge v10, v4, :cond_4

    .line 51
    aget-byte v3, v3, v10

    invoke-virtual {v0, v3, v2}, Lcom/dcloud/zxing2/common/BitArray;->appendBits(II)V

    goto :goto_4

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 55
    :cond_6
    invoke-virtual {v0}, Lcom/dcloud/zxing2/common/BitArray;->getSizeInBytes()I

    move-result v1

    if-ne v6, v1, :cond_7

    return-object v0

    .line 56
    :cond_7
    new-instance v1, Lcom/dcloud/zxing2/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interleaving error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Lcom/dcloud/zxing2/common/BitArray;->getSizeInBytes()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " differ."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/dcloud/zxing2/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_8
    new-instance v0, Lcom/dcloud/zxing2/WriterException;

    const-string v1, "Data bytes does not match offset"

    invoke-direct {v0, v1}, Lcom/dcloud/zxing2/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_9
    new-instance v0, Lcom/dcloud/zxing2/WriterException;

    const-string v1, "Number of bits and data bytes does not match"

    invoke-direct {v0, v1}, Lcom/dcloud/zxing2/WriterException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method private static isOnlyDoubleByteKanji(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "Shift_JIS"

    .line 1
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    array-length v1, p0

    .line 6
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 10
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x81

    if-lt v3, v4, :cond_1

    const/16 v4, 0x9f

    if-le v3, v4, :cond_2

    :cond_1
    const/16 v4, 0xe0

    if-lt v3, v4, :cond_3

    const/16 v4, 0xeb

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method static terminateBits(ILcom/dcloud/zxing2/common/BitArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/WriterException;
        }
    .end annotation

    mul-int/lit8 v0, p0, 0x8

    .line 1
    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v1

    if-gt v1, v0, :cond_5

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v3

    if-ge v3, v0, :cond_0

    .line 6
    invoke-virtual {p1, v1}, Lcom/dcloud/zxing2/common/BitArray;->appendBit(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    const/16 v3, 0x8

    if-lez v2, :cond_1

    :goto_1
    if-ge v2, v3, :cond_1

    .line 13
    invoke-virtual {p1, v1}, Lcom/dcloud/zxing2/common/BitArray;->appendBit(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitArray;->getSizeInBytes()I

    move-result v2

    sub-int/2addr p0, v2

    :goto_2
    if-ge v1, p0, :cond_3

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_2

    const/16 v2, 0xec

    goto :goto_3

    :cond_2
    const/16 v2, 0x11

    .line 19
    :goto_3
    invoke-virtual {p1, v2, v3}, Lcom/dcloud/zxing2/common/BitArray;->appendBits(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 21
    :cond_3
    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result p0

    if-ne p0, v0, :cond_4

    return-void

    .line 22
    :cond_4
    new-instance p0, Lcom/dcloud/zxing2/WriterException;

    const-string p1, "Bits size does not equal capacity"

    invoke-direct {p0, p1}, Lcom/dcloud/zxing2/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :cond_5
    new-instance p0, Lcom/dcloud/zxing2/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data bits cannot fit in the QR Code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dcloud/zxing2/WriterException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method
