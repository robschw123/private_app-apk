.class public abstract Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Streams;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Streams"
.end annotation


# instance fields
.field public final client:Z

.field public final sink:Ldc/squareup/okio/BufferedSink;

.field public final source:Ldc/squareup/okio/BufferedSource;


# direct methods
.method public constructor <init>(ZLdc/squareup/okio/BufferedSource;Ldc/squareup/okio/BufferedSink;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Streams;->client:Z

    .line 3
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Streams;->source:Ldc/squareup/okio/BufferedSource;

    .line 4
    iput-object p3, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Streams;->sink:Ldc/squareup/okio/BufferedSink;

    return-void
.end method
