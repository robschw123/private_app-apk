.class public Lcom/facebook/imagepipeline/memory/BucketsBitmapPool;
.super Lcom/facebook/imagepipeline/memory/BasePool;
.source "BucketsBitmapPool.java"

# interfaces
.implements Lcom/facebook/imagepipeline/memory/BitmapPool;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/memory/BasePool<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lcom/facebook/imagepipeline/memory/BitmapPool;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/MemoryTrimmableRegistry;Lcom/facebook/imagepipeline/memory/PoolParams;Lcom/facebook/imagepipeline/memory/PoolStatsTracker;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "memoryTrimmableRegistry",
            "poolParams",
            "poolStatsTracker",
            "ignoreHardCap"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/memory/BasePool;-><init>(Lcom/facebook/common/memory/MemoryTrimmableRegistry;Lcom/facebook/imagepipeline/memory/PoolParams;Lcom/facebook/imagepipeline/memory/PoolStatsTracker;Z)V

    .line 45
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/BucketsBitmapPool;->initialize()V

    return-void
.end method


# virtual methods
.method protected alloc(I)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    int-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 57
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    .line 59
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    .line 57
    invoke-static {v1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic alloc(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "size"
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BucketsBitmapPool;->alloc(I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected free(Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 70
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method protected bridge synthetic free(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    .line 28
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BucketsBitmapPool;->free(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected getBucketedSize(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestSize"
        }
    .end annotation

    return p1
.end method

.method protected getBucketedSizeForValue(Landroid/graphics/Bitmap;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 94
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p1

    return p1
.end method

.method protected bridge synthetic getBucketedSizeForValue(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    .line 28
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BucketsBitmapPool;->getBucketedSizeForValue(Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method protected getSizeInBytes(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bucketedSize"
        }
    .end annotation

    return p1
.end method

.method protected getValue(Lcom/facebook/imagepipeline/memory/Bucket;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bucket"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/memory/Bucket<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 125
    invoke-super {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->getValue(Lcom/facebook/imagepipeline/memory/Bucket;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 127
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_0
    return-object p1
.end method

.method protected bridge synthetic getValue(Lcom/facebook/imagepipeline/memory/Bucket;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "bucket"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 28
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BucketsBitmapPool;->getValue(Lcom/facebook/imagepipeline/memory/Bucket;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected isReusable(Landroid/graphics/Bitmap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 118
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected bridge synthetic isReusable(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    .line 28
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BucketsBitmapPool;->isReusable(Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1
.end method
