.class Lio/dcloud/h/a/d/b/g$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/h/a/d/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Lio/dcloud/h/a/d/b/g;


# direct methods
.method public constructor <init>(Lio/dcloud/h/a/d/b/g;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/h/a/d/b/g$a;->b:Lio/dcloud/h/a/d/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/dcloud/h/a/d/b/g$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OnSupport"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    if-eqz p3, :cond_5

    .line 4
    array-length p1, p3

    if-lez p1, :cond_5

    const/4 p1, 0x0

    .line 5
    aget-object v0, p3, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 9
    array-length v0, p3

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 10
    aget-object p3, p3, v1

    goto :goto_0

    :cond_0
    move-object p3, p2

    .line 12
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p3, :cond_1

    const-string/jumbo p1, "||"

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    new-array v1, p1, [Ljava/lang/Object;

    const-string v2, "getOAID"

    .line 16
    invoke-static {p3, v2, p2, v1}, Lio/dcloud/h/a/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v2, p1, [Ljava/lang/Object;

    const-string v3, "getVAID"

    .line 17
    invoke-static {p3, v3, p2, v2}, Lio/dcloud/h/a/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v3, "getAAID"

    .line 18
    invoke-static {p3, v3, p2, p1}, Lio/dcloud/h/a/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p3, ""

    if-nez v1, :cond_2

    move-object v3, p3

    goto :goto_1

    :cond_2
    move-object v3, v1

    .line 19
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    .line 20
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_3

    move-object v2, p3

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_4

    move-object p1, p3

    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    iget-object p1, p0, Lio/dcloud/h/a/d/b/g$a;->b:Lio/dcloud/h/a/d/b/g;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lio/dcloud/h/a/d/b/g;->a(Lio/dcloud/h/a/d/b/g;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    iget-object p1, p0, Lio/dcloud/h/a/d/b/g$a;->a:Landroid/content/Context;

    if-eqz p1, :cond_5

    .line 24
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "dcloud-ads"

    const-string v1, "oaid"

    invoke-static {p1, v0, v1, p3}, Lio/dcloud/h/a/e/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    nop

    :cond_5
    :goto_2
    return-object p2
.end method
