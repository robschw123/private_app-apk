.class public final Ldc/squareup/okhttp3/internal/cache/CacheInterceptor;
.super Ljava/lang/Object;

# interfaces
.implements Ldc/squareup/okhttp3/Interceptor;


# instance fields
.field final cache:Ldc/squareup/okhttp3/internal/cache/InternalCache;


# direct methods
.method public constructor <init>(Ldc/squareup/okhttp3/internal/cache/InternalCache;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor;->cache:Ldc/squareup/okhttp3/internal/cache/InternalCache;

    return-void
.end method

.method private cacheWritingResponse(Ldc/squareup/okhttp3/internal/cache/CacheRequest;Ldc/squareup/okhttp3/Response;)Ldc/squareup/okhttp3/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p2

    .line 1
    :cond_0
    invoke-interface {p1}, Ldc/squareup/okhttp3/internal/cache/CacheRequest;->body()Ldc/squareup/okio/Sink;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p2

    .line 4
    :cond_1
    invoke-virtual {p2}, Ldc/squareup/okhttp3/Response;->body()Ldc/squareup/okhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Ldc/squareup/okhttp3/ResponseBody;->source()Ldc/squareup/okio/BufferedSource;

    move-result-object v1

    .line 5
    invoke-static {v0}, Ldc/squareup/okio/Okio;->buffer(Ldc/squareup/okio/Sink;)Ldc/squareup/okio/BufferedSink;

    move-result-object v0

    .line 7
    new-instance v2, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor$1;

    invoke-direct {v2, p0, v1, p1, v0}, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor$1;-><init>(Ldc/squareup/okhttp3/internal/cache/CacheInterceptor;Ldc/squareup/okio/BufferedSource;Ldc/squareup/okhttp3/internal/cache/CacheRequest;Ldc/squareup/okio/BufferedSink;)V

    const-string p1, "Content-Type"

    .line 49
    invoke-virtual {p2, p1}, Ldc/squareup/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-virtual {p2}, Ldc/squareup/okhttp3/Response;->body()Ldc/squareup/okhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    .line 51
    invoke-virtual {p2}, Ldc/squareup/okhttp3/Response;->newBuilder()Ldc/squareup/okhttp3/Response$Builder;

    move-result-object p2

    new-instance v3, Ldc/squareup/okhttp3/internal/http/RealResponseBody;

    .line 52
    invoke-static {v2}, Ldc/squareup/okio/Okio;->buffer(Ldc/squareup/okio/Source;)Ldc/squareup/okio/BufferedSource;

    move-result-object v2

    invoke-direct {v3, p1, v0, v1, v2}, Ldc/squareup/okhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLdc/squareup/okio/BufferedSource;)V

    invoke-virtual {p2, v3}, Ldc/squareup/okhttp3/Response$Builder;->body(Ldc/squareup/okhttp3/ResponseBody;)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response$Builder;->build()Ldc/squareup/okhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method private static combine(Ldc/squareup/okhttp3/Headers;Ldc/squareup/okhttp3/Headers;)Ldc/squareup/okhttp3/Headers;
    .locals 7

    .line 1
    new-instance v0, Ldc/squareup/okhttp3/Headers$Builder;

    invoke-direct {v0}, Ldc/squareup/okhttp3/Headers$Builder;-><init>()V

    .line 3
    invoke-virtual {p0}, Ldc/squareup/okhttp3/Headers;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 4
    invoke-virtual {p0, v3}, Ldc/squareup/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {p0, v3}, Ldc/squareup/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Warning"

    .line 6
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    invoke-static {v4}, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor;->isContentSpecificHeader(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v4}, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor;->isEndToEnd(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 10
    invoke-virtual {p1, v4}, Ldc/squareup/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 11
    :cond_1
    sget-object v6, Ldc/squareup/okhttp3/internal/Internal;->instance:Ldc/squareup/okhttp3/internal/Internal;

    invoke-virtual {v6, v0, v4, v5}, Ldc/squareup/okhttp3/internal/Internal;->addLenient(Ldc/squareup/okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Headers;->size()I

    move-result p0

    :goto_2
    if-ge v2, p0, :cond_5

    .line 16
    invoke-virtual {p1, v2}, Ldc/squareup/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {v1}, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor;->isContentSpecificHeader(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v1}, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor;->isEndToEnd(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 18
    sget-object v3, Ldc/squareup/okhttp3/internal/Internal;->instance:Ldc/squareup/okhttp3/internal/Internal;

    invoke-virtual {p1, v2}, Ldc/squareup/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Ldc/squareup/okhttp3/internal/Internal;->addLenient(Ldc/squareup/okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 22
    :cond_5
    invoke-virtual {v0}, Ldc/squareup/okhttp3/Headers$Builder;->build()Ldc/squareup/okhttp3/Headers;

    move-result-object p0

    return-object p0
.end method

.method static isContentSpecificHeader(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Content-Length"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Content-Encoding"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Content-Type"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static isEndToEnd(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Connection"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static stripBody(Ldc/squareup/okhttp3/Response;)Ldc/squareup/okhttp3/Response;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ldc/squareup/okhttp3/Response;->body()Ldc/squareup/okhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ldc/squareup/okhttp3/Response;->newBuilder()Ldc/squareup/okhttp3/Response$Builder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldc/squareup/okhttp3/Response$Builder;->body(Ldc/squareup/okhttp3/ResponseBody;)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object p0

    invoke-virtual {p0}, Ldc/squareup/okhttp3/Response$Builder;->build()Ldc/squareup/okhttp3/Response;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public intercept(Ldc/squareup/okhttp3/Interceptor$Chain;)Ldc/squareup/okhttp3/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor;->cache:Ldc/squareup/okhttp3/internal/cache/InternalCache;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Ldc/squareup/okhttp3/Interceptor$Chain;->request()Ldc/squareup/okhttp3/Request;

    move-result-object v1

    invoke-interface {v0, v1}, Ldc/squareup/okhttp3/internal/cache/InternalCache;->get(Ldc/squareup/okhttp3/Request;)Ldc/squareup/okhttp3/Response;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 7
    new-instance v3, Ldc/squareup/okhttp3/internal/cache/CacheStrategy$Factory;

    invoke-interface {p1}, Ldc/squareup/okhttp3/Interceptor$Chain;->request()Ldc/squareup/okhttp3/Request;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4, v0}, Ldc/squareup/okhttp3/internal/cache/CacheStrategy$Factory;-><init>(JLdc/squareup/okhttp3/Request;Ldc/squareup/okhttp3/Response;)V

    invoke-virtual {v3}, Ldc/squareup/okhttp3/internal/cache/CacheStrategy$Factory;->get()Ldc/squareup/okhttp3/internal/cache/CacheStrategy;

    move-result-object v1

    .line 8
    iget-object v2, v1, Ldc/squareup/okhttp3/internal/cache/CacheStrategy;->networkRequest:Ldc/squareup/okhttp3/Request;

    .line 9
    iget-object v3, v1, Ldc/squareup/okhttp3/internal/cache/CacheStrategy;->cacheResponse:Ldc/squareup/okhttp3/Response;

    .line 11
    iget-object v4, p0, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor;->cache:Ldc/squareup/okhttp3/internal/cache/InternalCache;

    if-eqz v4, :cond_1

    .line 12
    invoke-interface {v4, v1}, Ldc/squareup/okhttp3/internal/cache/InternalCache;->trackResponse(Ldc/squareup/okhttp3/internal/cache/CacheStrategy;)V

    :cond_1
    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    .line 16
    invoke-virtual {v0}, Ldc/squareup/okhttp3/Response;->body()Ldc/squareup/okhttp3/ResponseBody;

    move-result-object v1

    invoke-static {v1}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_2
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    .line 21
    new-instance v0, Ldc/squareup/okhttp3/Response$Builder;

    invoke-direct {v0}, Ldc/squareup/okhttp3/Response$Builder;-><init>()V

    .line 22
    invoke-interface {p1}, Ldc/squareup/okhttp3/Interceptor$Chain;->request()Ldc/squareup/okhttp3/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Ldc/squareup/okhttp3/Response$Builder;->request(Ldc/squareup/okhttp3/Request;)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object p1

    sget-object v0, Ldc/squareup/okhttp3/Protocol;->HTTP_1_1:Ldc/squareup/okhttp3/Protocol;

    .line 23
    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/Response$Builder;->protocol(Ldc/squareup/okhttp3/Protocol;)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object p1

    const/16 v0, 0x1f8

    .line 24
    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/Response$Builder;->code(I)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object p1

    const-string v0, "Unsatisfiable Request (only-if-cached)"

    .line 25
    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/Response$Builder;->message(Ljava/lang/String;)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object p1

    sget-object v0, Ldc/squareup/okhttp3/internal/Util;->EMPTY_RESPONSE:Ldc/squareup/okhttp3/ResponseBody;

    .line 26
    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/Response$Builder;->body(Ldc/squareup/okhttp3/ResponseBody;)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object p1

    const-wide/16 v0, -0x1

    .line 27
    invoke-virtual {p1, v0, v1}, Ldc/squareup/okhttp3/Response$Builder;->sentRequestAtMillis(J)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object p1

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ldc/squareup/okhttp3/Response$Builder;->receivedResponseAtMillis(J)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response$Builder;->build()Ldc/squareup/okhttp3/Response;

    move-result-object p1

    return-object p1

    :cond_3
    if-nez v2, :cond_4

    .line 34
    invoke-virtual {v3}, Ldc/squareup/okhttp3/Response;->newBuilder()Ldc/squareup/okhttp3/Response$Builder;

    move-result-object p1

    .line 35
    invoke-static {v3}, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor;->stripBody(Ldc/squareup/okhttp3/Response;)Ldc/squareup/okhttp3/Response;

    move-result-object v0

    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/Response$Builder;->cacheResponse(Ldc/squareup/okhttp3/Response;)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response$Builder;->build()Ldc/squareup/okhttp3/Response;

    move-result-object p1

    return-object p1

    .line 41
    :cond_4
    :try_start_0
    invoke-interface {p1, v2}, Ldc/squareup/okhttp3/Interceptor$Chain;->proceed(Ldc/squareup/okhttp3/Request;)Ldc/squareup/okhttp3/Response;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_5

    if-eqz v0, :cond_5

    .line 45
    invoke-virtual {v0}, Ldc/squareup/okhttp3/Response;->body()Ldc/squareup/okhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_5
    if-eqz v3, :cond_7

    .line 51
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_6

    .line 52
    invoke-virtual {v3}, Ldc/squareup/okhttp3/Response;->newBuilder()Ldc/squareup/okhttp3/Response$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v3}, Ldc/squareup/okhttp3/Response;->headers()Ldc/squareup/okhttp3/Headers;

    move-result-object v1

    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->headers()Ldc/squareup/okhttp3/Headers;

    move-result-object v2

    invoke-static {v1, v2}, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor;->combine(Ldc/squareup/okhttp3/Headers;Ldc/squareup/okhttp3/Headers;)Ldc/squareup/okhttp3/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldc/squareup/okhttp3/Response$Builder;->headers(Ldc/squareup/okhttp3/Headers;)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ldc/squareup/okhttp3/Response$Builder;->sentRequestAtMillis(J)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ldc/squareup/okhttp3/Response$Builder;->receivedResponseAtMillis(J)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object v0

    .line 56
    invoke-static {v3}, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor;->stripBody(Ldc/squareup/okhttp3/Response;)Ldc/squareup/okhttp3/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldc/squareup/okhttp3/Response$Builder;->cacheResponse(Ldc/squareup/okhttp3/Response;)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object v0

    .line 57
    invoke-static {p1}, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor;->stripBody(Ldc/squareup/okhttp3/Response;)Ldc/squareup/okhttp3/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldc/squareup/okhttp3/Response$Builder;->networkResponse(Ldc/squareup/okhttp3/Response;)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ldc/squareup/okhttp3/Response$Builder;->build()Ldc/squareup/okhttp3/Response;

    move-result-object v0

    .line 59
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->body()Ldc/squareup/okhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Ldc/squareup/okhttp3/ResponseBody;->close()V

    .line 63
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor;->cache:Ldc/squareup/okhttp3/internal/cache/InternalCache;

    invoke-interface {p1}, Ldc/squareup/okhttp3/internal/cache/InternalCache;->trackConditionalCacheHit()V

    .line 64
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor;->cache:Ldc/squareup/okhttp3/internal/cache/InternalCache;

    invoke-interface {p1, v3, v0}, Ldc/squareup/okhttp3/internal/cache/InternalCache;->update(Ldc/squareup/okhttp3/Response;Ldc/squareup/okhttp3/Response;)V

    return-object v0

    .line 67
    :cond_6
    invoke-virtual {v3}, Ldc/squareup/okhttp3/Response;->body()Ldc/squareup/okhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 71
    :cond_7
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->newBuilder()Ldc/squareup/okhttp3/Response$Builder;

    move-result-object v0

    .line 72
    invoke-static {v3}, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor;->stripBody(Ldc/squareup/okhttp3/Response;)Ldc/squareup/okhttp3/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldc/squareup/okhttp3/Response$Builder;->cacheResponse(Ldc/squareup/okhttp3/Response;)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object v0

    .line 73
    invoke-static {p1}, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor;->stripBody(Ldc/squareup/okhttp3/Response;)Ldc/squareup/okhttp3/Response;

    move-result-object p1

    invoke-virtual {v0, p1}, Ldc/squareup/okhttp3/Response$Builder;->networkResponse(Ldc/squareup/okhttp3/Response;)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response$Builder;->build()Ldc/squareup/okhttp3/Response;

    move-result-object p1

    .line 76
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor;->cache:Ldc/squareup/okhttp3/internal/cache/InternalCache;

    if-eqz v0, :cond_9

    .line 77
    invoke-static {p1}, Ldc/squareup/okhttp3/internal/http/HttpHeaders;->hasBody(Ldc/squareup/okhttp3/Response;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1, v2}, Ldc/squareup/okhttp3/internal/cache/CacheStrategy;->isCacheable(Ldc/squareup/okhttp3/Response;Ldc/squareup/okhttp3/Request;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 79
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor;->cache:Ldc/squareup/okhttp3/internal/cache/InternalCache;

    invoke-interface {v0, p1}, Ldc/squareup/okhttp3/internal/cache/InternalCache;->put(Ldc/squareup/okhttp3/Response;)Ldc/squareup/okhttp3/internal/cache/CacheRequest;

    move-result-object v0

    .line 80
    invoke-direct {p0, v0, p1}, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor;->cacheWritingResponse(Ldc/squareup/okhttp3/internal/cache/CacheRequest;Ldc/squareup/okhttp3/Response;)Ldc/squareup/okhttp3/Response;

    move-result-object p1

    return-object p1

    .line 83
    :cond_8
    invoke-virtual {v2}, Ldc/squareup/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldc/squareup/okhttp3/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 85
    :try_start_1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/CacheInterceptor;->cache:Ldc/squareup/okhttp3/internal/cache/InternalCache;

    invoke-interface {v0, v2}, Ldc/squareup/okhttp3/internal/cache/InternalCache;->remove(Ldc/squareup/okhttp3/Request;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_9
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_a

    .line 86
    invoke-virtual {v0}, Ldc/squareup/okhttp3/Response;->body()Ldc/squareup/okhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 88
    :cond_a
    throw p1
.end method
