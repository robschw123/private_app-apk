.class final Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI013103decoder;
.super Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI013x0xDecoder;


# direct methods
.method constructor <init>(Lcom/dcloud/zxing2/common/BitArray;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI013x0xDecoder;-><init>(Lcom/dcloud/zxing2/common/BitArray;)V

    return-void
.end method


# virtual methods
.method protected addWeightCode(Ljava/lang/StringBuilder;I)V
    .locals 0

    const-string p2, "(3103)"

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected checkWeight(I)I
    .locals 0

    return p1
.end method
