.class public Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ExifInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ExifInfo"
.end annotation


# instance fields
.field public final flipHorizontal:Z

.field public final rotation:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ExifInfo;->rotation:I

    .line 3
    iput-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ExifInfo;->flipHorizontal:Z

    return-void
.end method

.method protected constructor <init>(IZ)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ExifInfo;->rotation:I

    .line 6
    iput-boolean p2, p0, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ExifInfo;->flipHorizontal:Z

    return-void
.end method
