.class public Lcom/nostra13/dcloudimageloader/core/assist/SyncImageLoadingListener;
.super Lcom/nostra13/dcloudimageloader/core/assist/SimpleImageLoadingListener;


# instance fields
.field private loadedImage:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/core/assist/SimpleImageLoadingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoadedBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/assist/SyncImageLoadingListener;->loadedImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/nostra13/dcloudimageloader/core/assist/SyncImageLoadingListener;->loadedImage:Landroid/graphics/Bitmap;

    return-void
.end method
