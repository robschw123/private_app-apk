.class final Lcom/dcloud/zxing2/aztec/encoder/BinaryShiftToken;
.super Lcom/dcloud/zxing2/aztec/encoder/Token;


# instance fields
.field private final binaryShiftByteCount:S

.field private final binaryShiftStart:S


# direct methods
.method constructor <init>(Lcom/dcloud/zxing2/aztec/encoder/Token;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/dcloud/zxing2/aztec/encoder/Token;-><init>(Lcom/dcloud/zxing2/aztec/encoder/Token;)V

    int-to-short p1, p2

    .line 2
    iput-short p1, p0, Lcom/dcloud/zxing2/aztec/encoder/BinaryShiftToken;->binaryShiftStart:S

    int-to-short p1, p3

    .line 3
    iput-short p1, p0, Lcom/dcloud/zxing2/aztec/encoder/BinaryShiftToken;->binaryShiftByteCount:S

    return-void
.end method


# virtual methods
.method public appendTo(Lcom/dcloud/zxing2/common/BitArray;[B)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-short v1, p0, Lcom/dcloud/zxing2/aztec/encoder/BinaryShiftToken;->binaryShiftByteCount:S

    if-ge v0, v1, :cond_4

    const/16 v2, 0x3e

    const/16 v3, 0x1f

    if-eqz v0, :cond_0

    if-ne v0, v3, :cond_3

    if-gt v1, v2, :cond_3

    :cond_0
    const/4 v1, 0x5

    .line 5
    invoke-virtual {p1, v3, v1}, Lcom/dcloud/zxing2/common/BitArray;->appendBits(II)V

    .line 6
    iget-short v4, p0, Lcom/dcloud/zxing2/aztec/encoder/BinaryShiftToken;->binaryShiftByteCount:S

    if-le v4, v2, :cond_1

    add-int/lit8 v4, v4, -0x1f

    const/16 v1, 0x10

    .line 7
    invoke-virtual {p1, v4, v1}, Lcom/dcloud/zxing2/common/BitArray;->appendBits(II)V

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    .line 10
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p1, v2, v1}, Lcom/dcloud/zxing2/common/BitArray;->appendBits(II)V

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, -0x1f

    .line 13
    invoke-virtual {p1, v4, v1}, Lcom/dcloud/zxing2/common/BitArray;->appendBits(II)V

    .line 16
    :cond_3
    :goto_1
    iget-short v1, p0, Lcom/dcloud/zxing2/aztec/encoder/BinaryShiftToken;->binaryShiftStart:S

    add-int/2addr v1, v0

    aget-byte v1, p2, v1

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Lcom/dcloud/zxing2/common/BitArray;->appendBits(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/dcloud/zxing2/aztec/encoder/BinaryShiftToken;->binaryShiftStart:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/dcloud/zxing2/aztec/encoder/BinaryShiftToken;->binaryShiftStart:S

    iget-short v2, p0, Lcom/dcloud/zxing2/aztec/encoder/BinaryShiftToken;->binaryShiftByteCount:S

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
