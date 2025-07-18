.class public abstract Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AbstractExpandedDecoder;
.super Ljava/lang/Object;


# instance fields
.field private final generalDecoder:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;

.field private final information:Lcom/dcloud/zxing2/common/BitArray;


# direct methods
.method constructor <init>(Lcom/dcloud/zxing2/common/BitArray;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AbstractExpandedDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    .line 3
    new-instance v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    invoke-direct {v0, p1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;-><init>(Lcom/dcloud/zxing2/common/BitArray;)V

    iput-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AbstractExpandedDecoder;->generalDecoder:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    return-void
.end method

.method public static createDecoder(Lcom/dcloud/zxing2/common/BitArray;)Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AbstractExpandedDecoder;
    .locals 7

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI01AndOtherAIs;

    invoke-direct {v0, p0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI01AndOtherAIs;-><init>(Lcom/dcloud/zxing2/common/BitArray;)V

    return-object v0

    :cond_0
    const/4 v1, 0x2

    .line 4
    invoke-virtual {p0, v1}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    new-instance v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AnyAIDecoder;

    invoke-direct {v0, p0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AnyAIDecoder;-><init>(Lcom/dcloud/zxing2/common/BitArray;)V

    return-object v0

    :cond_1
    const/4 v1, 0x4

    .line 8
    invoke-static {p0, v0, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(Lcom/dcloud/zxing2/common/BitArray;II)I

    move-result v2

    if-eq v2, v1, :cond_5

    const/4 v1, 0x5

    if-eq v2, v1, :cond_4

    .line 15
    invoke-static {p0, v0, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(Lcom/dcloud/zxing2/common/BitArray;II)I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_3

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    const/4 v1, 0x7

    .line 21
    invoke-static {p0, v0, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(Lcom/dcloud/zxing2/common/BitArray;II)I

    move-result v0

    const-string v1, "17"

    const-string v2, "15"

    const-string v3, "13"

    const-string v4, "11"

    const-string v5, "320"

    const-string v6, "310"

    packed-switch v0, :pswitch_data_0

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown decoder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :pswitch_0
    new-instance v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    invoke-direct {v0, p0, v5, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/dcloud/zxing2/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 35
    :pswitch_1
    new-instance v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    invoke-direct {v0, p0, v6, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/dcloud/zxing2/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 36
    :pswitch_2
    new-instance v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    invoke-direct {v0, p0, v5, v2}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/dcloud/zxing2/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 37
    :pswitch_3
    new-instance v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    invoke-direct {v0, p0, v6, v2}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/dcloud/zxing2/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 38
    :pswitch_4
    new-instance v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    invoke-direct {v0, p0, v5, v3}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/dcloud/zxing2/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 39
    :pswitch_5
    new-instance v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    invoke-direct {v0, p0, v6, v3}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/dcloud/zxing2/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 40
    :pswitch_6
    new-instance v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    invoke-direct {v0, p0, v5, v4}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/dcloud/zxing2/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 41
    :pswitch_7
    new-instance v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    invoke-direct {v0, p0, v6, v4}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/dcloud/zxing2/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 42
    :cond_2
    new-instance v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI01393xDecoder;

    invoke-direct {v0, p0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI01393xDecoder;-><init>(Lcom/dcloud/zxing2/common/BitArray;)V

    return-object v0

    .line 43
    :cond_3
    new-instance v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI01392xDecoder;

    invoke-direct {v0, p0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI01392xDecoder;-><init>(Lcom/dcloud/zxing2/common/BitArray;)V

    return-object v0

    .line 44
    :cond_4
    new-instance v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI01320xDecoder;

    invoke-direct {v0, p0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI01320xDecoder;-><init>(Lcom/dcloud/zxing2/common/BitArray;)V

    return-object v0

    .line 45
    :cond_5
    new-instance v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI013103decoder;

    invoke-direct {v0, p0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AI013103decoder;-><init>(Lcom/dcloud/zxing2/common/BitArray;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected final getGeneralDecoder()Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AbstractExpandedDecoder;->generalDecoder:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    return-object v0
.end method

.method protected final getInformation()Lcom/dcloud/zxing2/common/BitArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AbstractExpandedDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    return-object v0
.end method

.method public abstract parseInformation()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;,
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation
.end method
