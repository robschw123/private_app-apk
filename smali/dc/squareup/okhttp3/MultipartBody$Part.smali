.class public final Ldc/squareup/okhttp3/MultipartBody$Part;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/MultipartBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Part"
.end annotation


# instance fields
.field final body:Ldc/squareup/okhttp3/RequestBody;

.field final headers:Ldc/squareup/okhttp3/Headers;


# direct methods
.method private constructor <init>(Ldc/squareup/okhttp3/Headers;Ldc/squareup/okhttp3/RequestBody;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldc/squareup/okhttp3/MultipartBody$Part;->headers:Ldc/squareup/okhttp3/Headers;

    .line 3
    iput-object p2, p0, Ldc/squareup/okhttp3/MultipartBody$Part;->body:Ldc/squareup/okhttp3/RequestBody;

    return-void
.end method

.method public static create(Ldc/squareup/okhttp3/Headers;Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/MultipartBody$Part;
    .locals 1

    const-string v0, "body == null"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p0, :cond_1

    const-string v0, "Content-Type"

    .line 2
    invoke-virtual {p0, v0}, Ldc/squareup/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p0, :cond_3

    const-string v0, "Content-Length"

    .line 5
    invoke-virtual {p0, v0}, Ldc/squareup/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_3
    :goto_1
    new-instance v0, Ldc/squareup/okhttp3/MultipartBody$Part;

    invoke-direct {v0, p0, p1}, Ldc/squareup/okhttp3/MultipartBody$Part;-><init>(Ldc/squareup/okhttp3/Headers;Ldc/squareup/okhttp3/RequestBody;)V

    return-object v0
.end method

.method public static create(Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/MultipartBody$Part;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0}, Ldc/squareup/okhttp3/MultipartBody$Part;->create(Ldc/squareup/okhttp3/Headers;Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/MultipartBody$Part;

    move-result-object p0

    return-object p0
.end method

.method public static createFormData(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/MultipartBody$Part;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p1}, Ldc/squareup/okhttp3/RequestBody;->create(Ldc/squareup/okhttp3/MediaType;Ljava/lang/String;)Ldc/squareup/okhttp3/RequestBody;

    move-result-object p1

    invoke-static {p0, v0, p1}, Ldc/squareup/okhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/MultipartBody$Part;

    move-result-object p0

    return-object p0
.end method

.method public static createFormData(Ljava/lang/String;Ljava/lang/String;Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/MultipartBody$Part;
    .locals 2

    const-string v0, "name == null"

    .line 15
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "form-data; name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v0, p0}, Ldc/squareup/okhttp3/MultipartBody;->appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p0, "; filename="

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {v0, p1}, Ldc/squareup/okhttp3/MultipartBody;->appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_0
    new-instance p0, Ldc/squareup/okhttp3/Headers$Builder;

    invoke-direct {p0}, Ldc/squareup/okhttp3/Headers$Builder;-><init>()V

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Content-Disposition"

    invoke-virtual {p0, v0, p1}, Ldc/squareup/okhttp3/Headers$Builder;->addUnsafeNonAscii(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Headers$Builder;

    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ldc/squareup/okhttp3/Headers$Builder;->build()Ldc/squareup/okhttp3/Headers;

    move-result-object p0

    .line 14
    invoke-static {p0, p2}, Ldc/squareup/okhttp3/MultipartBody$Part;->create(Ldc/squareup/okhttp3/Headers;Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/MultipartBody$Part;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public body()Ldc/squareup/okhttp3/RequestBody;
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/MultipartBody$Part;->body:Ldc/squareup/okhttp3/RequestBody;

    return-object v0
.end method

.method public headers()Ldc/squareup/okhttp3/Headers;
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/MultipartBody$Part;->headers:Ldc/squareup/okhttp3/Headers;

    return-object v0
.end method
