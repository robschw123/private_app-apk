.class final Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask110;
.super Lcom/dcloud/zxing2/qrcode/decoder/DataMask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/zxing2/qrcode/decoder/DataMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataMask110"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask;-><init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dcloud/zxing2/qrcode/decoder/DataMask$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask$DataMask110;-><init>()V

    return-void
.end method


# virtual methods
.method isMasked(II)Z
    .locals 0

    mul-int p1, p1, p2

    and-int/lit8 p2, p1, 0x1

    .line 1
    rem-int/lit8 p1, p1, 0x3

    add-int/2addr p2, p1

    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
