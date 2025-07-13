.class Lio/dcloud/h/c/c/b/b/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/h/c/c/c/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/h/c/c/b/b/c;->b(Landroid/content/Context;I[Lio/dcloud/h/c/c/c/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:[Ljava/lang/String;

.field final synthetic b:[Lio/dcloud/h/c/c/c/c$a;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/util/HashMap;

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Lio/dcloud/h/c/c/b/b/c;


# direct methods
.method constructor <init>(Lio/dcloud/h/c/c/b/b/c;[Lio/dcloud/h/c/c/c/c$a;Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/h/c/c/b/b/c$a;->f:Lio/dcloud/h/c/c/b/b/c;

    iput-object p2, p0, Lio/dcloud/h/c/c/b/b/c$a;->b:[Lio/dcloud/h/c/c/c/c$a;

    iput-object p3, p0, Lio/dcloud/h/c/c/b/b/c$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/h/c/c/b/b/c$a;->d:Ljava/util/HashMap;

    iput-object p5, p0, Lio/dcloud/h/c/c/b/b/c$a;->e:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    .line 2
    iput-object p1, p0, Lio/dcloud/h/c/c/b/b/c$a;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lio/dcloud/h/c/c/c/a$a;)V
    .locals 0

    return-void
.end method

.method public b(Lio/dcloud/h/c/c/c/a$a;)Z
    .locals 7

    const-string v0, "6C697C69"

    .line 1
    invoke-virtual {p1}, Lio/dcloud/h/c/c/c/a$a;->b()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lio/dcloud/h/c/c/b/b/c$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/h/c/c/b/b/c$a;->d:Ljava/util/HashMap;

    iget-object v3, p0, Lio/dcloud/h/c/c/b/b/c$a;->a:[Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lio/dcloud/h/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;[Ljava/lang/String;)[B

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    const/4 p1, -0x1

    const/16 v3, -0x138f

    .line 5
    :try_start_0
    new-instance v4, Lio/dcloud/h/c/c/b/c/a;

    invoke-direct {v4, v2}, Lio/dcloud/h/c/c/b/c/a;-><init>(Ljava/lang/String;)V

    const-string v2, "7C61656D"

    .line 7
    invoke-virtual {v4, v2}, Lio/dcloud/h/c/c/b/c/a;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    iget-object v2, p0, Lio/dcloud/h/c/c/b/b/c$a;->f:Lio/dcloud/h/c/c/b/b/c;

    iget-object v5, p0, Lio/dcloud/h/c/c/b/b/c$a;->e:Landroid/content/Context;

    invoke-virtual {v2, v4, v5}, Lio/dcloud/h/c/c/b/b/c;->a(Lio/dcloud/h/c/c/b/c/a;Landroid/content/Context;)V

    .line 10
    :cond_0
    invoke-virtual {v4, v0}, Lio/dcloud/h/c/c/b/c/a;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {v4, v0}, Lio/dcloud/h/c/c/b/c/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    .line 12
    invoke-static {v2, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {}, Lio/dcloud/h/c/c/b/d/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lio/dcloud/h/c/c/b/d/b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lio/dcloud/h/a/d/b/a;->a([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 13
    new-instance v5, Lio/dcloud/h/c/c/b/c/a;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v5, v6}, Lio/dcloud/h/c/c/b/c/a;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v4, v0, v5}, Lio/dcloud/h/c/c/b/c/a;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    iget-object v0, p0, Lio/dcloud/h/c/c/b/b/c$a;->b:[Lio/dcloud/h/c/c/c/c$a;

    array-length v2, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    aget-object v6, v0, v5

    .line 16
    invoke-interface {v6, v4}, Lio/dcloud/h/c/c/c/c$a;->a(Lio/dcloud/h/c/c/b/c/a;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lio/dcloud/h/c/c/b/b/c$a;->b:[Lio/dcloud/h/c/c/c/c$a;

    array-length v2, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 20
    invoke-static {v3}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Lio/dcloud/h/c/c/c/c$a;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    iget-object v0, p0, Lio/dcloud/h/c/c/b/b/c$a;->b:[Lio/dcloud/h/c/c/c/c$a;

    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 26
    invoke-static {v3}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Lio/dcloud/h/c/c/c/c$a;->a(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public onNoOnePicked()V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/b/b/c$a;->b:[Lio/dcloud/h/c/c/c/c$a;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 2
    iget-object v5, p0, Lio/dcloud/h/c/c/b/b/c$a;->a:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, -0x1

    invoke-interface {v4, v6, v5}, Lio/dcloud/h/c/c/c/c$a;->a(ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
