.class Ldc/squareup/okhttp3/internal/connection/RealConnection$1;
.super Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Streams;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldc/squareup/okhttp3/internal/connection/RealConnection;->newWebSocketStreams(Ldc/squareup/okhttp3/internal/connection/StreamAllocation;)Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldc/squareup/okhttp3/internal/connection/RealConnection;

.field final synthetic val$streamAllocation:Ldc/squareup/okhttp3/internal/connection/StreamAllocation;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/internal/connection/RealConnection;ZLdc/squareup/okio/BufferedSource;Ldc/squareup/okio/BufferedSink;Ldc/squareup/okhttp3/internal/connection/StreamAllocation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection$1;->this$0:Ldc/squareup/okhttp3/internal/connection/RealConnection;

    iput-object p5, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection$1;->val$streamAllocation:Ldc/squareup/okhttp3/internal/connection/StreamAllocation;

    invoke-direct {p0, p2, p3, p4}, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Streams;-><init>(ZLdc/squareup/okio/BufferedSource;Ldc/squareup/okio/BufferedSink;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection$1;->val$streamAllocation:Ldc/squareup/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/connection/StreamAllocation;->codec()Ldc/squareup/okhttp3/internal/http/HttpCodec;

    move-result-object v2

    const/4 v1, 0x1

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Ldc/squareup/okhttp3/internal/connection/StreamAllocation;->streamFinished(ZLdc/squareup/okhttp3/internal/http/HttpCodec;JLjava/io/IOException;)V

    return-void
.end method
