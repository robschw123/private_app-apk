.class public final Ldc/squareup/okhttp3/internal/connection/RouteException;
.super Ljava/lang/RuntimeException;


# instance fields
.field private firstException:Ljava/io/IOException;

.field private lastException:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 2
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/connection/RouteException;->firstException:Ljava/io/IOException;

    .line 3
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/connection/RouteException;->lastException:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public addConnectException(Ljava/io/IOException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RouteException;->firstException:Ljava/io/IOException;

    invoke-static {v0, p1}, Ldc/squareup/okhttp3/internal/Util;->addSuppressedIfPossible(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 2
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/connection/RouteException;->lastException:Ljava/io/IOException;

    return-void
.end method

.method public getFirstConnectException()Ljava/io/IOException;
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RouteException;->firstException:Ljava/io/IOException;

    return-object v0
.end method

.method public getLastConnectException()Ljava/io/IOException;
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/connection/RouteException;->lastException:Ljava/io/IOException;

    return-object v0
.end method
