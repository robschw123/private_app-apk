.class abstract Lcom/dcloud/zxing2/qrcode/decoder/DataMask;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask111;,
        Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask110;,
        Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask101;,
        Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask100;,
        Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask011;,
        Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask010;,
        Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask001;,
        Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask000;
    }
.end annotation


# static fields
.field private static final DATA_MASKS:[Lcom/dcloud/zxing2/qrcode/decoder/DataMask;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/dcloud/zxing2/qrcode/decoder/DataMask;

    .line 1
    new-instance v1, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask000;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask000;-><init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask001;

    invoke-direct {v1, v2}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask001;-><init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask010;

    invoke-direct {v1, v2}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask010;-><init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask011;

    invoke-direct {v1, v2}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask011;-><init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask100;

    invoke-direct {v1, v2}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask100;-><init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    new-instance v1, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask101;

    invoke-direct {v1, v2}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask101;-><init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    new-instance v1, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask110;

    invoke-direct {v1, v2}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask110;-><init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V

    const/4 v3, 0x6

    aput-object v1, v0, v3

    new-instance v1, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask111;

    invoke-direct {v1, v2}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask111;-><init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/dcloud/zxing2/qrcode/decoder/DataMask;->DATA_MASKS:[Lcom/dcloud/zxing2/qrcode/decoder/DataMask;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask;-><init>()V

    return-void
.end method

.method static forReference(I)Lcom/dcloud/zxing2/qrcode/decoder/DataMask;
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x7

    if-gt p0, v0, :cond_0

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/qrcode/decoder/DataMask;->DATA_MASKS:[Lcom/dcloud/zxing2/qrcode/decoder/DataMask;

    aget-object p0, v0, p0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method abstract isMasked(II)Z
.end method

.method final unmaskBitMatrix(Lcom/dcloud/zxing2/common/BitMatrix;I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_1

    .line 1
    invoke-virtual {p0, v1, v2}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask;->isMasked(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2
    invoke-virtual {p1, v2, v1}, Lcom/dcloud/zxing2/common/BitMatrix;->flip(II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
