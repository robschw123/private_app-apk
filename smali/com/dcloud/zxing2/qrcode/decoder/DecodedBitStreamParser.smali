.class final Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;


# static fields
.field private static final ALPHANUMERIC_CHARS:[C

.field private static final GB2312_SUBSET:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2d

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x20s
        0x24s
        0x25s
        0x2as
        0x2bs
        0x2ds
        0x2es
        0x2fs
        0x3as
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decode([BLcom/dcloud/zxing2/qrcode/decoder/Version;Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/dcloud/zxing2/common/DecoderResult;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/dcloud/zxing2/qrcode/decoder/Version;",
            "Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;",
            "Ljava/util/Map<",
            "Lcom/dcloud/zxing2/DecodeHintType;",
            "*>;)",
            "Lcom/dcloud/zxing2/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    new-instance v7, Lcom/dcloud/zxing2/common/BitSource;

    move-object/from16 v8, p0

    invoke-direct {v7, v8}, Lcom/dcloud/zxing2/common/BitSource;-><init>([B)V

    .line 2
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3
    new-instance v10, Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, -0x1

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 15
    :goto_0
    :try_start_0
    invoke-virtual {v7}, Lcom/dcloud/zxing2/common/BitSource;->available()I

    move-result v1

    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    .line 17
    sget-object v1, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->TERMINATOR:Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    :goto_1
    move-object v6, v1

    goto :goto_2

    .line 19
    :cond_0
    invoke-virtual {v7, v3}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result v1

    invoke-static {v1}, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->forBits(I)Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    move-result-object v1

    goto :goto_1

    .line 21
    :goto_2
    sget-object v5, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->TERMINATOR:Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    if-eq v6, v5, :cond_4

    .line 22
    sget-object v1, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    if-eq v6, v1, :cond_c

    sget-object v1, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->FNC1_SECOND_POSITION:Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    if-ne v6, v1, :cond_1

    goto/16 :goto_4

    .line 25
    :cond_1
    sget-object v1, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->STRUCTURED_APPEND:Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    if-ne v6, v1, :cond_3

    .line 26
    invoke-virtual {v7}, Lcom/dcloud/zxing2/common/BitSource;->available()I

    move-result v1

    const/16 v3, 0x10

    if-lt v1, v3, :cond_2

    const/16 v1, 0x8

    .line 31
    invoke-virtual {v7, v1}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result v3

    .line 32
    invoke-virtual {v7, v1}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result v1

    move v14, v1

    move-object v13, v2

    move-object v11, v5

    move-object v12, v6

    move v5, v3

    goto/16 :goto_7

    .line 33
    :cond_2
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object v0

    throw v0

    .line 39
    :cond_3
    sget-object v1, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->ECI:Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    if-ne v6, v1, :cond_6

    .line 41
    invoke-static {v7}, Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;->parseECIValue(Lcom/dcloud/zxing2/common/BitSource;)I

    move-result v1

    .line 42
    invoke-static {v1}, Lcom/dcloud/zxing2/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/dcloud/zxing2/common/CharacterSetECI;

    move-result-object v16

    if-eqz v16, :cond_5

    :cond_4
    :goto_3
    move-object v11, v5

    move-object v12, v6

    goto/16 :goto_5

    .line 44
    :cond_5
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object v0

    throw v0

    .line 48
    :cond_6
    sget-object v1, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->HANZI:Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    if-ne v6, v1, :cond_7

    .line 50
    invoke-virtual {v7, v3}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result v1

    .line 51
    invoke-virtual {v6, v0}, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/dcloud/zxing2/qrcode/decoder/Version;)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result v3

    if-ne v1, v11, :cond_4

    .line 53
    invoke-static {v7, v9, v3}, Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;->decodeHanziSegment(Lcom/dcloud/zxing2/common/BitSource;Ljava/lang/StringBuilder;I)V

    goto :goto_3

    .line 58
    :cond_7
    invoke-virtual {v6, v0}, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/dcloud/zxing2/qrcode/decoder/Version;)I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result v3

    .line 59
    sget-object v1, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->NUMERIC:Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    if-ne v6, v1, :cond_8

    .line 60
    invoke-static {v7, v9, v3}, Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;->decodeNumericSegment(Lcom/dcloud/zxing2/common/BitSource;Ljava/lang/StringBuilder;I)V

    goto :goto_3

    .line 61
    :cond_8
    sget-object v1, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    if-ne v6, v1, :cond_9

    .line 62
    invoke-static {v7, v9, v3, v15}, Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;->decodeAlphanumericSegment(Lcom/dcloud/zxing2/common/BitSource;Ljava/lang/StringBuilder;IZ)V

    goto :goto_3

    .line 63
    :cond_9
    sget-object v1, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->BYTE:Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    if-ne v6, v1, :cond_a

    move-object v1, v7

    move-object v2, v9

    move-object/from16 v4, v16

    move-object v11, v5

    move-object v5, v10

    move-object v12, v6

    move-object/from16 v6, p3

    .line 65
    invoke-static/range {v1 .. v6}, Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;->decodeByteSegment(Lcom/dcloud/zxing2/common/BitSource;Ljava/lang/StringBuilder;ILcom/dcloud/zxing2/common/CharacterSetECI;Ljava/util/Collection;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    move v5, v13

    move-object v13, v1

    goto :goto_7

    :cond_a
    move-object v11, v5

    move-object v12, v6

    .line 66
    sget-object v1, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->KANJI:Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    if-ne v12, v1, :cond_b

    .line 67
    invoke-static {v7, v9, v3}, Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;->decodeKanjiSegment(Lcom/dcloud/zxing2/common/BitSource;Ljava/lang/StringBuilder;I)V

    goto :goto_5

    .line 69
    :cond_b
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    :goto_4
    move-object v11, v5

    move-object v12, v6

    move v5, v13

    const/4 v15, 0x1

    goto :goto_6

    :goto_5
    move v5, v13

    :goto_6
    move-object v13, v2

    :goto_7
    if-ne v12, v11, :cond_f

    .line 80
    new-instance v7, Lcom/dcloud/zxing2/common/DecoderResult;

    .line 81
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v3, 0x0

    goto :goto_8

    :cond_d
    move-object v3, v10

    :goto_8
    if-nez p2, :cond_e

    const/4 v4, 0x0

    goto :goto_9

    .line 83
    :cond_e
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_9
    move-object v0, v7

    move-object/from16 v1, p0

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/dcloud/zxing2/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;II)V

    .line 87
    iput-object v13, v7, Lcom/dcloud/zxing2/common/DecoderResult;->textCharset:Ljava/lang/String;

    return-object v7

    :cond_f
    move-object v2, v13

    const/4 v11, 0x1

    move v13, v5

    goto/16 :goto_0

    .line 88
    :catch_0
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object v0

    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a
.end method

.method private static decodeAlphanumericSegment(Lcom/dcloud/zxing2/common/BitSource;Ljava/lang/StringBuilder;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitSource;->available()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 6
    invoke-virtual {p0, v2}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result v1

    .line 7
    div-int/lit8 v2, v1, 0x2d

    invoke-static {v2}, Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    rem-int/lit8 v1, v1, 0x2d

    invoke-static {v1}, Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x2

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    :cond_1
    if-ne p2, v1, :cond_3

    .line 18
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitSource;->available()I

    move-result p2

    const/4 v2, 0x6

    if-lt p2, v2, :cond_2

    .line 21
    invoke-virtual {p0, v2}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result p0

    invoke-static {p0}, Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 22
    :cond_2
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_1
    if-eqz p3, :cond_6

    .line 29
    :goto_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-ge v0, p0, :cond_6

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    const/16 p2, 0x25

    if-ne p0, p2, :cond_5

    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v1

    if-ge v0, p0, :cond_4

    add-int/lit8 p0, v0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p3

    if-ne p3, p2, :cond_4

    .line 33
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    const/16 p0, 0x1d

    .line 36
    invoke-virtual {p1, v0, p0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method private static decodeByteSegment(Lcom/dcloud/zxing2/common/BitSource;Ljava/lang/StringBuilder;ILcom/dcloud/zxing2/common/CharacterSetECI;Ljava/util/Collection;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dcloud/zxing2/common/BitSource;",
            "Ljava/lang/StringBuilder;",
            "I",
            "Lcom/dcloud/zxing2/common/CharacterSetECI;",
            "Ljava/util/Collection<",
            "[B>;",
            "Ljava/util/Map<",
            "Lcom/dcloud/zxing2/DecodeHintType;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    mul-int/lit8 v0, p2, 0x8

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitSource;->available()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 5
    new-array v0, p2, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/16 v2, 0x8

    .line 7
    invoke-virtual {p0, v2}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 16
    invoke-static {v0, p5}, Lcom/dcloud/zxing2/common/StringUtils;->guessEncoding([BLjava/util/Map;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    .line 21
    :goto_1
    :try_start_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v0, p0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    invoke-interface {p4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 26
    :catch_0
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    .line 27
    :cond_2
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method private static decodeHanziSegment(Lcom/dcloud/zxing2/common/BitSource;Ljava/lang/StringBuilder;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    mul-int/lit8 v0, p2, 0xd

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitSource;->available()I

    move-result v1

    if-gt v0, v1, :cond_2

    mul-int/lit8 v0, p2, 0x2

    .line 7
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    if-lez p2, :cond_1

    const/16 v2, 0xd

    .line 11
    invoke-virtual {p0, v2}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result v2

    .line 12
    div-int/lit8 v3, v2, 0x60

    shl-int/lit8 v3, v3, 0x8

    rem-int/lit8 v2, v2, 0x60

    or-int/2addr v2, v3

    const/16 v3, 0x3bf

    if-ge v2, v3, :cond_0

    const v3, 0xa1a1

    goto :goto_1

    :cond_0
    const v3, 0xa6a1

    :goto_1
    add-int/2addr v2, v3

    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 20
    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 21
    aput-byte v2, v0, v3

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 27
    :cond_1
    :try_start_0
    new-instance p0, Ljava/lang/String;

    const-string p2, "GB2312"

    invoke-direct {p0, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 29
    :catch_0
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    .line 30
    :cond_2
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method private static decodeKanjiSegment(Lcom/dcloud/zxing2/common/BitSource;Ljava/lang/StringBuilder;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    mul-int/lit8 v0, p2, 0xd

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitSource;->available()I

    move-result v1

    if-gt v0, v1, :cond_2

    mul-int/lit8 v0, p2, 0x2

    .line 7
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    if-lez p2, :cond_1

    const/16 v2, 0xd

    .line 11
    invoke-virtual {p0, v2}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result v2

    .line 12
    div-int/lit16 v3, v2, 0xc0

    shl-int/lit8 v3, v3, 0x8

    rem-int/lit16 v2, v2, 0xc0

    or-int/2addr v2, v3

    const/16 v3, 0x1f00

    if-ge v2, v3, :cond_0

    const v3, 0x8140

    goto :goto_1

    :cond_0
    const v3, 0xc140

    :goto_1
    add-int/2addr v2, v3

    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    .line 20
    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    int-to-byte v2, v2

    .line 21
    aput-byte v2, v0, v3

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 27
    :cond_1
    :try_start_0
    new-instance p0, Ljava/lang/String;

    const-string p2, "UTF-8"

    invoke-direct {p0, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 29
    :catch_0
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    .line 30
    :cond_2
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method private static decodeNumericSegment(Lcom/dcloud/zxing2/common/BitSource;Ljava/lang/StringBuilder;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    :goto_0
    const/4 v0, 0x3

    const/16 v1, 0xa

    if-lt p2, v0, :cond_2

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitSource;->available()I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result v0

    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_0

    .line 8
    div-int/lit8 v2, v0, 0x64

    invoke-static {v2}, Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    div-int/lit8 v2, v0, 0xa

    rem-int/2addr v2, v1

    invoke-static {v2}, Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    rem-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x3

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    .line 12
    :cond_1
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    .line 25
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitSource;->available()I

    move-result p2

    const/4 v0, 0x7

    if-lt p2, v0, :cond_4

    .line 28
    invoke-virtual {p0, v0}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result p0

    const/16 p2, 0x64

    if-ge p0, p2, :cond_3

    .line 32
    div-int/lit8 p2, p0, 0xa

    invoke-static {p2}, Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    rem-int/2addr p0, v1

    invoke-static {p0}, Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 34
    :cond_3
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    .line 35
    :cond_4
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_8

    .line 45
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitSource;->available()I

    move-result p2

    const/4 v0, 0x4

    if-lt p2, v0, :cond_7

    .line 48
    invoke-virtual {p0, v0}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result p0

    if-ge p0, v1, :cond_6

    .line 52
    invoke-static {p0}, Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 53
    :cond_6
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    .line 54
    :cond_7
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    :cond_8
    :goto_1
    return-void
.end method

.method private static parseECIValue(Lcom/dcloud/zxing2/common/BitSource;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_0

    and-int/lit8 p0, v1, 0x7f

    return p0

    :cond_0
    and-int/lit16 v2, v1, 0xc0

    const/16 v3, 0x80

    if-ne v2, v3, :cond_1

    .line 8
    invoke-virtual {p0, v0}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result p0

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v0, v1, 0x8

    or-int/2addr p0, v0

    return p0

    :cond_1
    and-int/lit16 v0, v1, 0xe0

    const/16 v2, 0xc0

    if-ne v0, v2, :cond_2

    const/16 v0, 0x10

    .line 13
    invoke-virtual {p0, v0}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result p0

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v0, v1, 0x10

    or-int/2addr p0, v0

    return p0

    .line 16
    :cond_2
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static toAlphaNumericChar(I)C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 4
    aget-char p0, v0, p0

    return p0

    .line 5
    :cond_0
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0
.end method
