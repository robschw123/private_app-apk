.class Ldc/squareup/okhttp3/internal/cache/CacheInterceptor$1;
.super Ljava/lang/Object;

# interfaces
.implements Ldc/squareup/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldc/squareup/okhttp3/internal/cache/CacheInterceptor;->cacheWritingResponse(Ldc/squareup/okhttp3/internal/cache/CacheRequest;Ldc/squareup/okhttp3/Response;)Ldc/squareup/okhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cacheRequestClosed:Z

.field final synthetic this$0:Ldc/squareup/okhttp3/internal/cache/CacheInterceptor;

.field final synthetic val$cacheBody:Ldc/squareup/okio/BufferedSink;

.field final synthetic val$cacheRequest:Ldc/squareup/okhttp3/internal/cache/CacheRequest;

.field final synthetic val$source:Ldc/squareup/okio/BufferedSource;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/internal/cache/CacheInterceptor;Ldc/squareup/okio/BufferedSource;Ldc/squareup/okhttp3/internal/cache/CacheRequest;Ldc/squareup/okio/BufferedSink;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor$1;->this$0:Ldc/squareup/okhttp3/internal/cache/CacheInterceptor;

    iput-object p2, p0, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor$1;->val$source:Ldc/squareup/okio/BufferedSource;

    iput-object p3, p0, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheRequest:Ldc/squareup/okhttp3/internal/cache/CacheRequest;

    iput-object p4, p0, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Ldc/squareup/okio/BufferedSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v1, 0x64

    .line 2
    invoke-static {p0, v1, v0}, Ldc/squareup/okhttp3/internal/Util;->discard(Ldc/squareup/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    .line 4
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheRequest:Ldc/squareup/okhttp3/internal/cache/CacheRequest;

    invoke-interface {v0}, Ldc/squareup/okhttp3/internal/cache/CacheRequest;->abort()V

    .line 6
    :cond_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor$1;->val$source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v0}, Ldc/squareup/okio/Source;->close()V

    return-void
.end method

.method public read(Ldc/squareup/okio/Buffer;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor$1;->val$source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v1, p1, p2, p3}, Ldc/squareup/okio/Source;->read(Ldc/squareup/okio/Buffer;J)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    if-nez v3, :cond_1

    .line 11
    iget-boolean p1, p0, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez p1, :cond_0

    .line 12
    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    .line 13
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Ldc/squareup/okio/BufferedSink;

    invoke-interface {p1}, Ldc/squareup/okio/Sink;->close()V

    :cond_0
    return-wide v1

    .line 18
    :cond_1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Ldc/squareup/okio/BufferedSink;

    invoke-interface {v0}, Ldc/squareup/okio/BufferedSink;->buffer()Ldc/squareup/okio/Buffer;

    move-result-object v3

    invoke-virtual {p1}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v0

    sub-long v4, v0, p2

    move-object v2, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Ldc/squareup/okio/Buffer;->copyTo(Ldc/squareup/okio/Buffer;JJ)Ldc/squareup/okio/Buffer;

    .line 19
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Ldc/squareup/okio/BufferedSink;

    invoke-interface {p1}, Ldc/squareup/okio/BufferedSink;->emitCompleteSegments()Ldc/squareup/okio/BufferedSink;

    return-wide p2

    :catch_0
    move-exception p1

    .line 20
    iget-boolean p2, p0, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez p2, :cond_2

    .line 21
    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    .line 22
    iget-object p2, p0, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheRequest:Ldc/squareup/okhttp3/internal/cache/CacheRequest;

    invoke-interface {p2}, Ldc/squareup/okhttp3/internal/cache/CacheRequest;->abort()V

    .line 24
    :cond_2
    throw p1
.end method

.method public timeout()Ldc/squareup/okio/Timeout;
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor$1;->val$source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v0}, Ldc/squareup/okio/Source;->timeout()Ldc/squareup/okio/Timeout;

    move-result-object v0

    return-object v0
.end method
