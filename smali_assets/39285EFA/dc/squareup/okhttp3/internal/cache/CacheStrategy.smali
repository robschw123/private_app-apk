.class public final Ldc/squareup/okhttp3/internal/cache/CacheStrategy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/squareup/okhttp3/internal/cache/CacheStrategy$Factory;
    }
.end annotation


# instance fields
.field public final cacheResponse:Ldc/squareup/okhttp3/Response;

.field public final networkRequest:Ldc/squareup/okhttp3/Request;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/Request;Ldc/squareup/okhttp3/Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/cache/CacheStrategy;->networkRequest:Ldc/squareup/okhttp3/Request;

    .line 3
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/cache/CacheStrategy;->cacheResponse:Ldc/squareup/okhttp3/Response;

    return-void
.end method

.method public static isCacheable(Ldc/squareup/okhttp3/Response;Ldc/squareup/okhttp3/Request;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ldc/squareup/okhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0x19a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x19e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1f5

    if-eq v0, v1, :cond_2

    const/16 v1, 0xcb

    if-eq v0, v1, :cond_2

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_2

    const/16 v1, 0x133

    if-eq v0, v1, :cond_0

    const/16 v1, 0x134

    if-eq v0, v1, :cond_2

    const/16 v1, 0x194

    if-eq v0, v1, :cond_2

    const/16 v1, 0x195

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string v0, "Expires"

    .line 21
    invoke-virtual {p0, v0}, Ldc/squareup/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 22
    invoke-virtual {p0}, Ldc/squareup/okhttp3/Response;->cacheControl()Ldc/squareup/okhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okhttp3/CacheControl;->maxAgeSeconds()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 23
    invoke-virtual {p0}, Ldc/squareup/okhttp3/Response;->cacheControl()Ldc/squareup/okhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okhttp3/CacheControl;->isPublic()Z

    move-result v0

    if-nez v0, :cond_2

    .line 24
    invoke-virtual {p0}, Ldc/squareup/okhttp3/Response;->cacheControl()Ldc/squareup/okhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okhttp3/CacheControl;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return v2

    .line 35
    :cond_2
    :goto_1
    :pswitch_1
    invoke-virtual {p0}, Ldc/squareup/okhttp3/Response;->cacheControl()Ldc/squareup/okhttp3/CacheControl;

    move-result-object p0

    invoke-virtual {p0}, Ldc/squareup/okhttp3/CacheControl;->noStore()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p1}, Ldc/squareup/okhttp3/Request;->cacheControl()Ldc/squareup/okhttp3/CacheControl;

    move-result-object p0

    invoke-virtual {p0}, Ldc/squareup/okhttp3/CacheControl;->noStore()Z

    move-result p0

    if-nez p0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
