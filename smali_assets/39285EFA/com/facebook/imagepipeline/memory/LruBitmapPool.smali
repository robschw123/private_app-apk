.class public Lcom/facebook/imagepipeline/memory/LruBitmapPool;
.super Ljava/lang/Object;
.source "LruBitmapPool.java"

# interfaces
.implements Lcom/facebook/imagepipeline/memory/BitmapPool;


# instance fields
.field private mCurrentSize:I

.field private mMaxBitmapSize:I

.field private final mMaxPoolSize:I

.field private final mPoolStatsTracker:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

.field protected final mStrategy:Lcom/facebook/imagepipeline/memory/PoolBackend;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/memory/PoolBackend<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILcom/facebook/imagepipeline/memory/PoolStatsTracker;Lcom/facebook/common/memory/MemoryTrimmableRegistry;)V
    .locals 1
    .param p4    # Lcom/facebook/common/memory/MemoryTrimmableRegistry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "maxPoolSize",
            "maxBitmapSize",
            "poolStatsTracker",
            "memoryTrimmableRegistry"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/facebook/imagepipeline/memory/BitmapPoolBackend;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/memory/BitmapPoolBackend;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->mStrategy:Lcom/facebook/imagepipeline/memory/PoolBackend;

    .line 31
    iput p1, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->mMaxPoolSize:I

    .line 32
    iput p2, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->mMaxBitmapSize:I

    .line 33
    iput-object p3, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->mPoolStatsTracker:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    if-eqz p4, :cond_0

    .line 35
    invoke-interface {p4, p0}, Lcom/facebook/common/memory/MemoryTrimmableRegistry;->registerMemoryTrimmable(Lcom/facebook/common/memory/MemoryTrimmable;)V

    :cond_0
    return-void
.end method

.method private alloc(I)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->mPoolStatsTracker:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/memory/PoolStatsTracker;->onAlloc(I)V

    .line 75
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized trimTo(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxSize"
        }
    .end annotation

    monitor-enter p0

    .line 45
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->mCurrentSize:I

    if-le v0, p1, :cond_1

    .line 46
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->mStrategy:Lcom/facebook/imagepipeline/memory/PoolBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/memory/PoolBackend;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto :goto_1

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->mStrategy:Lcom/facebook/imagepipeline/memory/PoolBackend;

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/memory/PoolBackend;->getSize(Ljava/lang/Object;)I

    move-result v0

    .line 51
    iget v1, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->mCurrentSize:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->mCurrentSize:I

    .line 52
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->mPoolStatsTracker:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/memory/PoolStatsTracker;->onFree(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 55
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized get(I)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "size"
        }
    .end annotation

    monitor-enter p0

    .line 59
    :try_start_0
    iget v0, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->mCurrentSize:I

    iget v1, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->mMaxPoolSize:I

    if-le v0, v1, :cond_0

    .line 60
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->trimTo(I)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->mStrategy:Lcom/facebook/imagepipeline/memory/PoolBackend;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/memory/PoolBackend;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 64
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->mStrategy:Lcom/facebook/imagepipeline/memory/PoolBackend;

    invoke-interface {p1, v0}, Lcom/facebook/imagepipeline/memory/PoolBackend;->getSize(Ljava/lang/Object;)I

    move-result p1

    .line 65
    iget v1, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->mCurrentSize:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->mCurrentSize:I

    .line 66
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->mPoolStatsTracker:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    invoke-interface {v1, p1}, Lcom/facebook/imagepipeline/memory/PoolStatsTracker;->onValueReuse(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-object v0

    .line 69
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->alloc(I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "size"
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->get(I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public release(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->mStrategy:Lcom/facebook/imagepipeline/memory/PoolBackend;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/memory/PoolBackend;->getSize(Ljava/lang/Object;)I

    move-result v0

    .line 81
    iget v1, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->mMaxBitmapSize:I

    if-gt v0, v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->mPoolStatsTracker:Lcom/facebook/imagepipeline/memory/PoolStatsTracker;

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/memory/PoolStatsTracker;->onValueRelease(I)V

    .line 83
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->mStrategy:Lcom/facebook/imagepipeline/memory/PoolBackend;

    invoke-interface {v1, p1}, Lcom/facebook/imagepipeline/memory/PoolBackend;->put(Ljava/lang/Object;)V

    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iget p1, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->mCurrentSize:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->mCurrentSize:I

    .line 86
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public bridge synthetic release(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "value"
        }
    .end annotation

    .line 17
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->release(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public trim(Lcom/facebook/common/memory/MemoryTrimType;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trimType"
        }
    .end annotation

    .line 41
    iget v0, p0, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->mMaxPoolSize:I

    int-to-double v0, v0

    invoke-virtual {p1}, Lcom/facebook/common/memory/MemoryTrimType;->getSuggestedTrimRatio()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    double-to-int p1, v0

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/memory/LruBitmapPool;->trimTo(I)V

    return-void
.end method
