.class public final Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;
.super Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;


# static fields
.field private static final EVEN_TOTAL_SUBSET:[I

.field private static final FINDER_PATTERNS:[[I

.field private static final FINDER_PATTERN_SEQUENCES:[[I

.field private static final FINDER_PAT_A:I = 0x0

.field private static final FINDER_PAT_B:I = 0x1

.field private static final FINDER_PAT_C:I = 0x2

.field private static final FINDER_PAT_D:I = 0x3

.field private static final FINDER_PAT_E:I = 0x4

.field private static final FINDER_PAT_F:I = 0x5

.field private static final GSUM:[I

.field private static final MAX_PAIRS:I = 0xb

.field private static final SYMBOL_WIDEST:[I

.field private static final WEIGHTS:[[I


# instance fields
.field private final pairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation
.end field

.field private final rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;",
            ">;"
        }
    .end annotation
.end field

.field private final startEnd:[I

.field private startFromEven:Z


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->SYMBOL_WIDEST:[I

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_1

    sput-object v1, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->EVEN_TOTAL_SUBSET:[I

    new-array v1, v0, [I

    .line 3
    fill-array-data v1, :array_2

    sput-object v1, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->GSUM:[I

    const/4 v1, 0x6

    new-array v2, v1, [[I

    const/4 v3, 0x4

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_3

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v6, 0x1

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v7, 0x2

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v8, 0x3

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    aput-object v4, v2, v0

    sput-object v2, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERNS:[[I

    const/16 v2, 0x17

    new-array v2, v2, [[I

    const/16 v4, 0x8

    new-array v9, v4, [I

    .line 14
    fill-array-data v9, :array_9

    aput-object v9, v2, v5

    new-array v9, v4, [I

    fill-array-data v9, :array_a

    aput-object v9, v2, v6

    new-array v9, v4, [I

    fill-array-data v9, :array_b

    aput-object v9, v2, v7

    new-array v9, v4, [I

    fill-array-data v9, :array_c

    aput-object v9, v2, v8

    new-array v9, v4, [I

    fill-array-data v9, :array_d

    aput-object v9, v2, v3

    new-array v9, v4, [I

    fill-array-data v9, :array_e

    aput-object v9, v2, v0

    new-array v9, v4, [I

    fill-array-data v9, :array_f

    aput-object v9, v2, v1

    new-array v9, v4, [I

    fill-array-data v9, :array_10

    const/4 v10, 0x7

    aput-object v9, v2, v10

    new-array v9, v4, [I

    fill-array-data v9, :array_11

    aput-object v9, v2, v4

    new-array v9, v4, [I

    fill-array-data v9, :array_12

    const/16 v11, 0x9

    aput-object v9, v2, v11

    new-array v9, v4, [I

    fill-array-data v9, :array_13

    const/16 v12, 0xa

    aput-object v9, v2, v12

    new-array v9, v4, [I

    fill-array-data v9, :array_14

    const/16 v13, 0xb

    aput-object v9, v2, v13

    new-array v9, v4, [I

    fill-array-data v9, :array_15

    const/16 v14, 0xc

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_16

    const/16 v14, 0xd

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_17

    const/16 v14, 0xe

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_18

    const/16 v14, 0xf

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_19

    const/16 v14, 0x10

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_1a

    const/16 v14, 0x11

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_1b

    const/16 v14, 0x12

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_1c

    const/16 v14, 0x13

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_1d

    const/16 v14, 0x14

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_1e

    const/16 v14, 0x15

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_1f

    const/16 v14, 0x16

    aput-object v9, v2, v14

    sput-object v2, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    new-array v2, v12, [[I

    new-array v9, v7, [I

    .line 47
    fill-array-data v9, :array_20

    aput-object v9, v2, v5

    new-array v5, v8, [I

    fill-array-data v5, :array_21

    aput-object v5, v2, v6

    new-array v5, v3, [I

    fill-array-data v5, :array_22

    aput-object v5, v2, v7

    new-array v5, v0, [I

    fill-array-data v5, :array_23

    aput-object v5, v2, v8

    new-array v5, v1, [I

    fill-array-data v5, :array_24

    aput-object v5, v2, v3

    new-array v3, v10, [I

    fill-array-data v3, :array_25

    aput-object v3, v2, v0

    new-array v0, v4, [I

    fill-array-data v0, :array_26

    aput-object v0, v2, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_27

    aput-object v0, v2, v10

    new-array v0, v12, [I

    fill-array-data v0, :array_28

    aput-object v0, v2, v4

    new-array v0, v13, [I

    fill-array-data v0, :array_29

    aput-object v0, v2, v11

    sput-object v2, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7
        0x5
        0x4
        0x3
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x14
        0x34
        0x68
        0xcc
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x15c
        0x56c
        0xb84
        0xf94
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x8
        0x4
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x3
        0x6
        0x4
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x3
        0x4
        0x6
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x3
        0x2
        0x8
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x2
        0x6
        0x5
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x2
        0x2
        0x9
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x3
        0x9
        0x1b
        0x51
        0x20
        0x60
        0x4d
    .end array-data

    :array_a
    .array-data 4
        0x14
        0x3c
        0xb4
        0x76
        0x8f
        0x7
        0x15
        0x3f
    .end array-data

    :array_b
    .array-data 4
        0xbd
        0x91
        0xd
        0x27
        0x75
        0x8c
        0xd1
        0xcd
    .end array-data

    :array_c
    .array-data 4
        0xc1
        0x9d
        0x31
        0x93
        0x13
        0x39
        0xab
        0x5b
    .end array-data

    :array_d
    .array-data 4
        0x3e
        0xba
        0x88
        0xc5
        0xa9
        0x55
        0x2c
        0x84
    .end array-data

    :array_e
    .array-data 4
        0xb9
        0x85
        0xbc
        0x8e
        0x4
        0xc
        0x24
        0x6c
    .end array-data

    :array_f
    .array-data 4
        0x71
        0x80
        0xad
        0x61
        0x50
        0x1d
        0x57
        0x32
    .end array-data

    :array_10
    .array-data 4
        0x96
        0x1c
        0x54
        0x29
        0x7b
        0x9e
        0x34
        0x9c
    .end array-data

    :array_11
    .array-data 4
        0x2e
        0x8a
        0xcb
        0xbb
        0x8b
        0xce
        0xc4
        0xa6
    .end array-data

    :array_12
    .array-data 4
        0x4c
        0x11
        0x33
        0x99
        0x25
        0x6f
        0x7a
        0x9b
    .end array-data

    :array_13
    .array-data 4
        0x2b
        0x81
        0xb0
        0x6a
        0x6b
        0x6e
        0x77
        0x92
    .end array-data

    :array_14
    .array-data 4
        0x10
        0x30
        0x90
        0xa
        0x1e
        0x5a
        0x3b
        0xb1
    .end array-data

    :array_15
    .array-data 4
        0x6d
        0x74
        0x89
        0xc8
        0xb2
        0x70
        0x7d
        0xa4
    .end array-data

    :array_16
    .array-data 4
        0x46
        0xd2
        0xd0
        0xca
        0xb8
        0x82
        0xb3
        0x73
    .end array-data

    :array_17
    .array-data 4
        0x86
        0xbf
        0x97
        0x1f
        0x5d
        0x44
        0xcc
        0xbe
    .end array-data

    :array_18
    .array-data 4
        0x94
        0x16
        0x42
        0xc6
        0xac
        0x5e
        0x47
        0x2
    .end array-data

    :array_19
    .array-data 4
        0x6
        0x12
        0x36
        0xa2
        0x40
        0xc0
        0x9a
        0x28
    .end array-data

    :array_1a
    .array-data 4
        0x78
        0x95
        0x19
        0x4b
        0xe
        0x2a
        0x7e
        0xa7
    .end array-data

    :array_1b
    .array-data 4
        0x4f
        0x1a
        0x4e
        0x17
        0x45
        0xcf
        0xc7
        0xaf
    .end array-data

    :array_1c
    .array-data 4
        0x67
        0x62
        0x53
        0x26
        0x72
        0x83
        0xb6
        0x7c
    .end array-data

    :array_1d
    .array-data 4
        0xa1
        0x3d
        0xb7
        0x7f
        0xaa
        0x58
        0x35
        0x9f
    .end array-data

    :array_1e
    .array-data 4
        0x37
        0xa5
        0x49
        0x8
        0x18
        0x48
        0x5
        0xf
    .end array-data

    :array_1f
    .array-data 4
        0x2d
        0x87
        0xc2
        0xa0
        0x3a
        0xae
        0x64
        0x59
    .end array-data

    :array_20
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_21
    .array-data 4
        0x0
        0x1
        0x1
    .end array-data

    :array_22
    .array-data 4
        0x0
        0x2
        0x1
        0x3
    .end array-data

    :array_23
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x2
    .end array-data

    :array_24
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x3
        0x5
    .end array-data

    :array_25
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x4
        0x5
        0x5
    .end array-data

    :array_26
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
    .end array-data

    :array_27
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x4
    .end array-data

    :array_28
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x5
        0x5
    .end array-data

    :array_29
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 66
    iput-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    return-void
.end method

.method private adjustOddEvenCounts(I)V
    .locals 10
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

    sub-int/2addr v2, p1

    and-int/lit8 p1, v0, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/lit8 v5, v1, 0x1

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x4

    const/16 v7, 0xd

    if-le v0, v7, :cond_2

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_3

    :cond_2
    if-ge v0, v6, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    const/4 v9, 0x0

    :goto_3
    if-le v1, v7, :cond_4

    const/4 v6, 0x1

    goto :goto_4

    :cond_4
    if-ge v1, v6, :cond_5

    const/4 v3, 0x1

    :cond_5
    const/4 v6, 0x0

    :goto_4
    if-ne v2, v4, :cond_9

    if-eqz p1, :cond_7

    if-nez v5, :cond_6

    move v4, v8

    :goto_5
    const/4 v9, 0x1

    goto :goto_7

    .line 26
    :cond_6
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    :cond_7
    if-eqz v5, :cond_8

    move v4, v8

    :goto_6
    const/4 v6, 0x1

    goto :goto_7

    .line 31
    :cond_8
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    :cond_9
    const/4 v7, -0x1

    if-ne v2, v7, :cond_d

    if-eqz p1, :cond_b

    if-nez v5, :cond_a

    goto :goto_7

    .line 38
    :cond_a
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    :cond_b
    if-eqz v5, :cond_c

    move v4, v8

    const/4 v3, 0x1

    goto :goto_7

    .line 43
    :cond_c
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    :cond_d
    if-nez v2, :cond_18

    if-eqz p1, :cond_10

    if-eqz v5, :cond_f

    if-ge v0, v1, :cond_e

    goto :goto_6

    :cond_e
    move v4, v8

    const/4 v3, 0x1

    goto :goto_5

    .line 50
    :cond_f
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    :cond_10
    if-nez v5, :cond_17

    move v4, v8

    :goto_7
    if-eqz v4, :cond_12

    if-nez v9, :cond_11

    .line 74
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getOddCounts()[I

    move-result-object p1

    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    move-result-object v0

    invoke-static {p1, v0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->increment([I[F)V

    goto :goto_8

    .line 75
    :cond_11
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    :cond_12
    :goto_8
    if-eqz v9, :cond_13

    .line 80
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getOddCounts()[I

    move-result-object p1

    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    move-result-object v0

    invoke-static {p1, v0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->decrement([I[F)V

    :cond_13
    if-eqz v3, :cond_15

    if-nez v6, :cond_14

    .line 86
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    move-result-object p1

    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    move-result-object v0

    invoke-static {p1, v0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->increment([I[F)V

    goto :goto_9

    .line 87
    :cond_14
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    :cond_15
    :goto_9
    if-eqz v6, :cond_16

    .line 92
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    move-result-object p1

    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getEvenRoundingErrors()[F

    move-result-object v0

    invoke-static {p1, v0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->decrement([I[F)V

    :cond_16
    return-void

    .line 93
    :cond_17
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    .line 98
    :cond_18
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    goto :goto_b

    :goto_a
    throw p1

    :goto_b
    goto :goto_a
.end method

.method private checkChecksum()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;

    .line 2
    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/dcloud/zxing2/oned/rss/DataCharacter;

    move-result-object v2

    .line 3
    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/dcloud/zxing2/oned/rss/DataCharacter;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 12
    :goto_0
    iget-object v6, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 13
    iget-object v6, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;

    .line 14
    invoke-virtual {v6}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/dcloud/zxing2/oned/rss/DataCharacter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v7

    add-int/2addr v0, v7

    add-int/lit8 v3, v3, 0x1

    .line 16
    invoke-virtual {v6}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/dcloud/zxing2/oned/rss/DataCharacter;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 18
    invoke-virtual {v6}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v6

    add-int/2addr v0, v6

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 23
    :cond_2
    rem-int/lit16 v0, v0, 0xd3

    add-int/lit8 v3, v3, -0x4

    mul-int/lit16 v3, v3, 0xd3

    add-int/2addr v3, v0

    .line 27
    invoke-virtual {v2}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;->getValue()I

    move-result v0

    if-ne v3, v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private checkRows(Ljava/util/List;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 20
    :goto_0
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 21
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;

    .line 22
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 23
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    .line 25
    iget-object v3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;

    invoke-virtual {v4}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-static {v1}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->isValidSequence(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 33
    :cond_1
    invoke-direct {p0}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->checkChecksum()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 34
    iget-object p1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    return-object p1

    .line 37
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, p2, 0x1

    .line 42
    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->checkRows(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lcom/dcloud/zxing2/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 48
    :cond_3
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private checkRows(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x19

    if-le v0, v2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-object v1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 13
    :cond_1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->checkRows(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Lcom/dcloud/zxing2/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz p1, :cond_2

    .line 19
    iget-object p1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_2
    return-object v1
.end method

.method static constructResult(Ljava/util/List;)Lcom/dcloud/zxing2/Result;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;",
            ">;)",
            "Lcom/dcloud/zxing2/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;,
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/dcloud/zxing2/oned/rss/expanded/BitArrayBuilder;->buildBitArray(Ljava/util/List;)Lcom/dcloud/zxing2/common/BitArray;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AbstractExpandedDecoder;->createDecoder(Lcom/dcloud/zxing2/common/BitArray;)Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AbstractExpandedDecoder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/AbstractExpandedDecoder;->parseInformation()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v2}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/dcloud/zxing2/oned/rss/FinderPattern;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->getResultPoints()[Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v2

    .line 7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;

    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/dcloud/zxing2/oned/rss/FinderPattern;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->getResultPoints()[Lcom/dcloud/zxing2/ResultPoint;

    move-result-object p0

    .line 9
    new-instance v3, Lcom/dcloud/zxing2/Result;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/dcloud/zxing2/ResultPoint;

    aget-object v6, v2, v1

    aput-object v6, v5, v1

    aget-object v2, v2, v4

    aput-object v2, v5, v4

    aget-object v1, p0, v1

    const/4 v2, 0x2

    aput-object v1, v5, v2

    aget-object p0, p0, v4

    const/4 v1, 0x3

    aput-object p0, v5, v1

    sget-object p0, Lcom/dcloud/zxing2/BarcodeFormat;->RSS_EXPANDED:Lcom/dcloud/zxing2/BarcodeFormat;

    const/4 v1, 0x0

    invoke-direct {v3, v0, v1, v5, p0}, Lcom/dcloud/zxing2/Result;-><init>(Ljava/lang/String;[B[Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/BarcodeFormat;)V

    return-object v3
.end method

.method private findNextPair(Lcom/dcloud/zxing2/common/BitArray;Ljava/util/List;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dcloud/zxing2/common/BitArray;",
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;",
            ">;I)V"
        }
    .end annotation

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

    if-ltz p3, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    goto :goto_0

    .line 15
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;

    .line 16
    invoke-virtual {p3}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/dcloud/zxing2/oned/rss/FinderPattern;

    move-result-object p3

    invoke-virtual {p3}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object p3

    aget p3, p3, v2

    .line 18
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    rem-int/2addr p2, v3

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 19
    :goto_1
    iget-boolean v6, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    if-eqz v6, :cond_3

    xor-int/lit8 p2, p2, 0x1

    :cond_3
    const/4 v6, 0x0

    :goto_2
    if-ge p3, v5, :cond_5

    .line 25
    invoke-virtual {p1, p3}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v6

    xor-int/2addr v6, v2

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    move v7, v6

    const/4 v8, 0x0

    move v6, p3

    :goto_4
    if-ge p3, v5, :cond_b

    .line 35
    invoke-virtual {p1, p3}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v9

    xor-int/2addr v9, v7

    if-eqz v9, :cond_6

    .line 36
    aget v9, v0, v8

    add-int/2addr v9, v2

    aput v9, v0, v8

    goto :goto_6

    :cond_6
    if-ne v8, v4, :cond_a

    if-eqz p2, :cond_7

    .line 40
    invoke-static {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->reverseCounters([I)V

    .line 43
    :cond_7
    invoke-static {v0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->isFinderPattern([I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 44
    iget-object p1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aput v6, p1, v1

    .line 45
    aput p3, p1, v2

    return-void

    :cond_8
    if-eqz p2, :cond_9

    .line 50
    invoke-static {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->reverseCounters([I)V

    .line 53
    :cond_9
    aget v9, v0, v1

    aget v10, v0, v2

    add-int/2addr v9, v10

    add-int/2addr v6, v9

    .line 54
    aget v9, v0, v3

    aput v9, v0, v1

    .line 55
    aget v9, v0, v4

    aput v9, v0, v2

    .line 56
    aput v1, v0, v3

    .line 57
    aput v1, v0, v4

    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    :cond_a
    add-int/lit8 v8, v8, 0x1

    .line 62
    :goto_5
    aput v2, v0, v8

    xor-int/lit8 v7, v7, 0x1

    :goto_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    .line 66
    :cond_b
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method private static getNextSecondBar(Lcom/dcloud/zxing2/common/BitArray;I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/common/BitArray;->getNextUnset(I)I

    move-result p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/common/BitArray;->getNextSet(I)I

    move-result p0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/common/BitArray;->getNextSet(I)I

    move-result p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/common/BitArray;->getNextUnset(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private static isNotA1left(Lcom/dcloud/zxing2/oned/rss/FinderPattern;ZZ)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->getValue()I

    move-result p0

    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isPartialRow(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;",
            ">;",
            "Ljava/lang/Iterable<",
            "Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;

    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;

    .line 5
    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;

    .line 6
    invoke-virtual {v3, v6}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_0

    return v4

    :cond_5
    return v1
.end method

.method private static isValidSequence(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    array-length v6, v4

    if-le v5, v6, :cond_0

    goto :goto_3

    :cond_0
    const/4 v5, 0x0

    .line 7
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v5, v6, :cond_2

    .line 8
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v6}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/dcloud/zxing2/oned/rss/FinderPattern;

    move-result-object v6

    invoke-virtual {v6}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->getValue()I

    move-result v6

    aget v8, v4, v5

    if-eq v6, v8, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_3

    return v7

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method private parseFoundFinderPattern(Lcom/dcloud/zxing2/common/BitArray;IZ)Lcom/dcloud/zxing2/oned/rss/FinderPattern;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    .line 1
    iget-object p3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget p3, p3, v0

    sub-int/2addr p3, v1

    :goto_0
    if-ltz p3, :cond_0

    .line 3
    invoke-virtual {p1, p3}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    add-int/2addr p3, v1

    .line 8
    iget-object p1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v2, p1, v0

    sub-int/2addr v2, p3

    .line 10
    aget p1, p1, v1

    move v7, p1

    move v6, p3

    goto :goto_1

    .line 15
    :cond_1
    iget-object p3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v2, p3, v0

    .line 17
    aget p3, p3, v1

    add-int/2addr p3, v1

    invoke-virtual {p1, p3}, Lcom/dcloud/zxing2/common/BitArray;->getNextUnset(I)I

    move-result p1

    .line 18
    iget-object p3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget p3, p3, v1

    sub-int p3, p1, p3

    move v7, p1

    move v6, v2

    move v2, p3

    .line 22
    :goto_1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getDecodeFinderCounters()[I

    move-result-object p1

    .line 23
    array-length p3, p1

    sub-int/2addr p3, v1

    invoke-static {p1, v0, p1, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    aput v2, p1, v0

    .line 28
    :try_start_0
    sget-object p3, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERNS:[[I

    invoke-static {p1, p3}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->parseFinderValue([I[[I)I

    move-result v4
    :try_end_0
    .catch Lcom/dcloud/zxing2/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    new-instance p1, Lcom/dcloud/zxing2/oned/rss/FinderPattern;

    const/4 p3, 0x2

    new-array v5, p3, [I

    aput v6, v5, v0

    aput v7, v5, v1

    move-object v3, p1

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;-><init>(I[IIII)V

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static removePartialRows(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;",
            ">;",
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;

    .line 3
    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;

    .line 9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;

    .line 10
    invoke-virtual {v1, v5}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    goto :goto_2

    :cond_5
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_0

    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_6
    return-void
.end method

.method private static reverseCounters([I)V
    .locals 5

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    .line 2
    :goto_0
    div-int/lit8 v2, v0, 0x2

    if-ge v1, v2, :cond_0

    .line 3
    aget v2, p0, v1

    sub-int v3, v0, v1

    add-int/lit8 v3, v3, -0x1

    .line 4
    aget v4, p0, v3

    aput v4, p0, v1

    .line 5
    aput v2, p0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private storeRow(IZ)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    iget-object v3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2
    iget-object v3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;

    .line 3
    invoke-virtual {v3}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;->getRowNumber()I

    move-result v4

    if-le v4, p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v3, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;->isEquivalent(Ljava/util/List;)Z

    move-result v0

    goto :goto_1

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v3, v2}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;->isEquivalent(Ljava/util/List;)Z

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_4

    if-eqz v2, :cond_2

    goto :goto_2

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    iget-object v2, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->isPartialRow(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 23
    :cond_3
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    new-instance v2, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;

    iget-object v3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-direct {v2, v3, p1, p2}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;-><init>(Ljava/util/List;IZ)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 25
    iget-object p1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    iget-object p2, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->removePartialRows(Ljava/util/List;Ljava/util/List;)V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method decodeDataCharacter(Lcom/dcloud/zxing2/common/BitArray;Lcom/dcloud/zxing2/oned/rss/FinderPattern;ZZ)Lcom/dcloud/zxing2/oned/rss/DataCharacter;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getDataCharacterCounters()[I

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    aput v2, v1, v2

    const/4 v3, 0x1

    .line 3
    aput v2, v1, v3

    const/4 v4, 0x2

    .line 4
    aput v2, v1, v4

    const/4 v5, 0x3

    .line 5
    aput v2, v1, v5

    const/4 v5, 0x4

    .line 6
    aput v2, v1, v5

    const/4 v6, 0x5

    .line 7
    aput v2, v1, v6

    const/4 v6, 0x6

    .line 8
    aput v2, v1, v6

    const/4 v6, 0x7

    .line 9
    aput v2, v1, v6

    if-eqz p4, :cond_0

    .line 12
    invoke-virtual/range {p2 .. p2}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v6

    aget v6, v6, v2

    invoke-static {v0, v6, v1}, Lcom/dcloud/zxing2/oned/OneDReader;->recordPatternInReverse(Lcom/dcloud/zxing2/common/BitArray;I[I)V

    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v6

    aget v6, v6, v3

    invoke-static {v0, v6, v1}, Lcom/dcloud/zxing2/oned/OneDReader;->recordPattern(Lcom/dcloud/zxing2/common/BitArray;I[I)V

    .line 16
    array-length v0, v1

    sub-int/2addr v0, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_1

    .line 17
    aget v7, v1, v6

    .line 18
    aget v8, v1, v0

    aput v8, v1, v6

    .line 19
    aput v7, v1, v0

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/16 v0, 0x11

    .line 24
    invoke-static {v1}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->count([I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float/2addr v6, v7

    .line 27
    invoke-virtual/range {p2 .. p2}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v7

    aget v7, v7, v3

    invoke-virtual/range {p2 .. p2}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v8

    aget v8, v8, v2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x41700000    # 15.0f

    div-float/2addr v7, v8

    sub-float v8, v6, v7

    .line 28
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    div-float/2addr v8, v7

    const v7, 0x3e99999a    # 0.3f

    cmpl-float v8, v8, v7

    if-gtz v8, :cond_e

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getOddCounts()[I

    move-result-object v8

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getEvenCounts()[I

    move-result-object v9

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getOddRoundingErrors()[F

    move-result-object v10

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/dcloud/zxing2/oned/rss/AbstractRSSReader;->getEvenRoundingErrors()[F

    move-result-object v11

    const/4 v12, 0x0

    .line 37
    :goto_2
    array-length v13, v1

    if-ge v12, v13, :cond_7

    .line 38
    aget v13, v1, v12

    int-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    mul-float v13, v13, v14

    div-float/2addr v13, v6

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v14, v13

    float-to-int v14, v14

    const/16 v15, 0x8

    if-ge v14, v3, :cond_3

    cmpg-float v14, v13, v7

    if-ltz v14, :cond_2

    const/4 v14, 0x1

    goto :goto_3

    .line 42
    :cond_2
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object v0

    throw v0

    :cond_3
    if-le v14, v15, :cond_5

    const v14, 0x410b3333    # 8.7f

    cmpl-float v14, v13, v14

    if-gtz v14, :cond_4

    const/16 v14, 0x8

    goto :goto_3

    .line 47
    :cond_4
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object v0

    throw v0

    .line 51
    :cond_5
    :goto_3
    div-int/lit8 v15, v12, 0x2

    and-int/lit8 v16, v12, 0x1

    if-nez v16, :cond_6

    .line 53
    aput v14, v8, v15

    int-to-float v14, v14

    sub-float/2addr v13, v14

    .line 54
    aput v13, v10, v15

    goto :goto_4

    .line 56
    :cond_6
    aput v14, v9, v15

    int-to-float v14, v14

    sub-float/2addr v13, v14

    .line 57
    aput v13, v11, v15

    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_7
    move-object/from16 v12, p0

    .line 61
    invoke-direct {v12, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->adjustOddEvenCounts(I)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Lcom/dcloud/zxing2/oned/rss/FinderPattern;->getValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    if-eqz p3, :cond_8

    const/4 v1, 0x0

    goto :goto_5

    :cond_8
    const/4 v1, 0x2

    :goto_5
    add-int/2addr v0, v1

    xor-int/lit8 v1, p4, 0x1

    add-int/2addr v0, v1

    sub-int/2addr v0, v3

    .line 67
    array-length v1, v8

    sub-int/2addr v1, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_6
    if-ltz v1, :cond_a

    .line 68
    invoke-static/range {p2 .. p4}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->isNotA1left(Lcom/dcloud/zxing2/oned/rss/FinderPattern;ZZ)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 69
    sget-object v10, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    aget-object v10, v10, v0

    mul-int/lit8 v11, v1, 0x2

    aget v10, v10, v11

    .line 70
    aget v11, v8, v1

    mul-int v11, v11, v10

    add-int/2addr v6, v11

    .line 72
    :cond_9
    aget v10, v8, v1

    add-int/2addr v7, v10

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 76
    :cond_a
    array-length v1, v9

    sub-int/2addr v1, v3

    const/4 v10, 0x0

    :goto_7
    if-ltz v1, :cond_c

    .line 77
    invoke-static/range {p2 .. p4}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->isNotA1left(Lcom/dcloud/zxing2/oned/rss/FinderPattern;ZZ)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 78
    sget-object v11, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    aget-object v11, v11, v0

    mul-int/lit8 v13, v1, 0x2

    add-int/2addr v13, v3

    aget v11, v11, v13

    .line 79
    aget v13, v9, v1

    mul-int v13, v13, v11

    add-int/2addr v10, v13

    :cond_b
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_c
    add-int/2addr v6, v10

    and-int/lit8 v0, v7, 0x1

    if-nez v0, :cond_d

    const/16 v0, 0xd

    if-gt v7, v0, :cond_d

    if-lt v7, v5, :cond_d

    sub-int/2addr v0, v7

    .line 89
    div-int/2addr v0, v4

    .line 90
    sget-object v1, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->SYMBOL_WIDEST:[I

    aget v1, v1, v0

    rsub-int/lit8 v4, v1, 0x9

    .line 92
    invoke-static {v8, v1, v3}, Lcom/dcloud/zxing2/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v1

    .line 93
    invoke-static {v9, v4, v2}, Lcom/dcloud/zxing2/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v2

    .line 94
    sget-object v3, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->EVEN_TOTAL_SUBSET:[I

    aget v3, v3, v0

    .line 95
    sget-object v4, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->GSUM:[I

    aget v0, v4, v0

    mul-int v1, v1, v3

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    .line 98
    new-instance v0, Lcom/dcloud/zxing2/oned/rss/DataCharacter;

    invoke-direct {v0, v1, v6}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;-><init>(II)V

    return-object v0

    .line 99
    :cond_d
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object v0

    throw v0

    :cond_e
    move-object/from16 v12, p0

    .line 100
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object v0

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method public decodeRow(ILcom/dcloud/zxing2/common/BitArray;Ljava/util/Map;)Lcom/dcloud/zxing2/Result;
    .locals 0
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
            Lcom/dcloud/zxing2/NotFoundException;,
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    const/4 p3, 0x0

    .line 2
    iput-boolean p3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->decodeRow2pairs(ILcom/dcloud/zxing2/common/BitArray;)Ljava/util/List;

    move-result-object p3

    .line 5
    invoke-static {p3}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->constructResult(Ljava/util/List;)Lcom/dcloud/zxing2/Result;

    move-result-object p1
    :try_end_0
    .catch Lcom/dcloud/zxing2/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 10
    :catch_0
    iget-object p3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    const/4 p3, 0x1

    .line 11
    iput-boolean p3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->decodeRow2pairs(ILcom/dcloud/zxing2/common/BitArray;)Ljava/util/List;

    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->constructResult(Ljava/util/List;)Lcom/dcloud/zxing2/Result;

    move-result-object p1

    return-object p1
.end method

.method decodeRow2pairs(ILcom/dcloud/zxing2/common/BitArray;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/dcloud/zxing2/common/BitArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {p0, p2, v0, p1}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->retrieveNextPair(Lcom/dcloud/zxing2/common/BitArray;Ljava/util/List;I)Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/dcloud/zxing2/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 6
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    invoke-direct {p0}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->checkChecksum()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 13
    iget-object p1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    return-object p1

    .line 16
    :cond_0
    iget-object p2, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    const/4 v1, 0x0

    .line 18
    invoke-direct {p0, p1, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->storeRow(IZ)V

    if-eqz p2, :cond_2

    .line 22
    invoke-direct {p0, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->checkRows(Z)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    .line 26
    :cond_1
    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->checkRows(Z)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    .line 32
    :cond_2
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    .line 33
    :cond_3
    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method getRows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedRow;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method retrieveNextPair(Lcom/dcloud/zxing2/common/BitArray;Ljava/util/List;I)Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dcloud/zxing2/common/BitArray;",
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;",
            ">;I)",
            "Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-boolean v3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    if-eqz v3, :cond_1

    xor-int/lit8 v0, v0, 0x1

    :cond_1
    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 11
    :cond_2
    invoke-direct {p0, p1, p2, v3}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->findNextPair(Lcom/dcloud/zxing2/common/BitArray;Ljava/util/List;I)V

    .line 12
    invoke-direct {p0, p1, p3, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->parseFoundFinderPattern(Lcom/dcloud/zxing2/common/BitArray;IZ)Lcom/dcloud/zxing2/oned/rss/FinderPattern;

    move-result-object v5

    if-nez v5, :cond_3

    .line 14
    iget-object v3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v3, v3, v1

    invoke-static {p1, v3}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->getNextSecondBar(Lcom/dcloud/zxing2/common/BitArray;I)I

    move-result v3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_2

    .line 23
    invoke-virtual {p0, p1, v5, v0, v2}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->decodeDataCharacter(Lcom/dcloud/zxing2/common/BitArray;Lcom/dcloud/zxing2/oned/rss/FinderPattern;ZZ)Lcom/dcloud/zxing2/oned/rss/DataCharacter;

    move-result-object p3

    .line 25
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;

    invoke-virtual {p2}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;->mustBeLast()Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_2

    .line 26
    :cond_4
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    .line 31
    :cond_5
    :goto_2
    :try_start_0
    invoke-virtual {p0, p1, v5, v0, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/RSSExpandedReader;->decodeDataCharacter(Lcom/dcloud/zxing2/common/BitArray;Lcom/dcloud/zxing2/oned/rss/FinderPattern;ZZ)Lcom/dcloud/zxing2/oned/rss/DataCharacter;

    move-result-object p1
    :try_end_0
    .catch Lcom/dcloud/zxing2/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const/4 p1, 0x0

    .line 36
    :goto_3
    new-instance p2, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;

    invoke-direct {p2, p3, p1, v5, v2}, Lcom/dcloud/zxing2/oned/rss/expanded/ExpandedPair;-><init>(Lcom/dcloud/zxing2/oned/rss/DataCharacter;Lcom/dcloud/zxing2/oned/rss/DataCharacter;Lcom/dcloud/zxing2/oned/rss/FinderPattern;Z)V

    return-object p2
.end method
