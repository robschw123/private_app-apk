.class public Lio/dcloud/sdk/base/dcloud/k/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/sdk/base/dcloud/k/a$a;
    }
.end annotation


# instance fields
.field private a:Lio/dcloud/sdk/base/dcloud/k/a$a;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .line 5
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/k/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/k/a;->b:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Lio/dcloud/sdk/base/dcloud/k/a;->c:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lio/dcloud/sdk/base/dcloud/k/a;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Lio/dcloud/sdk/base/dcloud/k/a$a;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/k/a;->a:Lio/dcloud/sdk/base/dcloud/k/a$a;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/k/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/k/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 2
    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/k/a;->c:Ljava/lang/String;

    const/16 v3, 0x7530

    invoke-static {v2, v3, v0, v1}, Lio/dcloud/h/a/e/d;->a(Ljava/lang/String;IZ[Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/k/a;->a:Lio/dcloud/sdk/base/dcloud/k/a$a;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/k/a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/dcloud/sdk/base/dcloud/h;->a(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/k/a;->a:Lio/dcloud/sdk/base/dcloud/k/a$a;

    invoke-interface {v0, p0}, Lio/dcloud/sdk/base/dcloud/k/a$a;->b(Lio/dcloud/sdk/base/dcloud/k/a;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v1, p0}, Lio/dcloud/sdk/base/dcloud/k/a$a;->a(Lio/dcloud/sdk/base/dcloud/k/a;)V

    :cond_1
    :goto_0
    return-void
.end method
