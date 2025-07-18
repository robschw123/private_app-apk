.class public final Ldc/squareup/okhttp3/internal/http2/Http2Stream;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;,
        Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;,
        Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field bytesLeftInWriteWindow:J

.field final connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

.field errorCode:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

.field private hasResponseHeaders:Z

.field private headersListener:Ldc/squareup/okhttp3/internal/http2/Header$Listener;

.field private final headersQueue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ldc/squareup/okhttp3/Headers;",
            ">;"
        }
    .end annotation
.end field

.field final id:I

.field final readTimeout:Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;

.field final sink:Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;

.field private final source:Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;

.field unacknowledgedBytesRead:J

.field final writeTimeout:Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(ILdc/squareup/okhttp3/internal/http2/Http2Connection;ZZLdc/squareup/okhttp3/Headers;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    .line 19
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    .line 27
    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-direct {v1, p0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;-><init>(Ldc/squareup/okhttp3/internal/http2/Http2Stream;)V

    iput-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->readTimeout:Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 28
    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-direct {v1, p0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;-><init>(Ldc/squareup/okhttp3/internal/http2/Http2Stream;)V

    iput-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->writeTimeout:Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->errorCode:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    const-string v1, "connection == null"

    .line 57
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    iput p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->id:I

    .line 42
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    .line 43
    iget-object p1, p2, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->peerSettings:Ldc/squareup/okhttp3/internal/http2/Settings;

    .line 44
    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result p1

    int-to-long v1, p1

    iput-wide v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    .line 45
    new-instance p1, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;

    iget-object p2, p2, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Ldc/squareup/okhttp3/internal/http2/Settings;

    invoke-virtual {p2}, Ldc/squareup/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result p2

    int-to-long v1, p2

    invoke-direct {p1, p0, v1, v2}, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;-><init>(Ldc/squareup/okhttp3/internal/http2/Http2Stream;J)V

    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->source:Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;

    .line 46
    new-instance p2, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;

    invoke-direct {p2, p0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;-><init>(Ldc/squareup/okhttp3/internal/http2/Http2Stream;)V

    iput-object p2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->sink:Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;

    .line 47
    iput-boolean p4, p1, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    .line 48
    iput-boolean p3, p2, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-eqz p5, :cond_0

    .line 50
    invoke-interface {v0, p5}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p5, :cond_1

    goto :goto_0

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "locally-initiated streams shouldn\'t have headers yet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz p5, :cond_3

    goto :goto_1

    .line 56
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "remotely-initiated streams should have headers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic access$000(Ldc/squareup/okhttp3/internal/http2/Http2Stream;)Ljava/util/Deque;
    .locals 0

    .line 1
    iget-object p0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    return-object p0
.end method

.method static synthetic access$100(Ldc/squareup/okhttp3/internal/http2/Http2Stream;)Ldc/squareup/okhttp3/internal/http2/Header$Listener;
    .locals 0

    .line 1
    iget-object p0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->headersListener:Ldc/squareup/okhttp3/internal/http2/Header$Listener;

    return-object p0
.end method

.method private closeInternal(Ldc/squareup/okhttp3/internal/http2/ErrorCode;)Z
    .locals 2

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->errorCode:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    monitor-exit p0

    return v1

    .line 6
    :cond_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->source:Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->sink:Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-eqz v0, :cond_1

    .line 7
    monitor-exit p0

    return v1

    .line 9
    :cond_1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->errorCode:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->removeStream(I)Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method cancelStreamIfNecessary()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->source:Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v1, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-nez v1, :cond_1

    iget-boolean v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->sink:Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v1, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result v1

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 13
    sget-object v0, Ldc/squareup/okhttp3/internal/http2/ErrorCode;->CANCEL:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->close(Ldc/squareup/okhttp3/internal/http2/ErrorCode;)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    .line 15
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->removeStream(I)Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 16
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method checkOutNotClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->sink:Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v1, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-nez v1, :cond_2

    .line 3
    iget-boolean v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->errorCode:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v0, Ldc/squareup/okhttp3/internal/http2/StreamResetException;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->errorCode:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    invoke-direct {v0, v1}, Ldc/squareup/okhttp3/internal/http2/StreamResetException;-><init>(Ldc/squareup/okhttp3/internal/http2/ErrorCode;)V

    throw v0

    .line 7
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close(Ldc/squareup/okhttp3/internal/http2/ErrorCode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->closeInternal(Ldc/squareup/okhttp3/internal/http2/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1, p1}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writeSynReset(ILdc/squareup/okhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method public closeLater(Ldc/squareup/okhttp3/internal/http2/ErrorCode;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->closeInternal(Ldc/squareup/okhttp3/internal/http2/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1, p1}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILdc/squareup/okhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method public getConnection()Ldc/squareup/okhttp3/internal/http2/Http2Connection;
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    return-object v0
.end method

.method public declared-synchronized getErrorCode()Ldc/squareup/okhttp3/internal/http2/ErrorCode;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->errorCode:Ldc/squareup/okhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->id:I

    return v0
.end method

.method public getSink()Ldc/squareup/okio/Sink;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->sink:Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getSource()Ldc/squareup/okio/Source;
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->source:Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;

    return-object v0
.end method

.method public isLocallyInitiated()Z
    .locals 4

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->id:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-boolean v3, v3, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->client:Z

    if-ne v3, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public declared-synchronized isOpen()Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->errorCode:Ldc/squareup/okhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->source:Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v2, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-nez v2, :cond_1

    iget-boolean v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->sink:Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v2, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v2, :cond_2

    iget-boolean v0, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    monitor-exit p0

    return v1

    :cond_3
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public readTimeout()Ldc/squareup/okio/Timeout;
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->readTimeout:Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    return-object v0
.end method

.method receiveData(Ldc/squareup/okio/BufferedSource;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->source:Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->receive(Ldc/squareup/okio/BufferedSource;J)V

    return-void
.end method

.method receiveFin()V
    .locals 2

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->source:Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    .line 5
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result v0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->removeStream(I)Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method receiveHeaders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .line 3
    monitor-enter p0

    const/4 v0, 0x1

    .line 4
    :try_start_0
    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z

    .line 5
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-static {p1}, Ldc/squareup/okhttp3/internal/Util;->toHeaders(Ljava/util/List;)Ldc/squareup/okhttp3/Headers;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result p1

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 10
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->removeStream(I)Ldc/squareup/okhttp3/internal/http2/Http2Stream;

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized receiveRstStream(Ldc/squareup/okhttp3/internal/http2/ErrorCode;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->errorCode:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->errorCode:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setHeadersListener(Ldc/squareup/okhttp3/internal/http2/Header$Listener;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->headersListener:Ldc/squareup/okhttp3/internal/http2/Header$Listener;

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized takeHeaders()Ldc/squareup/okhttp3/Headers;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->readTimeout:Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Ldc/squareup/okio/AsyncTimeout;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :goto_0
    :try_start_1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->errorCode:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->waitForIo()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7
    :cond_0
    :try_start_2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->readTimeout:Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 9
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldc/squareup/okhttp3/Headers;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    .line 12
    :cond_1
    :try_start_3
    new-instance v0, Ldc/squareup/okhttp3/internal/http2/StreamResetException;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->errorCode:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    invoke-direct {v0, v1}, Ldc/squareup/okhttp3/internal/http2/StreamResetException;-><init>(Ldc/squareup/okhttp3/internal/http2/ErrorCode;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 13
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->readTimeout:Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v1}, Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 14
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method waitForIo()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 3
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 4
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

.method public writeHeaders(Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/internal/http2/Header;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "headers == null"

    .line 30
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    monitor-enter p0

    const/4 v0, 0x1

    .line 8
    :try_start_0
    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 10
    iget-object p2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->sink:Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;

    iput-boolean v0, p2, Ldc/squareup/okhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    const/4 p2, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v2, 0x0

    .line 14
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p2, :cond_2

    .line 19
    iget-object v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    monitor-enter v3

    .line 20
    :try_start_1
    iget-object p2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget-wide v4, p2, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    const-wide/16 v6, 0x0

    cmp-long p2, v4, v6

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 21
    :goto_1
    monitor-exit v3

    move p2, v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 25
    :cond_2
    :goto_2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    iget v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1, v2, p1}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->writeSynReply(IZLjava/util/List;)V

    if-eqz p2, :cond_3

    .line 28
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->flush()V

    :cond_3
    return-void

    :catchall_1
    move-exception p1

    .line 29
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public writeTimeout()Ldc/squareup/okio/Timeout;
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->writeTimeout:Ldc/squareup/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    return-object v0
.end method
