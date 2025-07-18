.class public final Ldc/squareup/okhttp3/internal/connection/RouteSelector;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/squareup/okhttp3/internal/connection/RouteSelector$Selection;
    }
.end annotation


# instance fields
.field private final address:Ldc/squareup/okhttp3/Address;

.field private final call:Ldc/squareup/okhttp3/Call;

.field private final eventListener:Ldc/squareup/okhttp3/EventListener;

.field private inetSocketAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private nextProxyIndex:I

.field private final postponedRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/Route;",
            ">;"
        }
    .end annotation
.end field

.field private proxies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private final routeDatabase:Ldc/squareup/okhttp3/internal/connection/RouteDatabase;


# direct methods
.method public constructor <init>(Ldc/squareup/okhttp3/Address;Ldc/squareup/okhttp3/internal/connection/RouteDatabase;Ldc/squareup/okhttp3/Call;Ldc/squareup/okhttp3/EventListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->postponedRoutes:Ljava/util/List;

    .line 13
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->address:Ldc/squareup/okhttp3/Address;

    .line 14
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->routeDatabase:Ldc/squareup/okhttp3/internal/connection/RouteDatabase;

    .line 15
    iput-object p3, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->call:Ldc/squareup/okhttp3/Call;

    .line 16
    iput-object p4, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->eventListener:Ldc/squareup/okhttp3/EventListener;

    .line 18
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Address;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object p2

    invoke-virtual {p1}, Ldc/squareup/okhttp3/Address;->proxy()Ljava/net/Proxy;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->resetNextProxy(Ldc/squareup/okhttp3/HttpUrl;Ljava/net/Proxy;)V

    return-void
.end method

.method static getHostString(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hasNextProxy()Z
    .locals 2

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->nextProxyIndex:I

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private nextProxy()Ljava/net/Proxy;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->hasNextProxy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    iget v1, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->nextProxyIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->nextProxyIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 6
    invoke-direct {p0, v0}, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->resetNextInetSocketAddress(Ljava/net/Proxy;)V

    return-object v0

    .line 7
    :cond_0
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No route to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->address:Ldc/squareup/okhttp3/Address;

    invoke-virtual {v2}, Ldc/squareup/okhttp3/Address;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Ldc/squareup/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; exhausted proxy configurations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private resetNextInetSocketAddress(Ljava/net/Proxy;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    .line 5
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    .line 10
    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_1

    .line 14
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 15
    invoke-static {v0}, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->getHostString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_1

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proxy.address() is not an InetSocketAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_2
    :goto_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->address:Ldc/squareup/okhttp3/Address;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Address;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    .line 20
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->address:Ldc/squareup/okhttp3/Address;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Address;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okhttp3/HttpUrl;->port()I

    move-result v0

    :goto_1
    const/4 v2, 0x1

    if-lt v0, v2, :cond_6

    const v2, 0xffff

    if-gt v0, v2, :cond_6

    .line 37
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p1

    sget-object v2, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne p1, v2, :cond_3

    .line 38
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 40
    :cond_3
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->eventListener:Ldc/squareup/okhttp3/EventListener;

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->call:Ldc/squareup/okhttp3/Call;

    invoke-virtual {p1, v2, v1}, Ldc/squareup/okhttp3/EventListener;->dnsStart(Ldc/squareup/okhttp3/Call;Ljava/lang/String;)V

    .line 43
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->address:Ldc/squareup/okhttp3/Address;

    invoke-virtual {p1}, Ldc/squareup/okhttp3/Address;->dns()Ldc/squareup/okhttp3/Dns;

    move-result-object p1

    invoke-interface {p1, v1}, Ldc/squareup/okhttp3/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 44
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 48
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->eventListener:Ldc/squareup/okhttp3/EventListener;

    iget-object v3, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->call:Ldc/squareup/okhttp3/Call;

    invoke-virtual {v2, v3, v1, p1}, Ldc/squareup/okhttp3/EventListener;->dnsEnd(Ldc/squareup/okhttp3/Call;Ljava/lang/String;Ljava/util/List;)V

    const/4 v1, 0x0

    .line 50
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_4

    .line 51
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 52
    iget-object v4, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v3, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void

    .line 53
    :cond_5
    new-instance p1, Ljava/net/UnknownHostException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->address:Ldc/squareup/okhttp3/Address;

    invoke-virtual {v2}, Ldc/squareup/okhttp3/Address;->dns()Ldc/squareup/okhttp3/Dns;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " returned no addresses for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_6
    new-instance p1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No route to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; port is out of range"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private resetNextProxy(Ldc/squareup/okhttp3/HttpUrl;Ljava/net/Proxy;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    goto :goto_1

    .line 4
    :cond_0
    iget-object p2, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->address:Ldc/squareup/okhttp3/Address;

    invoke-virtual {p2}, Ldc/squareup/okhttp3/Address;->proxySelector()Ljava/net/ProxySelector;

    move-result-object p2

    invoke-virtual {p1}, Ldc/squareup/okhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 6
    invoke-static {p1}, Ldc/squareup/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/net/Proxy;

    .line 7
    sget-object p2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object p2, p1, v0

    invoke-static {p1}, Ldc/squareup/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->proxies:Ljava/util/List;

    .line 9
    :goto_1
    iput v0, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->nextProxyIndex:I

    return-void
.end method


# virtual methods
.method public connectFailed(Ldc/squareup/okhttp3/Route;Ljava/io/IOException;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->address:Ldc/squareup/okhttp3/Address;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Address;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->address:Ldc/squareup/okhttp3/Address;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Address;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v0

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->address:Ldc/squareup/okhttp3/Address;

    .line 4
    invoke-virtual {v1}, Ldc/squareup/okhttp3/Address;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Ldc/squareup/okhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p1}, Ldc/squareup/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v1, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 9
    :cond_0
    iget-object p2, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->routeDatabase:Ldc/squareup/okhttp3/internal/connection/RouteDatabase;

    invoke-virtual {p2, p1}, Ldc/squareup/okhttp3/internal/connection/RouteDatabase;->failed(Ldc/squareup/okhttp3/Route;)V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->hasNextProxy()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->postponedRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public next()Ldc/squareup/okhttp3/internal/connection/RouteSelector$Selection;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    :cond_0
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->hasNextProxy()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->nextProxy()Ljava/net/Proxy;

    move-result-object v1

    const/4 v2, 0x0

    .line 12
    iget-object v3, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    .line 13
    new-instance v4, Ldc/squareup/okhttp3/Route;

    iget-object v5, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->address:Ldc/squareup/okhttp3/Address;

    iget-object v6, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->inetSocketAddresses:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v5, v1, v6}, Ldc/squareup/okhttp3/Route;-><init>(Ldc/squareup/okhttp3/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    .line 14
    iget-object v5, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->routeDatabase:Ldc/squareup/okhttp3/internal/connection/RouteDatabase;

    invoke-virtual {v5, v4}, Ldc/squareup/okhttp3/internal/connection/RouteDatabase;->shouldPostpone(Ldc/squareup/okhttp3/Route;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 15
    iget-object v5, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->postponedRoutes:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 28
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->postponedRoutes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/connection/RouteSelector;->postponedRoutes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 32
    :cond_4
    new-instance v1, Ldc/squareup/okhttp3/internal/connection/RouteSelector$Selection;

    invoke-direct {v1, v0}, Ldc/squareup/okhttp3/internal/connection/RouteSelector$Selection;-><init>(Ljava/util/List;)V

    return-object v1

    .line 33
    :cond_5
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
