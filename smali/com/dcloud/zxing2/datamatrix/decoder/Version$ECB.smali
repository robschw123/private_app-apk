.class final Lcom/dcloud/zxing2/datamatrix/decoder/Version$ECB;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/zxing2/datamatrix/decoder/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ECB"
.end annotation


# instance fields
.field private final count:I

.field private final dataCodewords:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/dcloud/zxing2/datamatrix/decoder/Version$ECB;->count:I

    .line 4
    iput p2, p0, Lcom/dcloud/zxing2/datamatrix/decoder/Version$ECB;->dataCodewords:I

    return-void
.end method

.method synthetic constructor <init>(IILcom/dcloud/zxing2/datamatrix/decoder/Version$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dcloud/zxing2/datamatrix/decoder/Version$ECB;-><init>(II)V

    return-void
.end method


# virtual methods
.method getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/decoder/Version$ECB;->count:I

    return v0
.end method

.method getDataCodewords()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/decoder/Version$ECB;->dataCodewords:I

    return v0
.end method
