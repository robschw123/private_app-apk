.class final Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;
.super Ljava/lang/Object;


# instance fields
.field private final decodedInformation:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;

.field private final finished:Z


# direct methods
.method constructor <init>(Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p2, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;->finished:Z

    .line 4
    iput-object p1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;->decodedInformation:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;Z)V

    return-void
.end method


# virtual methods
.method getDecodedInformation()Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;->decodedInformation:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;

    return-object v0
.end method

.method isFinished()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;->finished:Z

    return v0
.end method
