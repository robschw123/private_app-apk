.class final Lcom/dcloud/zxing2/multi/qrcode/QRCodeMultiReader$SAComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/zxing2/multi/qrcode/QRCodeMultiReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SAComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/dcloud/zxing2/Result;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dcloud/zxing2/multi/qrcode/QRCodeMultiReader$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/dcloud/zxing2/multi/qrcode/QRCodeMultiReader$SAComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/dcloud/zxing2/Result;Lcom/dcloud/zxing2/Result;)I
    .locals 1

    .line 2
    invoke-virtual {p1}, Lcom/dcloud/zxing2/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object p1

    sget-object v0, Lcom/dcloud/zxing2/ResultMetadataType;->STRUCTURED_APPEND_SEQUENCE:Lcom/dcloud/zxing2/ResultMetadataType;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    invoke-virtual {p2}, Lcom/dcloud/zxing2/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ge p1, p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/dcloud/zxing2/Result;

    check-cast p2, Lcom/dcloud/zxing2/Result;

    invoke-virtual {p0, p1, p2}, Lcom/dcloud/zxing2/multi/qrcode/QRCodeMultiReader$SAComparator;->compare(Lcom/dcloud/zxing2/Result;Lcom/dcloud/zxing2/Result;)I

    move-result p1

    return p1
.end method
