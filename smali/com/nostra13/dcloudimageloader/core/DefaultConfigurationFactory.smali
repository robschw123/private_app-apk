.class public Lcom/nostra13/dcloudimageloader/core/DefaultConfigurationFactory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/dcloudimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBitmapDisplayer()Lcom/nostra13/dcloudimageloader/core/display/BitmapDisplayer;
    .locals 1

    .line 1
    new-instance v0, Lcom/nostra13/dcloudimageloader/core/display/SimpleBitmapDisplayer;

    invoke-direct {v0}, Lcom/nostra13/dcloudimageloader/core/display/SimpleBitmapDisplayer;-><init>()V

    return-object v0
.end method

.method public static createDiscCache(Landroid/content/Context;Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;II)Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;
    .locals 0

    if-lez p2, :cond_0

    .line 1
    invoke-static {p0}, Lcom/nostra13/dcloudimageloader/utils/StorageUtils;->getIndividualCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 2
    new-instance p3, Lcom/nostra13/dcloudimageloader/cache/disc/impl/TotalSizeLimitedDiscCache;

    invoke-direct {p3, p0, p1, p2}, Lcom/nostra13/dcloudimageloader/cache/disc/impl/TotalSizeLimitedDiscCache;-><init>(Ljava/io/File;Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;I)V

    return-object p3

    :cond_0
    if-lez p3, :cond_1

    .line 4
    invoke-static {p0}, Lcom/nostra13/dcloudimageloader/utils/StorageUtils;->getIndividualCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 5
    new-instance p2, Lcom/nostra13/dcloudimageloader/cache/disc/impl/FileCountLimitedDiscCache;

    invoke-direct {p2, p0, p1, p3}, Lcom/nostra13/dcloudimageloader/cache/disc/impl/FileCountLimitedDiscCache;-><init>(Ljava/io/File;Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;I)V

    return-object p2

    .line 7
    :cond_1
    invoke-static {p0}, Lcom/nostra13/dcloudimageloader/utils/StorageUtils;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 8
    new-instance p2, Lcom/nostra13/dcloudimageloader/cache/disc/impl/UnlimitedDiscCache;

    invoke-direct {p2, p0, p1}, Lcom/nostra13/dcloudimageloader/cache/disc/impl/UnlimitedDiscCache;-><init>(Ljava/io/File;Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;)V

    return-object p2
.end method

.method public static createExecutor(IILcom/nostra13/dcloudimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;
    .locals 8

    .line 1
    sget-object v0, Lcom/nostra13/dcloudimageloader/core/assist/QueueProcessingType;->LIFO:Lcom/nostra13/dcloudimageloader/core/assist/QueueProcessingType;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    new-instance p2, Lcom/nostra13/dcloudimageloader/core/assist/deque/LIFOLinkedBlockingDeque;

    invoke-direct {p2}, Lcom/nostra13/dcloudimageloader/core/assist/deque/LIFOLinkedBlockingDeque;-><init>()V

    goto :goto_1

    :cond_1
    new-instance p2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    :goto_1
    move-object v6, p2

    .line 3
    new-instance p2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/DefaultConfigurationFactory;->createThreadFactory(I)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const-wide/16 v3, 0x0

    move-object v0, p2

    move v1, p0

    move v2, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object p2
.end method

.method public static createFileNameGenerator()Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;
    .locals 1

    .line 1
    new-instance v0, Lcom/nostra13/dcloudimageloader/cache/disc/naming/HashCodeFileNameGenerator;

    invoke-direct {v0}, Lcom/nostra13/dcloudimageloader/cache/disc/naming/HashCodeFileNameGenerator;-><init>()V

    return-object v0
.end method

.method public static createImageDecoder(Z)Lcom/nostra13/dcloudimageloader/core/decode/ImageDecoder;
    .locals 1

    .line 1
    new-instance v0, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder;

    invoke-direct {v0, p0}, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder;-><init>(Z)V

    return-object v0
.end method

.method public static createImageDownloader(Landroid/content/Context;)Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;
    .locals 1

    .line 1
    new-instance v0, Lcom/nostra13/dcloudimageloader/core/download/BaseImageDownloader;

    invoke-direct {v0, p0}, Lcom/nostra13/dcloudimageloader/core/download/BaseImageDownloader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createMemoryCache(I)Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;
    .locals 4

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-int p0, v0

    .line 5
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 6
    new-instance v0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/LruMemoryCache;

    invoke-direct {v0, p0}, Lcom/nostra13/dcloudimageloader/cache/memory/impl/LruMemoryCache;-><init>(I)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/LRULimitedMemoryCache;

    invoke-direct {v0, p0}, Lcom/nostra13/dcloudimageloader/cache/memory/impl/LRULimitedMemoryCache;-><init>(I)V

    :goto_0
    return-object v0
.end method

.method public static createReserveDiscCache(Ljava/io/File;)Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "uil-images"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object p0, v0

    .line 6
    :cond_1
    new-instance v0, Lcom/nostra13/dcloudimageloader/cache/disc/impl/TotalSizeLimitedDiscCache;

    const/high16 v1, 0x200000

    invoke-direct {v0, p0, v1}, Lcom/nostra13/dcloudimageloader/cache/disc/impl/TotalSizeLimitedDiscCache;-><init>(Ljava/io/File;I)V

    return-object v0
.end method

.method private static createThreadFactory(I)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 1
    new-instance v0, Lcom/nostra13/dcloudimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;

    invoke-direct {v0, p0}, Lcom/nostra13/dcloudimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;-><init>(I)V

    return-object v0
.end method
