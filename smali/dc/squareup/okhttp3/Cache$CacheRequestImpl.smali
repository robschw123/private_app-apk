.class final Ldc/squareup/okhttp3/Cache$CacheRequestImpl;
.super Ljava/lang/Object;

# interfaces
.implements Ldc/squareup/okhttp3/internal/cache/CacheRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CacheRequestImpl"
.end annotation


# instance fields
.field private body:Ldc/squareup/okio/Sink;

.field private cacheOut:Ldc/squareup/okio/Sink;

.field done:Z

.field private final editor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

.field final synthetic this$0:Ldc/squareup/okhttp3/Cache;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/Cache;Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 2

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/Cache$CacheRequestImpl;->this$0:Ldc/squareup/okhttp3/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ldc/squareup/okhttp3/Cache$CacheRequestImpl;->editor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p2, v0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Ldc/squareup/okio/Sink;

    move-result-object v0

    iput-object v0, p0, Ldc/squareup/okhttp3/Cache$CacheRequestImpl;->cacheOut:Ldc/squareup/okio/Sink;

    .line 4
    new-instance v1, Ldc/squareup/okhttp3/Cache$CacheRequestImpl$1;

    invoke-direct {v1, p0, v0, p1, p2}, Ldc/squareup/okhttp3/Cache$CacheRequestImpl$1;-><init>(Ldc/squareup/okhttp3/Cache$CacheRequestImpl;Ldc/squareup/okio/Sink;Ldc/squareup/okhttp3/Cache;Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;)V

    iput-object v1, p0, Ldc/squareup/okhttp3/Cache$CacheRequestImpl;->body:Ldc/squareup/okio/Sink;

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 4

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache$CacheRequestImpl;->this$0:Ldc/squareup/okhttp3/Cache;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Ldc/squareup/okhttp3/Cache$CacheRequestImpl;->done:Z

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Ldc/squareup/okhttp3/Cache$CacheRequestImpl;->done:Z

    .line 6
    iget-object v2, p0, Ldc/squareup/okhttp3/Cache$CacheRequestImpl;->this$0:Ldc/squareup/okhttp3/Cache;

    iget v3, v2, Ldc/squareup/okhttp3/Cache;->writeAbortCount:I

    add-int/2addr v3, v1

    iput v3, v2, Ldc/squareup/okhttp3/Cache;->writeAbortCount:I

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache$CacheRequestImpl;->cacheOut:Ldc/squareup/okio/Sink;

    invoke-static {v0}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 10
    :try_start_1
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache$CacheRequestImpl;->editor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v1

    .line 11
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public body()Ldc/squareup/okio/Sink;
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache$CacheRequestImpl;->body:Ldc/squareup/okio/Sink;

    return-object v0
.end method
