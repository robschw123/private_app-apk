.class Ldc/squareup/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;
.super Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnknownLengthSource"
.end annotation


# instance fields
.field private inputExhausted:Z

.field final synthetic this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/internal/http1/Http1Codec;)V
    .locals 1

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;->this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;-><init>(Ldc/squareup/okhttp3/internal/http1/Http1Codec;Ldc/squareup/okhttp3/internal/http1/Http1Codec$1;)V

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
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;->inputExhausted:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->endOfInput(ZLjava/io/IOException;)V

    :cond_1
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->closed:Z

    return-void
.end method

.method public read(Ldc/squareup/okio/Buffer;J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->closed:Z

    if-nez v0, :cond_2

    .line 2
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;->inputExhausted:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    return-wide v1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->read(Ldc/squareup/okio/Buffer;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_1

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;->inputExhausted:Z

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p0, p1, p2}, Ldc/squareup/okhttp3/internal/http1/Http1Codec$AbstractSource;->endOfInput(ZLjava/io/IOException;)V

    return-wide v1

    :cond_1
    return-wide p1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
