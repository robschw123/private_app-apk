.class public Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ImageFileInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ImageFileInfo"
.end annotation


# instance fields
.field public final exif:Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ExifInfo;

.field public final imageSize:Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;


# direct methods
.method protected constructor <init>(Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ExifInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ImageFileInfo;->imageSize:Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;

    .line 3
    iput-object p2, p0, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ImageFileInfo;->exif:Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ExifInfo;

    return-void
.end method
