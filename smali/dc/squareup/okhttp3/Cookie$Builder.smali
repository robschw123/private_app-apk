.class public final Ldc/squareup/okhttp3/Cookie$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/Cookie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field domain:Ljava/lang/String;

.field expiresAt:J

.field hostOnly:Z

.field httpOnly:Z

.field name:Ljava/lang/String;

.field path:Ljava/lang/String;

.field persistent:Z

.field secure:Z

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0xe677d21fdbffL

    .line 4
    iput-wide v0, p0, Ldc/squareup/okhttp3/Cookie$Builder;->expiresAt:J

    const-string v0, "/"

    .line 6
    iput-object v0, p0, Ldc/squareup/okhttp3/Cookie$Builder;->path:Ljava/lang/String;

    return-void
.end method

.method private domain(Ljava/lang/String;Z)Ldc/squareup/okhttp3/Cookie$Builder;
    .locals 2

    const-string v0, "domain == null"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ldc/squareup/okhttp3/internal/Util;->canonicalizeHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iput-object v0, p0, Ldc/squareup/okhttp3/Cookie$Builder;->domain:Ljava/lang/String;

    .line 7
    iput-boolean p2, p0, Ldc/squareup/okhttp3/Cookie$Builder;->hostOnly:Z

    return-object p0

    .line 8
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected domain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public build()Ldc/squareup/okhttp3/Cookie;
    .locals 1

    .line 1
    new-instance v0, Ldc/squareup/okhttp3/Cookie;

    invoke-direct {v0, p0}, Ldc/squareup/okhttp3/Cookie;-><init>(Ldc/squareup/okhttp3/Cookie$Builder;)V

    return-object v0
.end method

.method public domain(Ljava/lang/String;)Ldc/squareup/okhttp3/Cookie$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Ldc/squareup/okhttp3/Cookie$Builder;->domain(Ljava/lang/String;Z)Ldc/squareup/okhttp3/Cookie$Builder;

    move-result-object p1

    return-object p1
.end method

.method public expiresAt(J)Ldc/squareup/okhttp3/Cookie$Builder;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const-wide/high16 p1, -0x8000000000000000L

    :cond_0
    const-wide v0, 0xe677d21fdbffL

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    move-wide p1, v0

    .line 1
    :cond_1
    iput-wide p1, p0, Ldc/squareup/okhttp3/Cookie$Builder;->expiresAt:J

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Ldc/squareup/okhttp3/Cookie$Builder;->persistent:Z

    return-object p0
.end method

.method public hostOnlyDomain(Ljava/lang/String;)Ldc/squareup/okhttp3/Cookie$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Ldc/squareup/okhttp3/Cookie$Builder;->domain(Ljava/lang/String;Z)Ldc/squareup/okhttp3/Cookie$Builder;

    move-result-object p1

    return-object p1
.end method

.method public httpOnly()Ldc/squareup/okhttp3/Cookie$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ldc/squareup/okhttp3/Cookie$Builder;->httpOnly:Z

    return-object p0
.end method

.method public name(Ljava/lang/String;)Ldc/squareup/okhttp3/Cookie$Builder;
    .locals 1

    const-string v0, "name == null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Ldc/squareup/okhttp3/Cookie$Builder;->name:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "name is not trimmed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public path(Ljava/lang/String;)Ldc/squareup/okhttp3/Cookie$Builder;
    .locals 1

    const-string v0, "/"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Ldc/squareup/okhttp3/Cookie$Builder;->path:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "path must start with \'/\'"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public secure()Ldc/squareup/okhttp3/Cookie$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ldc/squareup/okhttp3/Cookie$Builder;->secure:Z

    return-object p0
.end method

.method public value(Ljava/lang/String;)Ldc/squareup/okhttp3/Cookie$Builder;
    .locals 1

    const-string v0, "value == null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Ldc/squareup/okhttp3/Cookie$Builder;->value:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "value is not trimmed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
