.class public final Ldc/squareup/okhttp3/internal/connection/ConnectionSpecSelector;
.super Ljava/lang/Object;


# instance fields
.field private final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field private isFallback:Z

.field private isFallbackPossible:Z

.field private nextModeIndex:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/ConnectionSpec;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ldc/squareup/okhttp3/internal/connection/ConnectionSpecSelector;->nextModeIndex:I

    .line 3
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    return-void
.end method

.method private isFallbackPossible(Ljavax/net/ssl/SSLSocket;)Z
    .locals 2

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/internal/connection/ConnectionSpecSelector;->nextModeIndex:I

    :goto_0
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldc/squareup/okhttp3/ConnectionSpec;

    invoke-virtual {v1, p1}, Ldc/squareup/okhttp3/ConnectionSpec;->isCompatible(Ljavax/net/ssl/SSLSocket;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Ldc/squareup/okhttp3/ConnectionSpec;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/internal/connection/ConnectionSpecSelector;->nextModeIndex:I

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldc/squareup/okhttp3/ConnectionSpec;

    .line 3
    invoke-virtual {v2, p1}, Ldc/squareup/okhttp3/ConnectionSpec;->isCompatible(Ljavax/net/ssl/SSLSocket;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Ldc/squareup/okhttp3/internal/connection/ConnectionSpecSelector;->nextModeIndex:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 20
    invoke-direct {p0, p1}, Ldc/squareup/okhttp3/internal/connection/ConnectionSpecSelector;->isFallbackPossible(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/connection/ConnectionSpecSelector;->isFallbackPossible:Z

    .line 22
    sget-object v0, Ldc/squareup/okhttp3/internal/Internal;->instance:Ldc/squareup/okhttp3/internal/Internal;

    iget-boolean v1, p0, Ldc/squareup/okhttp3/internal/connection/ConnectionSpecSelector;->isFallback:Z

    invoke-virtual {v0, v2, p1, v1}, Ldc/squareup/okhttp3/internal/Internal;->apply(Ldc/squareup/okhttp3/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V

    return-object v2

    .line 23
    :cond_2
    new-instance v0, Ljava/net/UnknownServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find acceptable protocols. isFallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ldc/squareup/okhttp3/internal/connection/ConnectionSpecSelector;->isFallback:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", modes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", supported protocols="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public connectionFailed(Ljava/io/IOException;)Z
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/connection/ConnectionSpecSelector;->isFallback:Z

    .line 3
    iget-boolean v1, p0, Ldc/squareup/okhttp3/internal/connection/ConnectionSpecSelector;->isFallbackPossible:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 8
    :cond_0
    instance-of v1, p1, Ljava/net/ProtocolException;

    if-eqz v1, :cond_1

    return v2

    .line 15
    :cond_1
    instance-of v1, p1, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_2

    return v2

    .line 21
    :cond_2
    instance-of v1, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_3

    .line 24
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/security/cert/CertificateException;

    if-eqz v3, :cond_3

    return v2

    .line 28
    :cond_3
    instance-of v3, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v3, :cond_4

    return v2

    :cond_4
    if-nez v1, :cond_6

    .line 35
    instance-of v1, p1, Ljavax/net/ssl/SSLProtocolException;

    if-nez v1, :cond_6

    instance-of p1, p1, Ljavax/net/ssl/SSLException;

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_0
    return v0
.end method
