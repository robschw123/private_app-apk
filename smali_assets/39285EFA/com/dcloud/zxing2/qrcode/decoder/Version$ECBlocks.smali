.class public final Lcom/dcloud/zxing2/qrcode/decoder/Version$ECBlocks;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/zxing2/qrcode/decoder/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ECBlocks"
.end annotation


# instance fields
.field private final ecBlocks:[Lcom/dcloud/zxing2/qrcode/decoder/Version$ECB;

.field private final ecCodewordsPerBlock:I


# direct methods
.method varargs constructor <init>(I[Lcom/dcloud/zxing2/qrcode/decoder/Version$ECB;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/dcloud/zxing2/qrcode/decoder/Version$ECBlocks;->ecCodewordsPerBlock:I

    .line 3
    iput-object p2, p0, Lcom/dcloud/zxing2/qrcode/decoder/Version$ECBlocks;->ecBlocks:[Lcom/dcloud/zxing2/qrcode/decoder/Version$ECB;

    return-void
.end method


# virtual methods
.method public getECBlocks()[Lcom/dcloud/zxing2/qrcode/decoder/Version$ECB;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/decoder/Version$ECBlocks;->ecBlocks:[Lcom/dcloud/zxing2/qrcode/decoder/Version$ECB;

    return-object v0
.end method

.method public getECCodewordsPerBlock()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/qrcode/decoder/Version$ECBlocks;->ecCodewordsPerBlock:I

    return v0
.end method

.method public getNumBlocks()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/decoder/Version$ECBlocks;->ecBlocks:[Lcom/dcloud/zxing2/qrcode/decoder/Version$ECB;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 2
    invoke-virtual {v4}, Lcom/dcloud/zxing2/qrcode/decoder/Version$ECB;->getCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public getTotalECCodewords()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/qrcode/decoder/Version$ECBlocks;->ecCodewordsPerBlock:I

    invoke-virtual {p0}, Lcom/dcloud/zxing2/qrcode/decoder/Version$ECBlocks;->getNumBlocks()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method
