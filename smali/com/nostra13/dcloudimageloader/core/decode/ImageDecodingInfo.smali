.class public Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;
.super Ljava/lang/Object;


# instance fields
.field private final considerExifParams:Z

.field private final decodingOptions:Landroid/graphics/BitmapFactory$Options;

.field private final downloader:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

.field private final extraForDownloader:Ljava/lang/Object;

.field private final imageKey:Ljava/lang/String;

.field private final imageScaleType:Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;

.field private final imageUri:Ljava/lang/String;

.field private final targetSize:Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;

.field private final viewScaleType:Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->imageKey:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->imageUri:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->targetSize:Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;

    .line 5
    invoke-virtual {p6}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->getImageScaleType()Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;

    move-result-object p1

    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->imageScaleType:Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;

    .line 6
    iput-object p4, p0, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->viewScaleType:Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;

    .line 7
    iput-object p5, p0, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->downloader:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

    .line 8
    invoke-virtual {p6}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->getExtraForDownloader()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->extraForDownloader:Ljava/lang/Object;

    .line 9
    invoke-virtual {p6}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->isConsiderExifParams()Z

    move-result p1

    iput-boolean p1, p0, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->considerExifParams:Z

    .line 10
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    .line 11
    invoke-virtual {p6}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->getDecodingOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->copyOptions(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V

    return-void
.end method

.method private copyOptions(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 2
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 3
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 4
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 5
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 6
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 7
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 8
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 9
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    .line 10
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 11
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->copyOptions10(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V

    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->copyOptions11(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V

    :cond_1
    return-void
.end method

.method private copyOptions10(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V
    .locals 0

    .line 1
    iget-boolean p1, p1, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    iput-boolean p1, p2, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    return-void
.end method

.method private copyOptions11(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V
    .locals 1

    .line 1
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 2
    iget-boolean p1, p1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    iput-boolean p1, p2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    return-void
.end method


# virtual methods
.method public getDecodingOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->decodingOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method public getDownloader()Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->downloader:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

    return-object v0
.end method

.method public getExtraForDownloader()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->extraForDownloader:Ljava/lang/Object;

    return-object v0
.end method

.method public getImageKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->imageKey:Ljava/lang/String;

    return-object v0
.end method

.method public getImageScaleType()Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->imageScaleType:Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;

    return-object v0
.end method

.method public getImageUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->imageUri:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetSize()Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->targetSize:Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;

    return-object v0
.end method

.method public getViewScaleType()Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->viewScaleType:Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;

    return-object v0
.end method

.method public shouldConsiderExifParams()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->considerExifParams:Z

    return v0
.end method
