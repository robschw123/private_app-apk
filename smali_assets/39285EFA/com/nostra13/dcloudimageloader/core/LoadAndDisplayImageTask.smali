.class final Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final BUFFER_SIZE:I = 0x8000

.field private static final ERROR_POST_PROCESSOR_NULL:Ljava/lang/String; = "Pre-processor returned null [%s]"

.field private static final ERROR_PRE_PROCESSOR_NULL:Ljava/lang/String; = "Pre-processor returned null [%s]"

.field private static final ERROR_PROCESSOR_FOR_DISC_CACHE_NULL:Ljava/lang/String; = "Bitmap processor for disc cache returned null [%s]"

.field private static final LOG_CACHE_IMAGE_IN_MEMORY:Ljava/lang/String; = "Cache image in memory [%s]"

.field private static final LOG_CACHE_IMAGE_ON_DISC:Ljava/lang/String; = "Cache image on disc [%s]"

.field private static final LOG_DELAY_BEFORE_LOADING:Ljava/lang/String; = "Delay %d ms before loading...  [%s]"

.field private static final LOG_GET_IMAGE_FROM_MEMORY_CACHE_AFTER_WAITING:Ljava/lang/String; = "...Get cached bitmap from memory after waiting. [%s]"

.field private static final LOG_LOAD_IMAGE_FROM_DISC_CACHE:Ljava/lang/String; = "Load image from disc cache [%s]"

.field private static final LOG_LOAD_IMAGE_FROM_NETWORK:Ljava/lang/String; = "Load image from network [%s]"

.field private static final LOG_POSTPROCESS_IMAGE:Ljava/lang/String; = "PostProcess image before displaying [%s]"

.field private static final LOG_PREPROCESS_IMAGE:Ljava/lang/String; = "PreProcess image before caching in memory [%s]"

.field private static final LOG_PROCESS_IMAGE_BEFORE_CACHE_ON_DISC:Ljava/lang/String; = "Process image before cache on disc [%s]"

.field private static final LOG_RESUME_AFTER_PAUSE:Ljava/lang/String; = ".. Resume loading [%s]"

.field private static final LOG_START_DISPLAY_IMAGE_TASK:Ljava/lang/String; = "Start display image task [%s]"

.field private static final LOG_TASK_CANCELLED_IMAGEAWARE_COLLECTED:Ljava/lang/String; = "ImageAware was collected by GC. Task is cancelled. [%s]"

.field private static final LOG_TASK_CANCELLED_IMAGEAWARE_REUSED:Ljava/lang/String; = "ImageAware is reused for another image. Task is cancelled. [%s]"

.field private static final LOG_TASK_INTERRUPTED:Ljava/lang/String; = "Task was interrupted [%s]"

.field private static final LOG_WAITING_FOR_IMAGE_LOADED:Ljava/lang/String; = "Image already is loading. Waiting... [%s]"

.field private static final LOG_WAITING_FOR_RESUME:Ljava/lang/String; = "ImageLoader is paused. Waiting...  [%s]"


# instance fields
.field private final configuration:Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;

.field private final decoder:Lcom/nostra13/dcloudimageloader/core/decode/ImageDecoder;

.field private final downloader:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

.field private final engine:Lcom/nostra13/dcloudimageloader/core/ImageLoaderEngine;

.field private final handler:Landroid/os/Handler;

.field final imageAware:Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;

.field private imageAwareCollected:Z

.field private final imageLoadingInfo:Lcom/nostra13/dcloudimageloader/core/ImageLoadingInfo;

.field final listener:Lcom/nostra13/dcloudimageloader/core/assist/ImageLoadingListener;

.field private loadedFrom:Lcom/nostra13/dcloudimageloader/core/assist/LoadedFrom;

.field private final memoryCacheKey:Ljava/lang/String;

.field private final networkDeniedDownloader:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

.field final options:Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

.field private final slowNetworkDownloader:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

.field private final targetSize:Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;

.field final uri:Ljava/lang/String;

.field private final writeLogs:Z


# direct methods
.method public constructor <init>(Lcom/nostra13/dcloudimageloader/core/ImageLoaderEngine;Lcom/nostra13/dcloudimageloader/core/ImageLoadingInfo;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/nostra13/dcloudimageloader/core/assist/LoadedFrom;->NETWORK:Lcom/nostra13/dcloudimageloader/core/assist/LoadedFrom;

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->loadedFrom:Lcom/nostra13/dcloudimageloader/core/assist/LoadedFrom;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->imageAwareCollected:Z

    .line 4
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->engine:Lcom/nostra13/dcloudimageloader/core/ImageLoaderEngine;

    .line 5
    iput-object p2, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->imageLoadingInfo:Lcom/nostra13/dcloudimageloader/core/ImageLoadingInfo;

    .line 6
    iput-object p3, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;

    .line 7
    iget-object p1, p1, Lcom/nostra13/dcloudimageloader/core/ImageLoaderEngine;->configuration:Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;

    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;

    .line 8
    iget-object p3, p1, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->downloader:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

    iput-object p3, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->downloader:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

    .line 9
    iget-object p3, p1, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->networkDeniedDownloader:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

    iput-object p3, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->networkDeniedDownloader:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

    .line 10
    iget-object p3, p1, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->slowNetworkDownloader:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

    iput-object p3, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->slowNetworkDownloader:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

    .line 11
    iget-object p3, p1, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->decoder:Lcom/nostra13/dcloudimageloader/core/decode/ImageDecoder;

    iput-object p3, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->decoder:Lcom/nostra13/dcloudimageloader/core/decode/ImageDecoder;

    .line 12
    iget-boolean p1, p1, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->writeLogs:Z

    iput-boolean p1, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->writeLogs:Z

    .line 13
    iget-object p1, p2, Lcom/nostra13/dcloudimageloader/core/ImageLoadingInfo;->uri:Ljava/lang/String;

    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    .line 14
    iget-object p1, p2, Lcom/nostra13/dcloudimageloader/core/ImageLoadingInfo;->memoryCacheKey:Ljava/lang/String;

    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    .line 15
    iget-object p1, p2, Lcom/nostra13/dcloudimageloader/core/ImageLoadingInfo;->imageAware:Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;

    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->imageAware:Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;

    .line 16
    iget-object p1, p2, Lcom/nostra13/dcloudimageloader/core/ImageLoadingInfo;->targetSize:Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;

    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->targetSize:Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;

    .line 17
    iget-object p1, p2, Lcom/nostra13/dcloudimageloader/core/ImageLoadingInfo;->options:Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    .line 18
    iget-object p1, p2, Lcom/nostra13/dcloudimageloader/core/ImageLoadingInfo;->listener:Lcom/nostra13/dcloudimageloader/core/assist/ImageLoadingListener;

    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->listener:Lcom/nostra13/dcloudimageloader/core/assist/ImageLoadingListener;

    return-void
.end method

.method static synthetic access$000(Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;)Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;

    return-object p0
.end method

.method private checkTaskIsInterrupted()Z
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "Task was interrupted [%s]"

    .line 3
    invoke-direct {p0, v1}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method private checkTaskIsNotActual()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->checkViewCollected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->checkViewReused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private checkViewCollected()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->imageAware:Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;

    invoke-interface {v0}, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;->isCollected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->imageAwareCollected:Z

    const-string v1, "ImageAware was collected by GC. Task is cancelled. [%s]"

    .line 3
    invoke-direct {p0, v1}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->fireCancelEvent()V

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private checkViewReused()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->engine:Lcom/nostra13/dcloudimageloader/core/ImageLoaderEngine;

    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->imageAware:Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;

    invoke-virtual {v0, v1}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderEngine;->getLoadingUriForView(Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v1, "ImageAware is reused for another image. Task is cancelled. [%s]"

    .line 4
    invoke-direct {p0, v1}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->fireCancelEvent()V

    :cond_0
    return v0
.end method

.method private decodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->checkViewCollected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->imageAware:Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;

    invoke-interface {v0}, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;->getScaleType()Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;

    move-result-object v6

    if-nez v6, :cond_1

    return-object v1

    .line 8
    :cond_1
    new-instance v0, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;

    iget-object v3, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->targetSize:Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;

    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->getDownloader()Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

    move-result-object v7

    iget-object v8, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)V

    .line 9
    iget-object p1, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->decoder:Lcom/nostra13/dcloudimageloader/core/decode/ImageDecoder;

    invoke-interface {p1, v0}, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecoder;->decode(Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private delayIfNeed()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    invoke-virtual {v0}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->shouldDelayBeforeLoading()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iget-object v2, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    invoke-virtual {v2}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->getDelayBeforeLoading()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v2, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "Delay %d ms before loading...  [%s]"

    invoke-direct {p0, v2, v0}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    invoke-virtual {v0}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->getDelayBeforeLoading()I

    move-result v0

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->checkTaskIsNotActual()Z

    move-result v0

    return v0

    :catch_0
    new-array v0, v3, [Ljava/lang/Object;

    .line 12
    iget-object v2, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "Task was interrupted [%s]"

    invoke-static {v1, v0}, Lcom/nostra13/dcloudimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_0
    return v1
.end method

.method private downloadImage(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->getDownloader()Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

    move-result-object v0

    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    iget-object v2, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    invoke-virtual {v2}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->getExtraForDownloader()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;->getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x4ab

    invoke-direct {v1, v2, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    invoke-static {v0, v1}, Lcom/nostra13/dcloudimageloader/utils/IoUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    invoke-static {v1}, Lcom/nostra13/dcloudimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12
    invoke-static {v0}, Lcom/nostra13/dcloudimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_3
    invoke-static {v1}, Lcom/nostra13/dcloudimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 14
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 16
    invoke-static {v0}, Lcom/nostra13/dcloudimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 17
    throw p1
.end method

.method private downloadSizedImage(Ljava/io/File;II)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v3, Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;

    invoke-direct {v3, p2, p3}, Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;-><init>(II)V

    .line 2
    new-instance p2, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {p2}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;-><init>()V

    iget-object p3, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    invoke-virtual {p2, p3}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;

    move-result-object p2

    sget-object p3, Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;->IN_SAMPLE_INT:Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;

    invoke-virtual {p2, p3}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    move-result-object v6

    .line 3
    new-instance p2, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;

    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    sget-object v4, Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;

    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->getDownloader()Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

    move-result-object v5

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)V

    .line 4
    iget-object p3, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->decoder:Lcom/nostra13/dcloudimageloader/core/decode/ImageDecoder;

    invoke-interface {p3, p2}, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecoder;->decode(Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return p3

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->processorForDiscCache:Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;

    if-eqz v0, :cond_1

    const-string v0, "Process image before cache on disc [%s]"

    .line 9
    invoke-direct {p0, v0}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->processorForDiscCache:Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;

    invoke-interface {v0, p2}, Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 12
    iget-object p2, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object p2, p1, p3

    const-string p2, "Bitmap processor for disc cache returned null [%s]"

    invoke-static {p2, p1}, Lcom/nostra13/dcloudimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return p3

    .line 17
    :cond_1
    new-instance p3, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x4ab

    invoke-direct {p3, v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 21
    :try_start_0
    iget-object p1, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;

    iget-object v0, p1, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->imageCompressFormatForDiscCache:Landroid/graphics/Bitmap$CompressFormat;

    iget p1, p1, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->imageQualityForDiscCache:I

    invoke-virtual {p2, v0, p1, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-static {p3}, Lcom/nostra13/dcloudimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 26
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 27
    invoke-static {p3}, Lcom/nostra13/dcloudimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 28
    throw p1
.end method

.method private fireCancelEvent()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    invoke-virtual {v0}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->isSyncLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->listener:Lcom/nostra13/dcloudimageloader/core/assist/ImageLoadingListener;

    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    iget-object v2, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->imageAware:Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;

    invoke-interface {v2}, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nostra13/dcloudimageloader/core/assist/ImageLoadingListener;->onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask$2;

    invoke-direct {v1, p0}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask$2;-><init>(Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private fireFailEvent(Lcom/nostra13/dcloudimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    invoke-virtual {v0}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->isSyncLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->listener:Lcom/nostra13/dcloudimageloader/core/assist/ImageLoadingListener;

    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    iget-object v2, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->imageAware:Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;

    invoke-interface {v2}, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/nostra13/dcloudimageloader/core/assist/FailReason;

    invoke-direct {v3, p1, p2}, Lcom/nostra13/dcloudimageloader/core/assist/FailReason;-><init>(Lcom/nostra13/dcloudimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/nostra13/dcloudimageloader/core/assist/ImageLoadingListener;->onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/dcloudimageloader/core/assist/FailReason;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask$1;-><init>(Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;Lcom/nostra13/dcloudimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private getDownloader()Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->engine:Lcom/nostra13/dcloudimageloader/core/ImageLoaderEngine;

    invoke-virtual {v0}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderEngine;->isNetworkDenied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->networkDeniedDownloader:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->engine:Lcom/nostra13/dcloudimageloader/core/ImageLoaderEngine;

    invoke-virtual {v0}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderEngine;->isSlowNetwork()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->slowNetworkDownloader:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->downloader:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

    :goto_0
    return-object v0
.end method

.method private getImageFileInDiscCache()Ljava/io/File;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->discCache:Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;

    .line 2
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->reserveDiscCache:Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;

    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->writeLogs:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lcom/nostra13/dcloudimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->writeLogs:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1, p2}, Lcom/nostra13/dcloudimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private tryCacheImageOnDisc(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    const-string v0, "Cache image on disc [%s]"

    .line 1
    invoke-direct {p0, v0}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;

    iget v1, v0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->maxImageWidthForDiscCache:I

    .line 5
    iget v0, v0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->maxImageHeightForDiscCache:I

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    if-lez v0, :cond_1

    .line 8
    :cond_0
    invoke-direct {p0, p1, v1, v0}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->downloadSizedImage(Ljava/io/File;II)Z

    move-result v2

    :cond_1
    if-nez v2, :cond_2

    .line 12
    invoke-direct {p0, p1}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->downloadImage(Ljava/io/File;)V

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->discCache:Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;

    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;->put(Ljava/lang/String;Ljava/io/File;)V

    .line 16
    sget-object v0, Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 18
    invoke-static {v0}, Lcom/nostra13/dcloudimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    .line 19
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 23
    :cond_3
    iget-object p1, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    return-object p1
.end method

.method private tryLoadBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->getImageFileInDiscCache()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Load image from disc cache [%s]"

    .line 6
    invoke-direct {p0, v2}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V

    .line 7
    sget-object v2, Lcom/nostra13/dcloudimageloader/core/assist/LoadedFrom;->DISC_CACHE:Lcom/nostra13/dcloudimageloader/core/assist/LoadedFrom;

    iput-object v2, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->loadedFrom:Lcom/nostra13/dcloudimageloader/core/assist/LoadedFrom;

    .line 8
    sget-object v2, Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->decodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iget-boolean v3, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->imageAwareCollected:Z

    if-eqz v3, :cond_1

    return-object v1

    :cond_0
    move-object v2, v1

    :cond_1
    if-eqz v2, :cond_2

    .line 14
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-gtz v3, :cond_6

    :cond_2
    const-string v3, "Load image from network [%s]"

    .line 15
    invoke-direct {p0, v3}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V

    .line 16
    sget-object v3, Lcom/nostra13/dcloudimageloader/core/assist/LoadedFrom;->NETWORK:Lcom/nostra13/dcloudimageloader/core/assist/LoadedFrom;

    iput-object v3, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->loadedFrom:Lcom/nostra13/dcloudimageloader/core/assist/LoadedFrom;

    .line 17
    iget-object v3, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    invoke-virtual {v3}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->isCacheOnDisc()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v0}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->tryCacheImageOnDisc(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    .line 18
    :goto_0
    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->checkTaskIsNotActual()Z

    move-result v4

    if-nez v4, :cond_6

    .line 19
    invoke-direct {p0, v3}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->decodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 20
    iget-boolean v3, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->imageAwareCollected:Z

    if-eqz v3, :cond_4

    return-object v1

    :cond_4
    if-eqz v2, :cond_5

    .line 24
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-gtz v3, :cond_6

    .line 25
    :cond_5
    sget-object v3, Lcom/nostra13/dcloudimageloader/core/assist/FailReason$FailType;->DECODING_ERROR:Lcom/nostra13/dcloudimageloader/core/assist/FailReason$FailType;

    invoke-direct {p0, v3, v1}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->fireFailEvent(Lcom/nostra13/dcloudimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    .line 41
    :goto_1
    invoke-static {v0}, Lcom/nostra13/dcloudimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    .line 42
    sget-object v2, Lcom/nostra13/dcloudimageloader/core/assist/FailReason$FailType;->UNKNOWN:Lcom/nostra13/dcloudimageloader/core/assist/FailReason$FailType;

    invoke-direct {p0, v2, v0}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->fireFailEvent(Lcom/nostra13/dcloudimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_2
    move-exception v0

    .line 43
    :goto_2
    invoke-static {v0}, Lcom/nostra13/dcloudimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    .line 44
    sget-object v2, Lcom/nostra13/dcloudimageloader/core/assist/FailReason$FailType;->OUT_OF_MEMORY:Lcom/nostra13/dcloudimageloader/core/assist/FailReason$FailType;

    invoke-direct {p0, v2, v0}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->fireFailEvent(Lcom/nostra13/dcloudimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    :goto_3
    move-object v2, v1

    goto :goto_5

    :catch_3
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    .line 45
    :goto_4
    invoke-static {v1}, Lcom/nostra13/dcloudimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    .line 46
    sget-object v3, Lcom/nostra13/dcloudimageloader/core/assist/FailReason$FailType;->IO_ERROR:Lcom/nostra13/dcloudimageloader/core/assist/FailReason$FailType;

    invoke-direct {p0, v3, v1}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->fireFailEvent(Lcom/nostra13/dcloudimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    .line 47
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_5

    :catch_4
    move-object v2, v1

    .line 49
    :catch_5
    sget-object v0, Lcom/nostra13/dcloudimageloader/core/assist/FailReason$FailType;->NETWORK_DENIED:Lcom/nostra13/dcloudimageloader/core/assist/FailReason$FailType;

    invoke-direct {p0, v0, v1}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->fireFailEvent(Lcom/nostra13/dcloudimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    :cond_6
    :goto_5
    return-object v2
.end method

.method private waitIfPaused()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->engine:Lcom/nostra13/dcloudimageloader/core/ImageLoaderEngine;

    invoke-virtual {v0}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderEngine;->getPause()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ImageLoader is paused. Waiting...  [%s]"

    .line 4
    invoke-direct {p0, v1}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v1, ".. Resume loading [%s]"

    .line 13
    invoke-direct {p0, v1}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    const-string v1, "Task was interrupted [%s]"

    const/4 v2, 0x1

    :try_start_3
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 14
    iget-object v5, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/nostra13/dcloudimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    monitor-exit v0

    return v2

    .line 20
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 22
    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->checkTaskIsNotActual()Z

    move-result v0

    return v0

    :catchall_0
    move-exception v1

    .line 23
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method


# virtual methods
.method getLoadingUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->waitIfPaused()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->delayIfNeed()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->imageLoadingInfo:Lcom/nostra13/dcloudimageloader/core/ImageLoadingInfo;

    iget-object v0, v0, Lcom/nostra13/dcloudimageloader/core/ImageLoadingInfo;->loadFromUriLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-string v1, "Start display image task [%s]"

    .line 4
    invoke-direct {p0, v1}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Image already is loading. Waiting... [%s]"

    .line 6
    invoke-direct {p0, v1}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 13
    :try_start_0
    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->checkTaskIsNotActual()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 57
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 58
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;

    iget-object v1, v1, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

    iget-object v2, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    const-string v3, "Pre-processor returned null [%s]"

    if-nez v1, :cond_7

    .line 60
    :try_start_2
    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->tryLoadBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 61
    iget-boolean v4, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->imageAwareCollected:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_2

    .line 98
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 99
    :cond_3
    :try_start_3
    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->checkTaskIsNotActual()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->checkTaskIsInterrupted()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .line 103
    :cond_4
    iget-object v4, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    invoke-virtual {v4}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->shouldPreProcess()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "PreProcess image before caching in memory [%s]"

    .line 104
    invoke-direct {p0, v4}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V

    .line 105
    iget-object v4, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    invoke-virtual {v4}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->getPreProcessor()Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_5

    new-array v4, v2, [Ljava/lang/Object;

    .line 107
    invoke-static {v3, v4}, Lcom/nostra13/dcloudimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    if-eqz v1, :cond_8

    .line 111
    iget-object v4, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    invoke-virtual {v4}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->isCacheInMemory()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "Cache image in memory [%s]"

    .line 112
    invoke-direct {p0, v4}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V

    .line 113
    iget-object v4, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;

    iget-object v4, v4, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

    iget-object v5, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    invoke-interface {v4, v5, v1}, Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 128
    :cond_6
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 129
    :cond_7
    :try_start_4
    sget-object v4, Lcom/nostra13/dcloudimageloader/core/assist/LoadedFrom;->MEMORY_CACHE:Lcom/nostra13/dcloudimageloader/core/assist/LoadedFrom;

    iput-object v4, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->loadedFrom:Lcom/nostra13/dcloudimageloader/core/assist/LoadedFrom;

    const-string v4, "...Get cached bitmap from memory after waiting. [%s]"

    .line 130
    invoke-direct {p0, v4}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V

    :cond_8
    :goto_1
    if-eqz v1, :cond_9

    .line 133
    iget-object v4, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    invoke-virtual {v4}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->shouldPostProcess()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "PostProcess image before displaying [%s]"

    .line 134
    invoke-direct {p0, v4}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->log(Ljava/lang/String;)V

    .line 135
    iget-object v4, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    invoke-virtual {v4}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->getPostProcessor()Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/nostra13/dcloudimageloader/core/process/BitmapProcessor;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 137
    iget-object v5, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lcom/nostra13/dcloudimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 141
    :cond_9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 144
    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->checkTaskIsNotActual()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->checkTaskIsInterrupted()Z

    move-result v0

    if-nez v0, :cond_b

    .line 145
    new-instance v0, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;

    iget-object v2, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->imageLoadingInfo:Lcom/nostra13/dcloudimageloader/core/ImageLoadingInfo;

    iget-object v3, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->engine:Lcom/nostra13/dcloudimageloader/core/ImageLoaderEngine;

    iget-object v4, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->loadedFrom:Lcom/nostra13/dcloudimageloader/core/assist/LoadedFrom;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;-><init>(Landroid/graphics/Bitmap;Lcom/nostra13/dcloudimageloader/core/ImageLoadingInfo;Lcom/nostra13/dcloudimageloader/core/ImageLoaderEngine;Lcom/nostra13/dcloudimageloader/core/assist/LoadedFrom;)V

    .line 146
    iget-boolean v1, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->writeLogs:Z

    invoke-virtual {v0, v1}, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->setLoggingEnabled(Z)V

    .line 147
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    invoke-virtual {v1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->isSyncLoading()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 148
    invoke-virtual {v0}, Lcom/nostra13/dcloudimageloader/core/DisplayBitmapTask;->run()V

    goto :goto_2

    .line 150
    :cond_a
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 151
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 152
    throw v1

    :cond_b
    :goto_2
    return-void
.end method
