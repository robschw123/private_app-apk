.class public final Lcom/dcloud/zxing2/oned/rss/RSS14Reader;
.super Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;


# static fields
.field private static final FINDER_PATTERNS:[[I

.field private static final INSIDE_GSUM:[I

.field private static final INSIDE_ODD_TOTAL_SUBSET:[I

.field private static final INSIDE_ODD_WIDEST:[I

.field private static final OUTSIDE_EVEN_TOTAL_SUBSET:[I

.field private static final OUTSIDE_GSUM:[I

.field private static final OUTSIDE_ODD_WIDEST:[I


# instance fields
.field private final possibleLeftPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/oned/rss/Pair;",
            ">;"
        }
    .end annotation
.end field

.field private final possibleRightPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/oned/rss/Pair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->OUTSIDE_EVEN_TOTAL_SUBSET:[I

    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 2
    fill-array-data v2, :array_1

    sput-object v2, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->INSIDE_ODD_TOTAL_SUBSET:[I

    new-array v2, v0, [I

    .line 3
    fill-array-data v2, :array_2

    sput-object v2, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->OUTSIDE_GSUM:[I

    new-array v2, v1, [I

    .line 4
    fill-array-data v2, :array_3

    sput-object v2, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->INSIDE_GSUM:[I

    new-array v2, v0, [I

    .line 5
    fill-array-data v2, :array_4

    sput-object v2, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->OUTSIDE_ODD_WIDEST:[I

    new-array v2, v1, [I

    .line 6
    fill-array-data v2, :array_5

    sput-object v2, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->INSIDE_ODD_WIDEST:[I

    const/16 v2, 0x9

    new-array v2, v2, [[I

    new-array v3, v1, [I

    .line 8
    fill-array-data v3, :array_6

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_7

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_8

    const/4 v4, 0x2

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_9

    const/4 v4, 0x3

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_a

    aput-object v3, v2, v1

    new-array v3, v1, [I

    fill-array-data v3, :array_b

    aput-object v3, v2, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_c

    const/4 v3, 0x6

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_d

    const/4 v3, 0x7

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_e

    const/16 v1, 0x8

    aput-object v0, v2, v1

    sput-object v2, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->FINDER_PATTERNS:[[I

    return-void

    :array_0
    .array-data 4
        0x1
        0xa
        0x22
        0x46
        0x7e
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x14
        0x30
        0x51
    .end array-data

    :array_2
    .array-data 4
        0x0
        0xa1
        0x3c1
        0x7df
        0xa9b
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x150
        0x40c
        0x5ec
    .end array-data

    :array_4
    .array-data 4
        0x8
        0x6
        0x4
        0x3
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x4
        0x6
        0x8
    .end array-data

    :array_6
    .array-data 4
        0x3
        0x8
        0x2
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x3
        0x5
        0x5
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x3
        0x3
        0x7
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x3
        0x1
        0x9
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x2
        0x7
        0x4
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x2
        0x5
        0x6
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x2
        0x3
        0x8
        0x1
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x5
        0x7
        0x1
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x3
        0x9
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    return-void
.end method

.method private static addOrTally(Ljava/util/Collection;Lcom/dcloud/zxing2/oned/rss/Pair;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/dcloud/zxing2/oned/rss/Pair;",
            ">;",
            "Lcom/dcloud/zxing2/oned/rss/Pair;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dcloud/zxing2/oned/rss/Pair;

    .line 2
    invoke-virtual {v2}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;->getValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 3
    invoke-virtual {v2}, Lcom/dcloud/zxing2/oned/rss/Pair;->incrementCount()V

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_3

    .line 9
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private adjustOddEvenCounts(ZI)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getOddCounts()[I

    move-result-object v0

    invoke-static {v0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->count([I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    move-result-object v1

    invoke-static {v1}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->count([I)I

    move-result v1

    add-int v2, v0, v1

    sub-int/2addr v2, p2

    and-int/lit8 p2, v0, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p2, p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    and-int/lit8 v5, v1, 0x1

    if-ne v5, v4, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x4

    if-eqz p1, :cond_5

    const/16 p1, 0xc

    if-le v0, p1, :cond_2

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto :goto_3

    :cond_2
    if-ge v0, v6, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    const/4 v8, 0x0

    :goto_3
    if-le v1, p1, :cond_4

    goto :goto_6

    :cond_4
    if-ge v1, v6, :cond_9

    goto :goto_7

    :cond_5
    const/16 p1, 0xb

    if-le v0, p1, :cond_6

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto :goto_5

    :cond_6
    const/4 p1, 0x5

    if-ge v0, p1, :cond_7

    const/4 v7, 0x1

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    :goto_4
    const/4 v8, 0x0

    :goto_5
    const/16 p1, 0xa

    if-le v1, p1, :cond_8

    :goto_6
    const/4 p1, 0x1

    goto :goto_8

    :cond_8
    if-ge v1, v6, :cond_9

    :goto_7
    const/4 p1, 0x0

    const/4 v3, 0x1

    goto :goto_8

    :cond_9
    const/4 p1, 0x0

    :goto_8
    if-ne v2, v4, :cond_d

    if-eqz p2, :cond_b

    if-nez v5, :cond_a

    move v4, v7

    :goto_9
    const/4 v8, 0x1

    goto :goto_b

    .line 51
    :cond_a
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    :cond_b
    if-eqz v5, :cond_c

    move v4, v7

    :goto_a
    const/4 p1, 0x1

    goto :goto_b

    .line 56
    :cond_c
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    :cond_d
    const/4 v6, -0x1

    if-ne v2, v6, :cond_11

    if-eqz p2, :cond_f

    if-nez v5, :cond_e

    goto :goto_b

    .line 63
    :cond_e
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    :cond_f
    if-eqz v5, :cond_10

    move v4, v7

    const/4 v3, 0x1

    goto :goto_b

    .line 68
    :cond_10
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    :cond_11
    if-nez v2, :cond_1c

    if-eqz p2, :cond_14

    if-eqz v5, :cond_13

    if-ge v0, v1, :cond_12

    goto :goto_a

    :cond_12
    move v4, v7

    const/4 v3, 0x1

    goto :goto_9

    .line 75
    :cond_13
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    :cond_14
    if-nez v5, :cond_1b

    move v4, v7

    :goto_b
    if-eqz v4, :cond_16

    if-nez v8, :cond_15

    .line 99
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getOddCounts()[I

    move-result-object p2

    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    move-result-object v0

    invoke-static {p2, v0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->increment([I[F)V

    goto :goto_c

    .line 100
    :cond_15
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    :cond_16
    :goto_c
    if-eqz v8, :cond_17

    .line 105
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getOddCounts()[I

    move-result-object p2

    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    move-result-object v0

    invoke-static {p2, v0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->decrement([I[F)V

    :cond_17
    if-eqz v3, :cond_19

    if-nez p1, :cond_18

    .line 111
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    move-result-object p2

    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    move-result-object v0

    invoke-static {p2, v0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->increment([I[F)V

    goto :goto_d

    .line 112
    :cond_18
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    :cond_19
    :goto_d
    if-eqz p1, :cond_1a

    .line 117
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    move-result-object p1

    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getEvenRoundingErrors()[F

    move-result-object p2

    invoke-static {p1, p2}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->decrement([I[F)V

    :cond_1a
    return-void

    .line 118
    :cond_1b
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    .line 123
    :cond_1c
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    goto :goto_f

    :goto_e
    throw p1

    :goto_f
    goto :goto_e
.end method

.method private static checkChecksum(Lcom/dcloud/zxing2/oned/rss/Pair;Lcom/dcloud/zxing2/oned/rss/Pair;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v0

    invoke-virtual {p1}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x4f

    .line 3
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/Pair;->getFinderPattern()Lcom/dcloud/zxing2/oned/rss/FinderPattern;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->getValue()I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    invoke-virtual {p1}, Lcom/dcloud/zxing2/oned/rss/Pair;->getFinderPattern()Lcom/dcloud/zxing2/oned/rss/FinderPattern;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->getValue()I

    move-result p1

    add-int/2addr p0, p1

    const/16 p1, 0x48

    if-le p0, p1, :cond_0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    const/16 p1, 0x8

    if-le p0, p1, :cond_1

    add-int/lit8 p0, p0, -0x1

    :cond_1
    if-ne v0, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static constructResult(Lcom/dcloud/zxing2/oned/rss/Pair;Lcom/dcloud/zxing2/oned/rss/Pair;)Lcom/dcloud/zxing2/Result;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;->getValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x453af5

    mul-long v0, v0, v2

    invoke-virtual {p1}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;->getValue()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xd

    rsub-int/lit8 v2, v2, 0xd

    :goto_0
    const/16 v4, 0x30

    if-lez v2, :cond_0

    .line 6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    sub-int/2addr v6, v4

    and-int/lit8 v7, v2, 0x1

    if-nez v7, :cond_1

    mul-int/lit8 v6, v6, 0x3

    :cond_1
    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/16 v2, 0xa

    .line 15
    rem-int/2addr v5, v2

    rsub-int/lit8 v3, v5, 0xa

    if-ne v3, v2, :cond_3

    const/4 v3, 0x0

    .line 19
    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/Pair;->getFinderPattern()Lcom/dcloud/zxing2/oned/rss/FinderPattern;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->getResultPoints()[Lcom/dcloud/zxing2/ResultPoint;

    move-result-object p0

    .line 22
    invoke-virtual {p1}, Lcom/dcloud/zxing2/oned/rss/Pair;->getFinderPattern()Lcom/dcloud/zxing2/oned/rss/FinderPattern;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->getResultPoints()[Lcom/dcloud/zxing2/ResultPoint;

    move-result-object p1

    .line 23
    new-instance v2, Lcom/dcloud/zxing2/Result;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/dcloud/zxing2/ResultPoint;

    aget-object v4, p0, v0

    aput-object v4, v3, v0

    const/4 v4, 0x1

    aget-object p0, p0, v4

    aput-object p0, v3, v4

    aget-object p0, p1, v0

    const/4 v0, 0x2

    aput-object p0, v3, v0

    aget-object p0, p1, v4

    const/4 p1, 0x3

    aput-object p0, v3, p1

    sget-object p0, Lcom/dcloud/zxing2/BarcodeFormat;->RSS_14:Lcom/dcloud/zxing2/BarcodeFormat;

    const/4 p1, 0x0

    invoke-direct {v2, v1, p1, v3, p0}, Lcom/dcloud/zxing2/Result;-><init>(Ljava/lang/String;[B[Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/BarcodeFormat;)V

    return-object v2
.end method

.method private decodeDataCharacter(Lcom/dcloud/zxing2/common/BitArray;Lcom/dcloud/zxing2/oned/rss/FinderPattern;Z)Lcom/dcloud/zxing2/oned/rss/DataCharacter;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p3

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getDataCharacterCounters()[I

    move-result-object v2

    const/4 v3, 0x0

    .line 2
    aput v3, v2, v3

    const/4 v4, 0x1

    .line 3
    aput v3, v2, v4

    const/4 v5, 0x2

    .line 4
    aput v3, v2, v5

    const/4 v6, 0x3

    .line 5
    aput v3, v2, v6

    const/4 v7, 0x4

    .line 6
    aput v3, v2, v7

    const/4 v8, 0x5

    .line 7
    aput v3, v2, v8

    const/4 v8, 0x6

    .line 8
    aput v3, v2, v8

    const/4 v8, 0x7

    .line 9
    aput v3, v2, v8

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual/range {p2 .. p2}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v8

    aget v8, v8, v3

    invoke-static {v0, v8, v2}, Lcom/dcloud/zxing2/oned/OneDReader;->recordPatternInReverse(Lcom/dcloud/zxing2/common/BitArray;I[I)V

    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v8

    aget v8, v8, v4

    add-int/2addr v8, v4

    invoke-static {v0, v8, v2}, Lcom/dcloud/zxing2/oned/OneDReader;->recordPattern(Lcom/dcloud/zxing2/common/BitArray;I[I)V

    .line 16
    array-length v0, v2

    sub-int/2addr v0, v4

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v0, :cond_1

    .line 17
    aget v9, v2, v8

    .line 18
    aget v10, v2, v0

    aput v10, v2, v8

    .line 19
    aput v9, v2, v0

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    const/16 v0, 0x10

    goto :goto_2

    :cond_2
    const/16 v0, 0xf

    .line 24
    :goto_2
    invoke-static {v2}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->count([I)I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v0

    div-float/2addr v8, v9

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getOddCounts()[I

    move-result-object v9

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    move-result-object v10

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    move-result-object v11

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getEvenRoundingErrors()[F

    move-result-object v12

    const/4 v13, 0x0

    .line 31
    :goto_3
    array-length v14, v2

    if-ge v13, v14, :cond_6

    .line 32
    aget v14, v2, v13

    int-to-float v14, v14

    div-float/2addr v14, v8

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v15, v14

    float-to-int v15, v15

    const/16 v3, 0x8

    if-ge v15, v4, :cond_3

    const/4 v15, 0x1

    goto :goto_4

    :cond_3
    if-le v15, v3, :cond_4

    const/16 v15, 0x8

    .line 39
    :cond_4
    :goto_4
    div-int/lit8 v3, v13, 0x2

    and-int/lit8 v16, v13, 0x1

    if-nez v16, :cond_5

    .line 41
    aput v15, v9, v3

    int-to-float v15, v15

    sub-float/2addr v14, v15

    .line 42
    aput v14, v11, v3

    goto :goto_5

    .line 44
    :cond_5
    aput v15, v10, v3

    int-to-float v15, v15

    sub-float/2addr v14, v15

    .line 45
    aput v14, v12, v3

    :goto_5
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x0

    goto :goto_3

    :cond_6
    move-object/from16 v3, p0

    .line 49
    invoke-direct {v3, v1, v0}, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->adjustOddEvenCounts(ZI)V

    .line 53
    array-length v0, v9

    sub-int/2addr v0, v4

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_6
    if-ltz v0, :cond_7

    mul-int/lit8 v8, v8, 0x9

    .line 55
    aget v11, v9, v0

    add-int/2addr v8, v11

    .line 56
    aget v11, v9, v0

    add-int/2addr v2, v11

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 60
    :cond_7
    array-length v0, v10

    sub-int/2addr v0, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_7
    if-ltz v0, :cond_8

    mul-int/lit8 v11, v11, 0x9

    .line 62
    aget v13, v10, v0

    add-int/2addr v11, v13

    .line 63
    aget v13, v10, v0

    add-int/2addr v12, v13

    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_8
    mul-int/lit8 v11, v11, 0x3

    add-int/2addr v8, v11

    if-eqz v1, :cond_a

    and-int/lit8 v0, v2, 0x1

    if-nez v0, :cond_9

    const/16 v0, 0xc

    if-gt v2, v0, :cond_9

    if-lt v2, v7, :cond_9

    sub-int/2addr v0, v2

    .line 71
    div-int/2addr v0, v5

    .line 72
    sget-object v1, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->OUTSIDE_ODD_WIDEST:[I

    aget v1, v1, v0

    rsub-int/lit8 v2, v1, 0x9

    const/4 v5, 0x0

    .line 74
    invoke-static {v9, v1, v5}, Lcom/dcloud/zxing2/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v1

    .line 75
    invoke-static {v10, v2, v4}, Lcom/dcloud/zxing2/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v2

    .line 76
    sget-object v4, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->OUTSIDE_EVEN_TOTAL_SUBSET:[I

    aget v4, v4, v0

    .line 77
    sget-object v5, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->OUTSIDE_GSUM:[I

    aget v0, v5, v0

    .line 78
    new-instance v5, Lcom/dcloud/zxing2/oned/rss/DataCharacter;

    mul-int v1, v1, v4

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    invoke-direct {v5, v1, v8}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;-><init>(II)V

    return-object v5

    .line 79
    :cond_9
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object v0

    throw v0

    :cond_a
    and-int/lit8 v0, v12, 0x1

    if-nez v0, :cond_b

    const/16 v0, 0xa

    if-gt v12, v0, :cond_b

    if-lt v12, v7, :cond_b

    sub-int/2addr v0, v12

    .line 93
    div-int/2addr v0, v5

    .line 94
    sget-object v1, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->INSIDE_ODD_WIDEST:[I

    aget v1, v1, v0

    rsub-int/lit8 v2, v1, 0x9

    .line 96
    invoke-static {v9, v1, v4}, Lcom/dcloud/zxing2/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v1

    const/4 v4, 0x0

    .line 97
    invoke-static {v10, v2, v4}, Lcom/dcloud/zxing2/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v2

    .line 98
    sget-object v4, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->INSIDE_ODD_TOTAL_SUBSET:[I

    aget v4, v4, v0

    .line 99
    sget-object v5, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->INSIDE_GSUM:[I

    aget v0, v5, v0

    .line 100
    new-instance v5, Lcom/dcloud/zxing2/oned/rss/DataCharacter;

    mul-int v2, v2, v4

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    invoke-direct {v5, v2, v8}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;-><init>(II)V

    return-object v5

    .line 101
    :cond_b
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object v0

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method private decodePair(Lcom/dcloud/zxing2/common/BitArray;ZILjava/util/Map;)Lcom/dcloud/zxing2/oned/rss/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dcloud/zxing2/common/BitArray;",
            "ZI",
            "Ljava/util/Map<",
            "Lcom/dcloud/zxing2/DecodeHintType;",
            "*>;)",
            "Lcom/dcloud/zxing2/oned/rss/Pair;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0, p1, v1, p2}, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->findFinderPattern(Lcom/dcloud/zxing2/common/BitArray;IZ)[I

    move-result-object v2

    .line 2
    invoke-direct {p0, p1, p3, p2, v2}, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->parseFoundFinderPattern(Lcom/dcloud/zxing2/common/BitArray;IZ[I)Lcom/dcloud/zxing2/oned/rss/FinderPattern;

    move-result-object v3

    if-nez p4, :cond_0

    move-object p4, v0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v4, Lcom/dcloud/zxing2/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/dcloud/zxing2/DecodeHintType;

    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/dcloud/zxing2/ResultPointCallback;

    :goto_0
    const/4 v4, 0x1

    if-eqz p4, :cond_2

    .line 8
    aget v5, v2, v1

    aget v2, v2, v4

    add-int/2addr v5, v2

    int-to-float v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    if-eqz p2, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result p2

    sub-int/2addr p2, v4

    int-to-float p2, p2

    sub-float v2, p2, v2

    .line 13
    :cond_1
    new-instance p2, Lcom/dcloud/zxing2/ResultPoint;

    int-to-float p3, p3

    invoke-direct {p2, v2, p3}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    invoke-interface {p4, p2}, Lcom/dcloud/zxing2/ResultPointCallback;->foundPossibleResultPoint(Lcom/dcloud/zxing2/ResultPoint;)V

    .line 16
    :cond_2
    invoke-direct {p0, p1, v3, v4}, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->decodeDataCharacter(Lcom/dcloud/zxing2/common/BitArray;Lcom/dcloud/zxing2/oned/rss/FinderPattern;Z)Lcom/dcloud/zxing2/oned/rss/DataCharacter;

    move-result-object p2

    .line 17
    invoke-direct {p0, p1, v3, v1}, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->decodeDataCharacter(Lcom/dcloud/zxing2/common/BitArray;Lcom/dcloud/zxing2/oned/rss/FinderPattern;Z)Lcom/dcloud/zxing2/oned/rss/DataCharacter;

    move-result-object p1

    .line 18
    new-instance p3, Lcom/dcloud/zxing2/oned/rss/Pair;

    invoke-virtual {p2}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;->getValue()I

    move-result p4

    mul-int/lit16 p4, p4, 0x63d

    invoke-virtual {p1}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;->getValue()I

    move-result v1

    add-int/2addr p4, v1

    .line 19
    invoke-virtual {p2}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result p2

    invoke-virtual {p1}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p2, p1

    invoke-direct {p3, p4, p2, v3}, Lcom/dcloud/zxing2/oned/rss/Pair;-><init>(IILcom/dcloud/zxing2/oned/rss/FinderPattern;)V
    :try_end_0
    .catch Lcom/dcloud/zxing2/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    return-object v0
.end method

.method private findFinderPattern(Lcom/dcloud/zxing2/common/BitArray;IZ)[I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getDecodeFinderCounters()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    aput v1, v0, v1

    const/4 v2, 0x1

    .line 3
    aput v1, v0, v2

    const/4 v3, 0x2

    .line 4
    aput v1, v0, v3

    const/4 v4, 0x3

    .line 5
    aput v1, v0, v4

    .line 7
    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge p2, v5, :cond_1

    .line 10
    invoke-virtual {p1, p2}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v6

    xor-int/2addr v6, v2

    if-ne p3, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move p3, p2

    const/4 v7, 0x0

    :goto_2
    if-ge p2, v5, :cond_5

    .line 21
    invoke-virtual {p1, p2}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v8

    xor-int/2addr v8, v6

    if-eqz v8, :cond_2

    .line 22
    aget v8, v0, v7

    add-int/2addr v8, v2

    aput v8, v0, v7

    goto :goto_4

    :cond_2
    if-ne v7, v4, :cond_4

    .line 25
    invoke-static {v0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->isFinderPattern([I)Z

    move-result v8

    if-eqz v8, :cond_3

    new-array p1, v3, [I

    aput p3, p1, v1

    aput p2, p1, v2

    return-object p1

    .line 28
    :cond_3
    aget v8, v0, v1

    aget v9, v0, v2

    add-int/2addr v8, v9

    add-int/2addr p3, v8

    .line 29
    aget v8, v0, v3

    aput v8, v0, v1

    .line 30
    aget v8, v0, v4

    aput v8, v0, v2

    .line 31
    aput v1, v0, v3

    .line 32
    aput v1, v0, v4

    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 37
    :goto_3
    aput v2, v0, v7

    xor-int/lit8 v6, v6, 0x1

    :goto_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 41
    :cond_5
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method private parseFoundFinderPattern(Lcom/dcloud/zxing2/common/BitArray;IZ[I)Lcom/dcloud/zxing2/oned/rss/FinderPattern;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    aget v1, p4, v0

    invoke-virtual {p1, v1}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v1

    .line 2
    aget v2, p4, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_0

    .line 4
    invoke-virtual {p1, v2}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v4

    xor-int/2addr v4, v1

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    add-int/2addr v2, v3

    .line 8
    aget v1, p4, v0

    sub-int/2addr v1, v2

    .line 10
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getDecodeFinderCounters()[I

    move-result-object v4

    .line 11
    array-length v5, v4

    sub-int/2addr v5, v3

    invoke-static {v4, v0, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    aput v1, v4, v0

    .line 13
    sget-object v1, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->FINDER_PATTERNS:[[I

    invoke-static {v4, v1}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->parseFinderValue([I[[I)I

    move-result v6

    .line 15
    aget v1, p4, v3

    if-eqz p3, :cond_1

    .line 18
    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result p3

    sub-int/2addr p3, v3

    sub-int/2addr p3, v2

    .line 19
    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result p1

    sub-int/2addr p1, v3

    sub-int/2addr p1, v1

    move v9, p1

    move v8, p3

    goto :goto_1

    :cond_1
    move v9, v1

    move v8, v2

    .line 21
    :goto_1
    new-instance p1, Lcom/dcloud/zxing2/oned/rss/FinderPattern;

    const/4 p3, 0x2

    new-array v7, p3, [I

    aput v2, v7, v0

    aget p3, p4, v3

    aput p3, v7, v3

    move-object v5, p1

    move v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;-><init>(I[IIII)V

    return-object p1
.end method


# virtual methods
.method public decodeRow(ILcom/dcloud/zxing2/common/BitArray;Ljava/util/Map;)Lcom/dcloud/zxing2/Result;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/dcloud/zxing2/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/dcloud/zxing2/DecodeHintType;",
            "*>;)",
            "Lcom/dcloud/zxing2/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p2, v0, p1, p3}, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->decodePair(Lcom/dcloud/zxing2/common/BitArray;ZILjava/util/Map;)Lcom/dcloud/zxing2/oned/rss/Pair;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->addOrTally(Ljava/util/Collection;Lcom/dcloud/zxing2/oned/rss/Pair;)V

    .line 3
    invoke-virtual {p2}, Lcom/dcloud/zxing2/common/BitArray;->reverse()V

    const/4 v1, 0x1

    .line 4
    invoke-direct {p0, p2, v1, p1, p3}, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->decodePair(Lcom/dcloud/zxing2/common/BitArray;ZILjava/util/Map;)Lcom/dcloud/zxing2/oned/rss/Pair;

    move-result-object p1

    .line 5
    iget-object p3, p0, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-static {p3, p1}, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->addOrTally(Ljava/util/Collection;Lcom/dcloud/zxing2/oned/rss/Pair;)V

    .line 6
    invoke-virtual {p2}, Lcom/dcloud/zxing2/common/BitArray;->reverse()V

    .line 7
    iget-object p1, p0, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    .line 9
    iget-object p3, p0, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/dcloud/zxing2/oned/rss/Pair;

    .line 10
    invoke-virtual {p3}, Lcom/dcloud/zxing2/oned/rss/Pair;->getCount()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 11
    iget-object v2, p0, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    .line 13
    iget-object v4, p0, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dcloud/zxing2/oned/rss/Pair;

    .line 14
    invoke-virtual {v4}, Lcom/dcloud/zxing2/oned/rss/Pair;->getCount()I

    move-result v5

    if-le v5, v1, :cond_0

    .line 15
    invoke-static {p3, v4}, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->checkChecksum(Lcom/dcloud/zxing2/oned/rss/Pair;Lcom/dcloud/zxing2/oned/rss/Pair;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 16
    invoke-static {p3, v4}, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->constructResult(Lcom/dcloud/zxing2/oned/rss/Pair;Lcom/dcloud/zxing2/oned/rss/Pair;)Lcom/dcloud/zxing2/Result;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 22
    :cond_2
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
