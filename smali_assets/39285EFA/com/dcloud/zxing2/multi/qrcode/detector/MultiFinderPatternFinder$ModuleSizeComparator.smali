.class final Lcom/dcloud/zxing2/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/zxing2/multi/qrcode/detector/MultiFinderPatternFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ModuleSizeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;",
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

.method synthetic constructor <init>(Lcom/dcloud/zxing2/multi/qrcode/detector/MultiFinderPatternFinder$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/dcloud/zxing2/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;)I
    .locals 3

    .line 2
    invoke-virtual {p2}, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result p2

    invoke-virtual {p1}, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result p1

    sub-float/2addr p2, p1

    float-to-double p1, p2

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    check-cast p2, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    invoke-virtual {p0, p1, p2}, Lcom/dcloud/zxing2/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;->compare(Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;)I

    move-result p1

    return p1
.end method
