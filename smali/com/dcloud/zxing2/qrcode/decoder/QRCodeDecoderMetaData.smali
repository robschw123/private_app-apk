.class public final Lcom/dcloud/zxing2/qrcode/decoder/QRCodeDecoderMetaData;
.super Ljava/lang/Object;


# instance fields
.field private final mirrored:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/dcloud/zxing2/qrcode/decoder/QRCodeDecoderMetaData;->mirrored:Z

    return-void
.end method


# virtual methods
.method public applyMirroredCorrection([Lcom/dcloud/zxing2/ResultPoint;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/dcloud/zxing2/qrcode/decoder/QRCodeDecoderMetaData;->mirrored:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    aget-object v1, p1, v0

    const/4 v2, 0x2

    .line 5
    aget-object v3, p1, v2

    aput-object v3, p1, v0

    .line 6
    aput-object v1, p1, v2

    :cond_1
    :goto_0
    return-void
.end method

.method public isMirrored()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dcloud/zxing2/qrcode/decoder/QRCodeDecoderMetaData;->mirrored:Z

    return v0
.end method
