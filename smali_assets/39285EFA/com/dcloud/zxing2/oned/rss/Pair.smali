.class final Lcom/dcloud/zxing2/oned/rss/Pair;
.super Lcom/dcloud/zxing2/oned/rss/DataCharacter;


# instance fields
.field private count:I

.field private final finderPattern:Lcom/dcloud/zxing2/oned/rss/FinderPattern;


# direct methods
.method constructor <init>(IILcom/dcloud/zxing2/oned/rss/FinderPattern;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dcloud/zxing2/oned/rss/DataCharacter;-><init>(II)V

    .line 2
    iput-object p3, p0, Lcom/dcloud/zxing2/oned/rss/Pair;->finderPattern:Lcom/dcloud/zxing2/oned/rss/FinderPattern;

    return-void
.end method


# virtual methods
.method getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/oned/rss/Pair;->count:I

    return v0
.end method

.method getFinderPattern()Lcom/dcloud/zxing2/oned/rss/FinderPattern;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/Pair;->finderPattern:Lcom/dcloud/zxing2/oned/rss/FinderPattern;

    return-object v0
.end method

.method incrementCount()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/oned/rss/Pair;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dcloud/zxing2/oned/rss/Pair;->count:I

    return-void
.end method
