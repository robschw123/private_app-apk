.class abstract Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI01weightDecoder;
.super Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI01decoder;


# direct methods
.method constructor <init>(Lcom/dcloud/zxing2/common/BitArray;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI01decoder;-><init>(Lcom/dcloud/zxing2/common/BitArray;)V

    return-void
.end method


# virtual methods
.method protected abstract addWeightCode(Ljava/lang/StringBuilder;I)V
.end method

.method protected abstract checkWeight(I)I
.end method

.method protected final encodeCompressedWeight(Ljava/lang/StringBuilder;II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AbstractExpandedDecoder;->getGeneralDecoder()Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result p2

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI01weightDecoder;->addWeightCode(Ljava/lang/StringBuilder;I)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI01weightDecoder;->checkWeight(I)I

    move-result p2

    const p3, 0x186a0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 8
    div-int v1, p2, p3

    if-nez v1, :cond_0

    const/16 v1, 0x30

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    :cond_0
    div-int/lit8 p3, p3, 0xa

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method
