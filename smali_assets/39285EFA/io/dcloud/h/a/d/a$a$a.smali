.class Lio/dcloud/h/a/d/a$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/sdk/base/entry/AdData$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/h/a/d/a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/base/entry/AdData;

.field final synthetic b:Lio/dcloud/h/a/d/a$a;


# direct methods
.method constructor <init>(Lio/dcloud/h/a/d/a$a;Lio/dcloud/sdk/base/entry/AdData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/h/a/d/a$a$a;->b:Lio/dcloud/h/a/d/a$a;

    iput-object p2, p0, Lio/dcloud/h/a/d/a$a$a;->a:Lio/dcloud/sdk/base/entry/AdData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/h/a/d/a$a$a;->b:Lio/dcloud/h/a/d/a$a;

    iget-object v0, v0, Lio/dcloud/h/a/d/a$a;->b:Lio/dcloud/h/a/d/a;

    iget-object v1, p0, Lio/dcloud/h/a/d/a$a$a;->a:Lio/dcloud/sdk/base/entry/AdData;

    invoke-static {v0, v1}, Lio/dcloud/h/a/d/a;->b(Lio/dcloud/h/a/d/a;Lio/dcloud/sdk/base/entry/AdData;)Lio/dcloud/sdk/base/entry/AdData;

    .line 2
    iget-object v0, p0, Lio/dcloud/h/a/d/a$a$a;->b:Lio/dcloud/h/a/d/a$a;

    iget-object v0, v0, Lio/dcloud/h/a/d/a$a;->b:Lio/dcloud/h/a/d/a;

    invoke-static {v0}, Lio/dcloud/h/a/d/a;->i(Lio/dcloud/h/a/d/a;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 4

    .line 3
    invoke-static {}, Lio/dcloud/h/a/d/b/h;->a()Lio/dcloud/h/a/d/b/h;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/h/a/d/a$a$a;->b:Lio/dcloud/h/a/d/a$a;

    iget-object v1, v1, Lio/dcloud/h/a/d/a$a;->b:Lio/dcloud/h/a/d/a;

    invoke-virtual {v1}, Lio/dcloud/h/a/c/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/h/a/d/b/h;->b(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 5
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/sdk/base/entry/a;

    .line 6
    invoke-virtual {v1}, Lio/dcloud/sdk/base/entry/a;->b()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    new-instance v2, Lio/dcloud/sdk/base/entry/AdData;

    invoke-direct {v2}, Lio/dcloud/sdk/base/entry/AdData;-><init>()V

    .line 8
    iget-object v3, p0, Lio/dcloud/h/a/d/a$a$a;->b:Lio/dcloud/h/a/d/a$a;

    iget-object v3, v3, Lio/dcloud/h/a/d/a$a;->b:Lio/dcloud/h/a/d/a;

    invoke-virtual {v3}, Lio/dcloud/h/a/c/a;->b()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lio/dcloud/sdk/base/entry/a;->a(Landroid/content/Context;Lio/dcloud/sdk/base/entry/AdData;)V

    .line 9
    invoke-virtual {v2}, Lio/dcloud/sdk/base/entry/AdData;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lio/dcloud/sdk/base/entry/AdData;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lio/dcloud/sdk/base/entry/AdData;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lio/dcloud/h/a/d/a$a$a;->b:Lio/dcloud/h/a/d/a$a;

    iget-object v3, v3, Lio/dcloud/h/a/d/a$a;->b:Lio/dcloud/h/a/d/a;

    invoke-static {v3}, Lio/dcloud/h/a/d/a;->d(Lio/dcloud/h/a/d/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lio/dcloud/sdk/base/entry/AdData;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lio/dcloud/h/a/d/a$a$a;->b:Lio/dcloud/h/a/d/a$a;

    iget-object v3, v3, Lio/dcloud/h/a/d/a$a;->b:Lio/dcloud/h/a/d/a;

    invoke-static {v3}, Lio/dcloud/h/a/d/a;->f(Lio/dcloud/h/a/d/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    iget-object v1, p0, Lio/dcloud/h/a/d/a$a$a;->b:Lio/dcloud/h/a/d/a$a;

    iget-object v1, v1, Lio/dcloud/h/a/d/a$a;->b:Lio/dcloud/h/a/d/a;

    invoke-static {v1}, Lio/dcloud/h/a/d/a;->j(Lio/dcloud/h/a/d/a;)Lio/dcloud/sdk/base/entry/AdData;

    move-result-object v1

    if-nez v1, :cond_0

    .line 11
    iget-object v0, p0, Lio/dcloud/h/a/d/a$a$a;->b:Lio/dcloud/h/a/d/a$a;

    iget-object v0, v0, Lio/dcloud/h/a/d/a$a;->b:Lio/dcloud/h/a/d/a;

    invoke-static {v0, v2}, Lio/dcloud/h/a/d/a;->a(Lio/dcloud/h/a/d/a;Lio/dcloud/sdk/base/entry/AdData;)Lio/dcloud/sdk/base/entry/AdData;

    .line 12
    iget-object v0, p0, Lio/dcloud/h/a/d/a$a$a;->b:Lio/dcloud/h/a/d/a$a;

    iget-object v0, v0, Lio/dcloud/h/a/d/a$a;->b:Lio/dcloud/h/a/d/a;

    invoke-static {v0}, Lio/dcloud/h/a/d/a;->c(Lio/dcloud/h/a/d/a;)V

    return-void

    .line 17
    :cond_1
    invoke-static {}, Lio/dcloud/h/a/d/b/h;->a()Lio/dcloud/h/a/d/b/h;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/h/a/d/a$a$a;->b:Lio/dcloud/h/a/d/a$a;

    iget-object v3, v3, Lio/dcloud/h/a/d/a$a;->b:Lio/dcloud/h/a/d/a;

    invoke-virtual {v3}, Lio/dcloud/h/a/c/a;->b()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lio/dcloud/sdk/base/entry/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lio/dcloud/h/a/d/b/h;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 22
    :catch_0
    :cond_2
    iget-object v0, p0, Lio/dcloud/h/a/d/a$a$a;->b:Lio/dcloud/h/a/d/a$a;

    iget-object v0, v0, Lio/dcloud/h/a/d/a$a;->b:Lio/dcloud/h/a/d/a;

    invoke-static {v0, p1, p2}, Lio/dcloud/h/a/d/a;->a(Lio/dcloud/h/a/d/a;ILjava/lang/String;)V

    return-void
.end method
