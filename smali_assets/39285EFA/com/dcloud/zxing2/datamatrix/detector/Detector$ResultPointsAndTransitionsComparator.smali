.class final Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/zxing2/datamatrix/detector/Detector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResultPointsAndTransitionsComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;",
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

.method synthetic constructor <init>(Lcom/dcloud/zxing2/datamatrix/detector/Detector$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;)I
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result p1

    invoke-virtual {p2}, Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;

    check-cast p2, Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;

    invoke-virtual {p0, p1, p2}, Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;->compare(Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;)I

    move-result p1

    return p1
.end method
