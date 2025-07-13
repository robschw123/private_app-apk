.class public abstract Lio/dcloud/h/a/c/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/h/a/c/a$c;
    }
.end annotation


# instance fields
.field protected a:Lio/dcloud/h/a/c/a$c;

.field private b:Landroid/content/Context;

.field protected c:Ljava/lang/String;

.field protected d:Lio/dcloud/sdk/base/entry/AdData;


# direct methods
.method public constructor <init>(Lio/dcloud/h/a/c/a$c;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/h/a/c/a;->a:Lio/dcloud/h/a/c/a$c;

    .line 3
    iput-object p2, p0, Lio/dcloud/h/a/c/a;->b:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lio/dcloud/h/a/c/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 12
    iget-object v0, p0, Lio/dcloud/h/a/c/a;->a:Lio/dcloud/h/a/c/a$c;

    if-eqz v0, :cond_0

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lio/dcloud/h/a/c/a$b;

    invoke-direct {v1, p0}, Lio/dcloud/h/a/c/a$b;-><init>(Lio/dcloud/h/a/c/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected a(ILjava/lang/String;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lio/dcloud/h/a/c/a;->a:Lio/dcloud/h/a/c/a$c;

    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lio/dcloud/h/a/c/a$a;

    invoke-direct {v1, p0, p1, p2}, Lio/dcloud/h/a/c/a$a;-><init>(Lio/dcloud/h/a/c/a;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 4

    if-nez p1, :cond_0

    const p1, 0xea6a

    const-string/jumbo v0, "\u5e7f\u544a\u5bb9\u5668\u4e0d\u53ef\u89c1"

    .line 1
    invoke-virtual {p0, p1, v0}, Lio/dcloud/h/a/c/a;->a(ILjava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lio/dcloud/h/a/c/a;->d:Lio/dcloud/sdk/base/entry/AdData;

    if-nez v0, :cond_1

    const p1, 0xea65

    const-string/jumbo v0, "\u6570\u636e\u89e3\u6790\u5931\u8d25"

    .line 5
    invoke-virtual {p0, p1, v0}, Lio/dcloud/h/a/c/a;->a(ILjava/lang/String;)V

    return-void

    .line 8
    :cond_1
    new-instance v0, Lio/dcloud/h/a/d/c/b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/h/a/c/a;->a:Lio/dcloud/h/a/c/a$c;

    iget-object v3, p0, Lio/dcloud/h/a/c/a;->d:Lio/dcloud/sdk/base/entry/AdData;

    invoke-direct {v0, v1, v2, v3}, Lio/dcloud/h/a/d/c/b;-><init>(Landroid/content/Context;Lio/dcloud/h/a/c/a$c;Lio/dcloud/sdk/base/entry/AdData;)V

    .line 9
    invoke-virtual {v0, p1}, Lio/dcloud/h/a/d/c/b;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/a/c/a;->b:Landroid/content/Context;

    return-object v0
.end method
