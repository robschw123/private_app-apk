.class final Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;
.super Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedObject;


# static fields
.field static final FNC1:C = '$'


# instance fields
.field private final value:C


# direct methods
.method constructor <init>(IC)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedObject;-><init>(I)V

    .line 2
    iput-char p2, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;->value:C

    return-void
.end method


# virtual methods
.method getValue()C
    .locals 1

    .line 1
    iget-char v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;->value:C

    return v0
.end method

.method isFNC1()Z
    .locals 2

    .line 1
    iget-char v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;->value:C

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
