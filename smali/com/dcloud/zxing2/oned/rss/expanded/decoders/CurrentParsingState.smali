.class final Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;
    }
.end annotation


# instance fields
.field private encoding:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

.field private position:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    .line 3
    sget-object v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;->NUMERIC:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    iput-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->encoding:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    return-void
.end method


# virtual methods
.method getPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    return v0
.end method

.method incrementPosition(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    return-void
.end method

.method isAlpha()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->encoding:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    sget-object v1, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;->ALPHA:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isIsoIec646()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->encoding:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    sget-object v1, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;->ISO_IEC_646:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isNumeric()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->encoding:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    sget-object v1, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;->NUMERIC:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setAlpha()V
    .locals 1

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;->ALPHA:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    iput-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->encoding:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    return-void
.end method

.method setIsoIec646()V
    .locals 1

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;->ISO_IEC_646:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    iput-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->encoding:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    return-void
.end method

.method setNumeric()V
    .locals 1

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;->NUMERIC:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    iput-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->encoding:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState$State;

    return-void
.end method

.method setPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    return-void
.end method
