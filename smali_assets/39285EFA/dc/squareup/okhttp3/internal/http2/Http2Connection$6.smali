.class Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;
.super Ldc/squareup/okhttp3/internal/NamedRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldc/squareup/okhttp3/internal/http2/Http2Connection;->pushDataLater(ILdc/squareup/okio/BufferedSource;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

.field final synthetic val$buffer:Ldc/squareup/okio/Buffer;

.field final synthetic val$byteCount:I

.field final synthetic val$inFinished:Z

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Ldc/squareup/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILdc/squareup/okio/Buffer;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iput p4, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;->val$streamId:I

    iput-object p5, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;->val$buffer:Ldc/squareup/okio/Buffer;

    iput p6, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;->val$byteCount:I

    iput-boolean p7, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;->val$inFinished:Z

    invoke-direct {p0, p2, p3}, Ldc/squareup/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->pushObserver:Ldc/squareup/okhttp3/internal/http2/PushObserver;

    iget v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;->val$streamId:I

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;->val$buffer:Ldc/squareup/okio/Buffer;

    iget v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;->val$byteCount:I

    iget-boolean v4, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;->val$inFinished:Z

    invoke-interface {v0, v1, v2, v3, v4}, Ldc/squareup/okhttp3/internal/http2/PushObserver;->onData(ILdc/squareup/okio/BufferedSource;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writer:Ldc/squareup/okhttp3/internal/http2/Http2Writer;

    iget v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;->val$streamId:I

    sget-object v3, Ldc/squareup/okhttp3/internal/http2/ErrorCode;->CANCEL:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Http2Writer;->rstStream(ILdc/squareup/okhttp3/internal/http2/ErrorCode;)V

    :cond_0
    if-nez v0, :cond_1

    .line 3
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;->val$inFinished:Z

    if-eqz v0, :cond_2

    .line 4
    :cond_1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;->this$0:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    iget v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$6;->val$streamId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method
