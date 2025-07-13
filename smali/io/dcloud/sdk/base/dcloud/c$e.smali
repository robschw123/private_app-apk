.class Lio/dcloud/sdk/base/dcloud/c$e;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/sdk/base/dcloud/k/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/base/dcloud/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/k/d;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/base/dcloud/k/d;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lio/dcloud/sdk/base/dcloud/k/b;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/base/dcloud/k/d;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/k/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/c$e;->a:Lio/dcloud/sdk/base/dcloud/k/d;

    iput-object p2, p0, Lio/dcloud/sdk/base/dcloud/c$e;->b:Landroid/content/Context;

    iput-object p3, p0, Lio/dcloud/sdk/base/dcloud/c$e;->c:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/sdk/base/dcloud/c$e;->d:Ljava/lang/String;

    iput-object p5, p0, Lio/dcloud/sdk/base/dcloud/c$e;->e:Ljava/lang/String;

    iput-object p6, p0, Lio/dcloud/sdk/base/dcloud/c$e;->f:Ljava/lang/String;

    iput-object p7, p0, Lio/dcloud/sdk/base/dcloud/c$e;->g:Lio/dcloud/sdk/base/dcloud/k/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/dcloud/sdk/base/dcloud/k/a;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/c$e;->b:Landroid/content/Context;

    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/c$e;->c:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/c$e;->d:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/sdk/base/dcloud/c$e;->e:Ljava/lang/String;

    iget-object v4, p0, Lio/dcloud/sdk/base/dcloud/c$e;->f:Ljava/lang/String;

    const/16 v5, 0x20

    invoke-static/range {v0 .. v5}, Lio/dcloud/sdk/base/dcloud/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/k/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 6
    :cond_0
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/c$e;->g:Lio/dcloud/sdk/base/dcloud/k/b;

    invoke-virtual {v0, p1}, Lio/dcloud/sdk/base/dcloud/k/b;->b(Lio/dcloud/sdk/base/dcloud/k/a;)V

    return-void
.end method

.method public b(Lio/dcloud/sdk/base/dcloud/k/a;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/c$e;->a:Lio/dcloud/sdk/base/dcloud/k/d;

    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/k/a;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lio/dcloud/sdk/base/dcloud/k/d;->onCallBack(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v4, p0, Lio/dcloud/sdk/base/dcloud/c$e;->b:Landroid/content/Context;

    iget-object v5, p0, Lio/dcloud/sdk/base/dcloud/c$e;->c:Ljava/lang/String;

    iget-object v6, p0, Lio/dcloud/sdk/base/dcloud/c$e;->d:Ljava/lang/String;

    iget-object v7, p0, Lio/dcloud/sdk/base/dcloud/c$e;->e:Ljava/lang/String;

    iget-object v8, p0, Lio/dcloud/sdk/base/dcloud/c$e;->f:Ljava/lang/String;

    const/16 v9, 0x1e

    invoke-static/range {v4 .. v9}, Lio/dcloud/sdk/base/dcloud/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 7
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/k/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 11
    :cond_0
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/c$e;->g:Lio/dcloud/sdk/base/dcloud/k/b;

    invoke-virtual {v0, p1}, Lio/dcloud/sdk/base/dcloud/k/b;->b(Lio/dcloud/sdk/base/dcloud/k/a;)V

    return-void
.end method
