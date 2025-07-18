.class public final Ldc/squareup/okhttp3/internal/connection/RealConnection;
.super Ldc/squareup/okhttp3/internal/http2/Http2Connection$Listener;

# interfaces
.implements Ldc/squareup/okhttp3/Connection;


# static fields
.field private static final MAX_TUNNEL_ATTEMPTS:I = 0x15

.field private static final NPE_THROW_WITH_NULL:Ljava/lang/String; = "throw with null exception"


# instance fields
.field public allocationLimit:I

.field public final allocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Ldc/squareup/okhttp3/internal/connection/StreamAllocation;",
            ">;>;"
        }
    .end annotation
.end field

.field private final connectionPool:Ldc/squareup/okhttp3/ConnectionPool;

.field private handshake:Ldc/squareup/okhttp3/Handshake;

.field private http2Connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

.field public idleAtNanos:J

.field public noNewStreams:Z

.field private protocol:Ldc/squareup/okhttp3/Protocol;

.field private rawSocket:Ljava/net/Socket;

.field private final route:Ldc/squareup/okhttp3/Route;

.field private sink:Ldc/squareup/okio/BufferedSink;

.field private socket:Ljava/net/Socket;

.field private source:Ldc/squareup/okio/BufferedSource;

.field public successCount:I


# direct methods
.method public constructor <init>(Ldc/squareup/okhttp3/ConnectionPool;Ldc/squareup/okhttp3/Route;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/http2/Http2Connection$Listener;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->allocationLimit:I

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    const-wide v0, 0x7fffffffffffffffL

    .line 8
    iput-wide v0, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->idleAtNanos:J

    .line 11
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->connectionPool:Ldc/squareup/okhttp3/ConnectionPool;

    .line 12
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    return-void
.end method

.method private connectSocket(IILdc/squareup/okhttp3/Call;Ldc/squareup/okhttp3/EventListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    invoke-virtual {v1}, Ldc/squareup/okhttp3/Route;->address()Ldc/squareup/okhttp3/Address;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1, v0}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ldc/squareup/okhttp3/Address;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    .line 8
    :goto_1
    iput-object v1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 10
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    invoke-virtual {v1}, Ldc/squareup/okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {p4, p3, v1, v0}, Ldc/squareup/okhttp3/EventListener;->connectStart(Ldc/squareup/okhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    .line 11
    iget-object p3, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-virtual {p3, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 13
    :try_start_0
    invoke-static {}, Ldc/squareup/okhttp3/internal/platform/Platform;->get()Ldc/squareup/okhttp3/internal/platform/Platform;

    move-result-object p2

    iget-object p3, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iget-object p4, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    invoke-virtual {p4}, Ldc/squareup/okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object p4

    invoke-virtual {p2, p3, p4, p1}, Ldc/squareup/okhttp3/internal/platform/Platform;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    .line 25
    :try_start_1
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {p1}, Ldc/squareup/okio/Okio;->source(Ljava/net/Socket;)Ldc/squareup/okio/Source;

    move-result-object p1

    invoke-static {p1}, Ldc/squareup/okio/Okio;->buffer(Ldc/squareup/okio/Source;)Ldc/squareup/okio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->source:Ldc/squareup/okio/BufferedSource;

    .line 26
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {p1}, Ldc/squareup/okio/Okio;->sink(Ljava/net/Socket;)Ldc/squareup/okio/Sink;

    move-result-object p1

    invoke-static {p1}, Ldc/squareup/okio/Okio;->buffer(Ldc/squareup/okio/Sink;)Ldc/squareup/okio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->sink:Ldc/squareup/okio/BufferedSink;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "throw with null exception"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    :goto_2
    return-void

    .line 29
    :cond_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 30
    new-instance p2, Ljava/net/ConnectException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to connect to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    invoke-virtual {p4}, Ldc/squareup/okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2, p1}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 32
    throw p2
.end method

.method private connectTls(Ldc/squareup/okhttp3/internal/connection/ConnectionSpecSelector;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Route;->address()Ldc/squareup/okhttp3/Address;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ldc/squareup/okhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    const/4 v2, 0x0

    .line 7
    :try_start_0
    iget-object v3, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 8
    invoke-virtual {v0}, Ldc/squareup/okhttp3/Address;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Ldc/squareup/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Address;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Ldc/squareup/okhttp3/HttpUrl;->port()I

    move-result v5

    const/4 v6, 0x1

    .line 9
    invoke-virtual {v1, v3, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    invoke-virtual {p1, v1}, Ldc/squareup/okhttp3/internal/connection/ConnectionSpecSelector;->configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Ldc/squareup/okhttp3/ConnectionSpec;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ldc/squareup/okhttp3/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 15
    invoke-static {}, Ldc/squareup/okhttp3/internal/platform/Platform;->get()Ldc/squareup/okhttp3/internal/platform/Platform;

    move-result-object v3

    .line 16
    invoke-virtual {v0}, Ldc/squareup/okhttp3/Address;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Ldc/squareup/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Address;->protocols()Ljava/util/List;

    move-result-object v5

    .line 17
    invoke-virtual {v3, v1, v4, v5}, Ldc/squareup/okhttp3/internal/platform/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 22
    :cond_0
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 24
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    .line 25
    invoke-static {v3}, Ldc/squareup/okhttp3/Handshake;->get(Ljavax/net/ssl/SSLSession;)Ldc/squareup/okhttp3/Handshake;

    move-result-object v4

    .line 28
    invoke-virtual {v0}, Ldc/squareup/okhttp3/Address;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Address;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v6}, Ldc/squareup/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 29
    invoke-virtual {v4}, Ldc/squareup/okhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object p1

    .line 30
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "Hostname "

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 31
    :try_start_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 32
    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ldc/squareup/okhttp3/Address;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified:\n    certificate: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-static {p1}, Ldc/squareup/okhttp3/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    DN: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    subjectAltNames: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-static {p1}, Ldc/squareup/okhttp3/internal/tls/OkHostnameVerifier;->allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 38
    :cond_1
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ldc/squareup/okhttp3/Address;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified (no certificates)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_2
    invoke-virtual {v0}, Ldc/squareup/okhttp3/Address;->certificatePinner()Ldc/squareup/okhttp3/CertificatePinner;

    move-result-object v3

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Address;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual {v4}, Ldc/squareup/okhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v5

    .line 46
    invoke-virtual {v3, v0, v5}, Ldc/squareup/okhttp3/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    .line 50
    invoke-virtual {p1}, Ldc/squareup/okhttp3/ConnectionSpec;->supportsTlsExtensions()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 51
    invoke-static {}, Ldc/squareup/okhttp3/internal/platform/Platform;->get()Ldc/squareup/okhttp3/internal/platform/Platform;

    move-result-object p1

    invoke-virtual {p1, v1}, Ldc/squareup/okhttp3/internal/platform/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v2

    .line 53
    :cond_3
    iput-object v1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 54
    invoke-static {v1}, Ldc/squareup/okio/Okio;->source(Ljava/net/Socket;)Ldc/squareup/okio/Source;

    move-result-object p1

    invoke-static {p1}, Ldc/squareup/okio/Okio;->buffer(Ldc/squareup/okio/Source;)Ldc/squareup/okio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->source:Ldc/squareup/okio/BufferedSource;

    .line 55
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {p1}, Ldc/squareup/okio/Okio;->sink(Ljava/net/Socket;)Ldc/squareup/okio/Sink;

    move-result-object p1

    invoke-static {p1}, Ldc/squareup/okio/Okio;->buffer(Ldc/squareup/okio/Sink;)Ldc/squareup/okio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->sink:Ldc/squareup/okio/BufferedSink;

    .line 56
    iput-object v4, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->handshake:Ldc/squareup/okhttp3/Handshake;

    if-eqz v2, :cond_4

    .line 58
    invoke-static {v2}, Ldc/squareup/okhttp3/Protocol;->get(Ljava/lang/String;)Ldc/squareup/okhttp3/Protocol;

    move-result-object p1

    goto :goto_0

    .line 59
    :cond_4
    sget-object p1, Ldc/squareup/okhttp3/Protocol;->HTTP_1_1:Ldc/squareup/okhttp3/Protocol;

    :goto_0
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->protocol:Ldc/squareup/okhttp3/Protocol;
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    invoke-static {}, Ldc/squareup/okhttp3/internal/platform/Platform;->get()Ldc/squareup/okhttp3/internal/platform/Platform;

    move-result-object p1

    invoke-virtual {p1, v1}, Ldc/squareup/okhttp3/internal/platform/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v2, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 67
    :goto_1
    :try_start_3
    invoke-static {p1}, Ldc/squareup/okhttp3/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 68
    :cond_5
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    if-eqz v2, :cond_6

    .line 71
    invoke-static {}, Ldc/squareup/okhttp3/internal/platform/Platform;->get()Ldc/squareup/okhttp3/internal/platform/Platform;

    move-result-object v0

    invoke-virtual {v0, v2}, Ldc/squareup/okhttp3/internal/platform/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 74
    :cond_6
    invoke-static {v2}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 76
    throw p1
.end method

.method private connectTunnel(IIILdc/squareup/okhttp3/Call;Ldc/squareup/okhttp3/EventListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/connection/RealConnection;->createTunnelRequest()Ldc/squareup/okhttp3/Request;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ldc/squareup/okhttp3/Request;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    .line 4
    invoke-direct {p0, p1, p2, p4, p5}, Ldc/squareup/okhttp3/internal/connection/RealConnection;->connectSocket(IILdc/squareup/okhttp3/Call;Ldc/squareup/okhttp3/EventListener;)V

    .line 5
    invoke-direct {p0, p2, p3, v0, v1}, Ldc/squareup/okhttp3/internal/connection/RealConnection;->createTunnel(IILdc/squareup/okhttp3/Request;Ldc/squareup/okhttp3/HttpUrl;)Ldc/squareup/okhttp3/Request;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    iget-object v3, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v3}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    const/4 v3, 0x0

    .line 12
    iput-object v3, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 13
    iput-object v3, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->sink:Ldc/squareup/okio/BufferedSink;

    .line 14
    iput-object v3, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->source:Ldc/squareup/okio/BufferedSource;

    .line 15
    iget-object v4, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    invoke-virtual {v4}, Ldc/squareup/okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    iget-object v5, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    invoke-virtual {v5}, Ldc/squareup/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v5

    invoke-virtual {p5, p4, v4, v5, v3}, Ldc/squareup/okhttp3/EventListener;->connectEnd(Ldc/squareup/okhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Ldc/squareup/okhttp3/Protocol;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private createTunnel(IILdc/squareup/okhttp3/Request;Ldc/squareup/okhttp3/HttpUrl;)Ldc/squareup/okhttp3/Request;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {p4, v1}, Ldc/squareup/okhttp3/internal/Util;->hostHeader(Ldc/squareup/okhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " HTTP/1.1"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 3
    :goto_0
    new-instance v0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->source:Ldc/squareup/okio/BufferedSource;

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->sink:Ldc/squareup/okio/BufferedSink;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Ldc/squareup/okhttp3/internal/http1/Http1Codec;-><init>(Ldc/squareup/okhttp3/OkHttpClient;Ldc/squareup/okhttp3/internal/connection/StreamAllocation;Ldc/squareup/okio/BufferedSource;Ldc/squareup/okio/BufferedSink;)V

    .line 4
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v1}, Ldc/squareup/okio/Source;->timeout()Ldc/squareup/okio/Timeout;

    move-result-object v1

    int-to-long v4, p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Ldc/squareup/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okio/Timeout;

    .line 5
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {v1}, Ldc/squareup/okio/Sink;->timeout()Ldc/squareup/okio/Timeout;

    move-result-object v1

    int-to-long v4, p2

    invoke-virtual {v1, v4, v5, v2}, Ldc/squareup/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okio/Timeout;

    .line 6
    invoke-virtual {p3}, Ldc/squareup/okhttp3/Request;->headers()Ldc/squareup/okhttp3/Headers;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->writeRequest(Ldc/squareup/okhttp3/Headers;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->finishRequest()V

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->readResponseHeaders(Z)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object v1

    .line 9
    invoke-virtual {v1, p3}, Ldc/squareup/okhttp3/Response$Builder;->request(Ldc/squareup/okhttp3/Request;)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object p3

    .line 10
    invoke-virtual {p3}, Ldc/squareup/okhttp3/Response$Builder;->build()Ldc/squareup/okhttp3/Response;

    move-result-object p3

    .line 13
    invoke-static {p3}, Ldc/squareup/okhttp3/internal/http/HttpHeaders;->contentLength(Ldc/squareup/okhttp3/Response;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    const-wide/16 v4, 0x0

    .line 17
    :cond_0
    invoke-virtual {v0, v4, v5}, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->newFixedLengthSource(J)Ldc/squareup/okio/Source;

    move-result-object v0

    const v1, 0x7fffffff

    .line 18
    invoke-static {v0, v1, v2}, Ldc/squareup/okhttp3/internal/Util;->skipAll(Ldc/squareup/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    .line 19
    invoke-interface {v0}, Ldc/squareup/okio/Source;->close()V

    .line 21
    invoke-virtual {p3}, Ldc/squareup/okhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x197

    if-ne v0, v1, :cond_3

    .line 33
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Route;->address()Ldc/squareup/okhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Address;->proxyAuthenticator()Ldc/squareup/okhttp3/Authenticator;

    move-result-object v0

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    invoke-interface {v0, v1, p3}, Ldc/squareup/okhttp3/Authenticator;->authenticate(Ldc/squareup/okhttp3/Route;Ldc/squareup/okhttp3/Response;)Ldc/squareup/okhttp3/Request;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "Connection"

    .line 36
    invoke-virtual {p3, v1}, Ldc/squareup/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "close"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-object v0

    :cond_1
    move-object p3, v0

    goto :goto_0

    .line 37
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to authenticate with proxy"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected response code for CONNECT: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p3}, Ldc/squareup/okhttp3/Response;->code()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_4
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {p1}, Ldc/squareup/okio/BufferedSource;->buffer()Ldc/squareup/okio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Ldc/squareup/okio/Buffer;->exhausted()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {p1}, Ldc/squareup/okio/BufferedSink;->buffer()Ldc/squareup/okio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Ldc/squareup/okio/Buffer;->exhausted()Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v3

    .line 48
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TLS tunnel buffered too many bytes!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private createTunnelRequest()Ldc/squareup/okhttp3/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ldc/squareup/okhttp3/Request$Builder;

    invoke-direct {v0}, Ldc/squareup/okhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    .line 2
    invoke-virtual {v1}, Ldc/squareup/okhttp3/Route;->address()Ldc/squareup/okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Ldc/squareup/okhttp3/Address;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldc/squareup/okhttp3/Request$Builder;->url(Ldc/squareup/okhttp3/HttpUrl;)Ldc/squareup/okhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "CONNECT"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Ldc/squareup/okhttp3/Request$Builder;->method(Ljava/lang/String;Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    .line 4
    invoke-virtual {v1}, Ldc/squareup/okhttp3/Route;->address()Ldc/squareup/okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Ldc/squareup/okhttp3/Address;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ldc/squareup/okhttp3/internal/Util;->hostHeader(Ldc/squareup/okhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Host"

    invoke-virtual {v0, v2, v1}, Ldc/squareup/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    .line 5
    invoke-virtual {v0, v1, v2}, Ldc/squareup/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    move-result-object v0

    .line 6
    invoke-static {}, Ldc/squareup/okhttp3/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Ldc/squareup/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ldc/squareup/okhttp3/Request$Builder;->build()Ldc/squareup/okhttp3/Request;

    move-result-object v0

    .line 9
    new-instance v1, Ldc/squareup/okhttp3/Response$Builder;

    invoke-direct {v1}, Ldc/squareup/okhttp3/Response$Builder;-><init>()V

    .line 10
    invoke-virtual {v1, v0}, Ldc/squareup/okhttp3/Response$Builder;->request(Ldc/squareup/okhttp3/Request;)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object v1

    sget-object v2, Ldc/squareup/okhttp3/Protocol;->HTTP_1_1:Ldc/squareup/okhttp3/Protocol;

    .line 11
    invoke-virtual {v1, v2}, Ldc/squareup/okhttp3/Response$Builder;->protocol(Ldc/squareup/okhttp3/Protocol;)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object v1

    const/16 v2, 0x197

    .line 12
    invoke-virtual {v1, v2}, Ldc/squareup/okhttp3/Response$Builder;->code(I)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object v1

    const-string v2, "Preemptive Authenticate"

    .line 13
    invoke-virtual {v1, v2}, Ldc/squareup/okhttp3/Response$Builder;->message(Ljava/lang/String;)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object v1

    sget-object v2, Ldc/squareup/okhttp3/internal/Util;->EMPTY_RESPONSE:Ldc/squareup/okhttp3/ResponseBody;

    .line 14
    invoke-virtual {v1, v2}, Ldc/squareup/okhttp3/Response$Builder;->body(Ldc/squareup/okhttp3/ResponseBody;)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object v1

    const-wide/16 v2, -0x1

    .line 15
    invoke-virtual {v1, v2, v3}, Ldc/squareup/okhttp3/Response$Builder;->sentRequestAtMillis(J)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object v1

    .line 16
    invoke-virtual {v1, v2, v3}, Ldc/squareup/okhttp3/Response$Builder;->receivedResponseAtMillis(J)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object v1

    const-string v2, "Proxy-Authenticate"

    const-string v3, "OkHttp-Preemptive"

    .line 17
    invoke-virtual {v1, v2, v3}, Ldc/squareup/okhttp3/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ldc/squareup/okhttp3/Response$Builder;->build()Ldc/squareup/okhttp3/Response;

    move-result-object v1

    .line 20
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    invoke-virtual {v2}, Ldc/squareup/okhttp3/Route;->address()Ldc/squareup/okhttp3/Address;

    move-result-object v2

    invoke-virtual {v2}, Ldc/squareup/okhttp3/Address;->proxyAuthenticator()Ldc/squareup/okhttp3/Authenticator;

    move-result-object v2

    iget-object v3, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    .line 21
    invoke-interface {v2, v3, v1}, Ldc/squareup/okhttp3/Authenticator;->authenticate(Ldc/squareup/okhttp3/Route;Ldc/squareup/okhttp3/Response;)Ldc/squareup/okhttp3/Request;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method private establishProtocol(Ldc/squareup/okhttp3/internal/connection/ConnectionSpecSelector;ILdc/squareup/okhttp3/Call;Ldc/squareup/okhttp3/EventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Route;->address()Ldc/squareup/okhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    invoke-virtual {p1}, Ldc/squareup/okhttp3/Route;->address()Ldc/squareup/okhttp3/Address;

    move-result-object p1

    invoke-virtual {p1}, Ldc/squareup/okhttp3/Address;->protocols()Ljava/util/List;

    move-result-object p1

    sget-object p3, Ldc/squareup/okhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Ldc/squareup/okhttp3/Protocol;

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object p1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 4
    iput-object p3, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->protocol:Ldc/squareup/okhttp3/Protocol;

    .line 5
    invoke-direct {p0, p2}, Ldc/squareup/okhttp3/internal/connection/RealConnection;->startHttp2(I)V

    return-void

    .line 9
    :cond_0
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object p1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 10
    sget-object p1, Ldc/squareup/okhttp3/Protocol;->HTTP_1_1:Ldc/squareup/okhttp3/Protocol;

    iput-object p1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->protocol:Ldc/squareup/okhttp3/Protocol;

    return-void

    .line 14
    :cond_1
    invoke-virtual {p4, p3}, Ldc/squareup/okhttp3/EventListener;->secureConnectStart(Ldc/squareup/okhttp3/Call;)V

    .line 15
    invoke-direct {p0, p1}, Ldc/squareup/okhttp3/internal/connection/RealConnection;->connectTls(Ldc/squareup/okhttp3/internal/connection/ConnectionSpecSelector;)V

    .line 16
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->handshake:Ldc/squareup/okhttp3/Handshake;

    invoke-virtual {p4, p3, p1}, Ldc/squareup/okhttp3/EventListener;->secureConnectEnd(Ldc/squareup/okhttp3/Call;Ldc/squareup/okhttp3/Handshake;)V

    .line 18
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->protocol:Ldc/squareup/okhttp3/Protocol;

    sget-object p3, Ldc/squareup/okhttp3/Protocol;->HTTP_2:Ldc/squareup/okhttp3/Protocol;

    if-ne p1, p3, :cond_2

    .line 19
    invoke-direct {p0, p2}, Ldc/squareup/okhttp3/internal/connection/RealConnection;->startHttp2(I)V

    :cond_2
    return-void
.end method

.method private startHttp2(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 2
    new-instance v0, Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;-><init>(Z)V

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    .line 3
    invoke-virtual {v2}, Ldc/squareup/okhttp3/Route;->address()Ldc/squareup/okhttp3/Address;

    move-result-object v2

    invoke-virtual {v2}, Ldc/squareup/okhttp3/Address;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Ldc/squareup/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->source:Ldc/squareup/okio/BufferedSource;

    iget-object v4, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-virtual {v0, v1, v2, v3, v4}, Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Ldc/squareup/okio/BufferedSource;Ldc/squareup/okio/BufferedSink;)Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;->listener(Ldc/squareup/okhttp3/internal/http2/Http2Connection$Listener;)Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;->pingIntervalMillis(I)Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/http2/Http2Connection$Builder;->build()Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->http2Connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    .line 7
    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->start()V

    return-void
.end method

.method public static testConnection(Ldc/squareup/okhttp3/ConnectionPool;Ldc/squareup/okhttp3/Route;Ljava/net/Socket;J)Ldc/squareup/okhttp3/internal/connection/RealConnection;
    .locals 1

    .line 1
    new-instance v0, Ldc/squareup/okhttp3/internal/connection/RealConnection;

    invoke-direct {v0, p0, p1}, Ldc/squareup/okhttp3/internal/connection/RealConnection;-><init>(Ldc/squareup/okhttp3/ConnectionPool;Ldc/squareup/okhttp3/Route;)V

    .line 2
    iput-object p2, v0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 3
    iput-wide p3, v0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->idleAtNanos:J

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v0}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    return-void
.end method

.method public connect(IIIIZLdc/squareup/okhttp3/Call;Ldc/squareup/okhttp3/EventListener;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 1
    iget-object v0, v7, Ldc/squareup/okhttp3/internal/connection/RealConnection;->protocol:Ldc/squareup/okhttp3/Protocol;

    if-nez v0, :cond_b

    .line 4
    iget-object v0, v7, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Route;->address()Ldc/squareup/okhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Address;->connectionSpecs()Ljava/util/List;

    move-result-object v0

    .line 5
    new-instance v10, Ldc/squareup/okhttp3/internal/connection/ConnectionSpecSelector;

    invoke-direct {v10, v0}, Ldc/squareup/okhttp3/internal/connection/ConnectionSpecSelector;-><init>(Ljava/util/List;)V

    .line 7
    iget-object v1, v7, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    invoke-virtual {v1}, Ldc/squareup/okhttp3/Route;->address()Ldc/squareup/okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Ldc/squareup/okhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-nez v1, :cond_2

    .line 8
    sget-object v1, Ldc/squareup/okhttp3/ConnectionSpec;->CLEARTEXT:Ldc/squareup/okhttp3/ConnectionSpec;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, v7, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Route;->address()Ldc/squareup/okhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Address;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {}, Ldc/squareup/okhttp3/internal/platform/Platform;->get()Ldc/squareup/okhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldc/squareup/okhttp3/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Ldc/squareup/okhttp3/internal/connection/RouteException;

    new-instance v2, Ljava/net/UnknownServiceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEARTEXT communication to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not permitted by network security policy"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ldc/squareup/okhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 15
    :cond_1
    new-instance v0, Ldc/squareup/okhttp3/internal/connection/RouteException;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "CLEARTEXT communication not enabled for client"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ldc/squareup/okhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 24
    :cond_2
    iget-object v0, v7, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Route;->address()Ldc/squareup/okhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Address;->protocols()Ljava/util/List;

    move-result-object v0

    sget-object v1, Ldc/squareup/okhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Ldc/squareup/okhttp3/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :goto_0
    const/4 v11, 0x0

    move-object v12, v11

    .line 32
    :goto_1
    :try_start_0
    iget-object v0, v7, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Route;->requiresTunnel()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    .line 33
    invoke-direct/range {v1 .. v6}, Ldc/squareup/okhttp3/internal/connection/RealConnection;->connectTunnel(IIILdc/squareup/okhttp3/Call;Ldc/squareup/okhttp3/EventListener;)V

    .line 34
    iget-object v0, v7, Ldc/squareup/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v13, p1

    move/from16 v14, p2

    goto :goto_2

    :cond_4
    move/from16 v13, p1

    move/from16 v14, p2

    .line 39
    :try_start_1
    invoke-direct {v7, v13, v14, v8, v9}, Ldc/squareup/okhttp3/internal/connection/RealConnection;->connectSocket(IILdc/squareup/okhttp3/Call;Ldc/squareup/okhttp3/EventListener;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move/from16 v15, p4

    .line 41
    :try_start_2
    invoke-direct {v7, v10, v15, v8, v9}, Ldc/squareup/okhttp3/internal/connection/RealConnection;->establishProtocol(Ldc/squareup/okhttp3/internal/connection/ConnectionSpecSelector;ILdc/squareup/okhttp3/Call;Ldc/squareup/okhttp3/EventListener;)V

    .line 42
    iget-object v0, v7, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    iget-object v1, v7, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    invoke-virtual {v1}, Ldc/squareup/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v1

    iget-object v2, v7, Ldc/squareup/okhttp3/internal/connection/RealConnection;->protocol:Ldc/squareup/okhttp3/Protocol;

    invoke-virtual {v9, v8, v0, v1, v2}, Ldc/squareup/okhttp3/EventListener;->connectEnd(Ldc/squareup/okhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Ldc/squareup/okhttp3/Protocol;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 69
    :goto_3
    iget-object v0, v7, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Route;->requiresTunnel()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v7, Ldc/squareup/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    if-eqz v0, :cond_5

    goto :goto_4

    .line 70
    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Too many tunnel connections attempted: 21"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 72
    new-instance v1, Ldc/squareup/okhttp3/internal/connection/RouteException;

    invoke-direct {v1, v0}, Ldc/squareup/okhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 75
    :cond_6
    :goto_4
    iget-object v0, v7, Ldc/squareup/okhttp3/internal/connection/RealConnection;->http2Connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    if-eqz v0, :cond_7

    .line 76
    iget-object v1, v7, Ldc/squareup/okhttp3/internal/connection/RealConnection;->connectionPool:Ldc/squareup/okhttp3/ConnectionPool;

    monitor-enter v1

    .line 77
    :try_start_3
    iget-object v0, v7, Ldc/squareup/okhttp3/internal/connection/RealConnection;->http2Connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->maxConcurrentStreams()I

    move-result v0

    iput v0, v7, Ldc/squareup/okhttp3/internal/connection/RealConnection;->allocationLimit:I

    .line 78
    monitor-exit v1

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_7
    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move/from16 v13, p1

    move/from16 v14, p2

    :goto_6
    move/from16 v15, p4

    .line 79
    :goto_7
    iget-object v1, v7, Ldc/squareup/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v1}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 80
    iget-object v1, v7, Ldc/squareup/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v1}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 81
    iput-object v11, v7, Ldc/squareup/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 82
    iput-object v11, v7, Ldc/squareup/okhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 83
    iput-object v11, v7, Ldc/squareup/okhttp3/internal/connection/RealConnection;->source:Ldc/squareup/okio/BufferedSource;

    .line 84
    iput-object v11, v7, Ldc/squareup/okhttp3/internal/connection/RealConnection;->sink:Ldc/squareup/okio/BufferedSink;

    .line 85
    iput-object v11, v7, Ldc/squareup/okhttp3/internal/connection/RealConnection;->handshake:Ldc/squareup/okhttp3/Handshake;

    .line 86
    iput-object v11, v7, Ldc/squareup/okhttp3/internal/connection/RealConnection;->protocol:Ldc/squareup/okhttp3/Protocol;

    .line 87
    iput-object v11, v7, Ldc/squareup/okhttp3/internal/connection/RealConnection;->http2Connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    .line 89
    iget-object v1, v7, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    invoke-virtual {v1}, Ldc/squareup/okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    iget-object v1, v7, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    invoke-virtual {v1}, Ldc/squareup/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Ldc/squareup/okhttp3/EventListener;->connectFailed(Ldc/squareup/okhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Ldc/squareup/okhttp3/Protocol;Ljava/io/IOException;)V

    if-nez v12, :cond_8

    .line 92
    new-instance v12, Ldc/squareup/okhttp3/internal/connection/RouteException;

    invoke-direct {v12, v0}, Ldc/squareup/okhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    goto :goto_8

    .line 94
    :cond_8
    invoke-virtual {v12, v0}, Ldc/squareup/okhttp3/internal/connection/RouteException;->addConnectException(Ljava/io/IOException;)V

    :goto_8
    if-eqz p5, :cond_9

    .line 97
    invoke-virtual {v10, v0}, Ldc/squareup/okhttp3/internal/connection/ConnectionSpecSelector;->connectionFailed(Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_1

    .line 98
    :cond_9
    throw v12

    .line 99
    :cond_a
    new-instance v0, Ldc/squareup/okhttp3/internal/connection/RouteException;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ldc/squareup/okhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 100
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method public handshake()Ldc/squareup/okhttp3/Handshake;
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->handshake:Ldc/squareup/okhttp3/Handshake;

    return-object v0
.end method

.method public isEligible(Ldc/squareup/okhttp3/Address;Ldc/squareup/okhttp3/Route;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->allocationLimit:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_a

    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    sget-object v0, Ldc/squareup/okhttp3/internal/Internal;->instance:Ldc/squareup/okhttp3/internal/Internal;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    invoke-virtual {v1}, Ldc/squareup/okhttp3/Route;->address()Ldc/squareup/okhttp3/Address;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ldc/squareup/okhttp3/internal/Internal;->equalsNonHost(Ldc/squareup/okhttp3/Address;Ldc/squareup/okhttp3/Address;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 7
    :cond_1
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Address;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route()Ldc/squareup/okhttp3/Route;

    move-result-object v1

    invoke-virtual {v1}, Ldc/squareup/okhttp3/Route;->address()Ldc/squareup/okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Ldc/squareup/okhttp3/Address;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Ldc/squareup/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    return v1

    .line 17
    :cond_2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->http2Connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    if-nez v0, :cond_3

    return v2

    :cond_3
    if-nez p2, :cond_4

    return v2

    .line 23
    :cond_4
    invoke-virtual {p2}, Ldc/squareup/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v3, :cond_5

    return v2

    .line 24
    :cond_5
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v3, :cond_6

    return v2

    .line 25
    :cond_6
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p2}, Ldc/squareup/okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v2

    .line 28
    :cond_7
    invoke-virtual {p2}, Ldc/squareup/okhttp3/Route;->address()Ldc/squareup/okhttp3/Address;

    move-result-object p2

    invoke-virtual {p2}, Ldc/squareup/okhttp3/Address;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p2

    sget-object v0, Ldc/squareup/okhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Ldc/squareup/okhttp3/internal/tls/OkHostnameVerifier;

    if-eq p2, v0, :cond_8

    return v2

    .line 29
    :cond_8
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Address;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object p2

    invoke-virtual {p0, p2}, Ldc/squareup/okhttp3/internal/connection/RealConnection;->supportsUrl(Ldc/squareup/okhttp3/HttpUrl;)Z

    move-result p2

    if-nez p2, :cond_9

    return v2

    .line 33
    :cond_9
    :try_start_0
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Address;->certificatePinner()Ldc/squareup/okhttp3/CertificatePinner;

    move-result-object p2

    invoke-virtual {p1}, Ldc/squareup/okhttp3/Address;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Ldc/squareup/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/connection/RealConnection;->handshake()Ldc/squareup/okhttp3/Handshake;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ldc/squareup/okhttp3/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    :cond_a
    :goto_0
    return v2
.end method

.method public isHealthy(Z)Z
    .locals 4

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->http2Connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->isHealthy(J)Z

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 11
    :try_start_0
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :try_start_1
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 14
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v2}, Ldc/squareup/okio/BufferedSource;->exhausted()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 19
    :try_start_2
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v1

    :cond_2
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 20
    throw v2
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v1

    :catch_1
    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public isMultiplexed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->http2Connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public newCodec(Ldc/squareup/okhttp3/OkHttpClient;Ldc/squareup/okhttp3/Interceptor$Chain;Ldc/squareup/okhttp3/internal/connection/StreamAllocation;)Ldc/squareup/okhttp3/internal/http/HttpCodec;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->http2Connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ldc/squareup/okhttp3/internal/http2/Http2Codec;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->http2Connection:Ldc/squareup/okhttp3/internal/http2/Http2Connection;

    invoke-direct {v0, p1, p2, p3, v1}, Ldc/squareup/okhttp3/internal/http2/Http2Codec;-><init>(Ldc/squareup/okhttp3/OkHttpClient;Ldc/squareup/okhttp3/Interceptor$Chain;Ldc/squareup/okhttp3/internal/connection/StreamAllocation;Ldc/squareup/okhttp3/internal/http2/Http2Connection;)V

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-interface {p2}, Ldc/squareup/okhttp3/Interceptor$Chain;->readTimeoutMillis()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 5
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v0}, Ldc/squareup/okio/Source;->timeout()Ldc/squareup/okio/Timeout;

    move-result-object v0

    invoke-interface {p2}, Ldc/squareup/okhttp3/Interceptor$Chain;->readTimeoutMillis()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ldc/squareup/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okio/Timeout;

    .line 6
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {v0}, Ldc/squareup/okio/Sink;->timeout()Ldc/squareup/okio/Timeout;

    move-result-object v0

    invoke-interface {p2}, Ldc/squareup/okhttp3/Interceptor$Chain;->writeTimeoutMillis()I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2, v3}, Ldc/squareup/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okio/Timeout;

    .line 7
    new-instance p2, Ldc/squareup/okhttp3/internal/http1/Http1Codec;

    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->source:Ldc/squareup/okio/BufferedSource;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-direct {p2, p1, p3, v0, v1}, Ldc/squareup/okhttp3/internal/http1/Http1Codec;-><init>(Ldc/squareup/okhttp3/OkHttpClient;Ldc/squareup/okhttp3/internal/connection/StreamAllocation;Ldc/squareup/okio/BufferedSource;Ldc/squareup/okio/BufferedSink;)V

    return-object p2
.end method

.method public newWebSocketStreams(Ldc/squareup/okhttp3/internal/connection/StreamAllocation;)Ldc/squareup/okhttp3/internal/ws/RealWebSocket$Streams;
    .locals 7

    .line 1
    new-instance v6, Ldc/squareup/okhttp3/internal/connection/RealConnection$1;

    iget-object v3, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->source:Ldc/squareup/okio/BufferedSource;

    iget-object v4, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->sink:Ldc/squareup/okio/BufferedSink;

    const/4 v2, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ldc/squareup/okhttp3/internal/connection/RealConnection$1;-><init>(Ldc/squareup/okhttp3/internal/connection/RealConnection;ZLdc/squareup/okio/BufferedSource;Ldc/squareup/okio/BufferedSink;Ldc/squareup/okhttp3/internal/connection/StreamAllocation;)V

    return-object v6
.end method

.method public onSettings(Ldc/squareup/okhttp3/internal/http2/Http2Connection;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->connectionPool:Ldc/squareup/okhttp3/ConnectionPool;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/http2/Http2Connection;->maxConcurrentStreams()I

    move-result p1

    iput p1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->allocationLimit:I

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onStream(Ldc/squareup/okhttp3/internal/http2/Http2Stream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ldc/squareup/okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Stream;->close(Ldc/squareup/okhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method public protocol()Ldc/squareup/okhttp3/Protocol;
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->protocol:Ldc/squareup/okhttp3/Protocol;

    return-object v0
.end method

.method public route()Ldc/squareup/okhttp3/Route;
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    return-object v0
.end method

.method public socket()Ljava/net/Socket;
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public supportsUrl(Ldc/squareup/okhttp3/HttpUrl;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ldc/squareup/okhttp3/HttpUrl;->port()I

    move-result v0

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    invoke-virtual {v1}, Ldc/squareup/okhttp3/Route;->address()Ldc/squareup/okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Ldc/squareup/okhttp3/Address;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Ldc/squareup/okhttp3/HttpUrl;->port()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 5
    :cond_0
    invoke-virtual {p1}, Ldc/squareup/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    invoke-virtual {v1}, Ldc/squareup/okhttp3/Route;->address()Ldc/squareup/okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Ldc/squareup/okhttp3/Address;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Ldc/squareup/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->handshake:Ldc/squareup/okhttp3/Handshake;

    if-eqz v0, :cond_1

    sget-object v0, Ldc/squareup/okhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Ldc/squareup/okhttp3/internal/tls/OkHostnameVerifier;

    .line 8
    invoke-virtual {p1}, Ldc/squareup/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->handshake:Ldc/squareup/okhttp3/Handshake;

    invoke-virtual {v3}, Ldc/squareup/okhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 9
    invoke-virtual {v0, p1, v3}, Ldc/squareup/okhttp3/internal/tls/OkHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    .line 2
    invoke-virtual {v1}, Ldc/squareup/okhttp3/Route;->address()Ldc/squareup/okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Ldc/squareup/okhttp3/Address;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Ldc/squareup/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    invoke-virtual {v1}, Ldc/squareup/okhttp3/Route;->address()Ldc/squareup/okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Ldc/squareup/okhttp3/Address;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Ldc/squareup/okhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    .line 4
    invoke-virtual {v1}, Ldc/squareup/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->route:Ldc/squareup/okhttp3/Route;

    .line 6
    invoke-virtual {v1}, Ldc/squareup/okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->handshake:Ldc/squareup/okhttp3/Handshake;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ldc/squareup/okhttp3/Handshake;->cipherSuite()Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "none"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/connection/RealConnection;->protocol:Ldc/squareup/okhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
