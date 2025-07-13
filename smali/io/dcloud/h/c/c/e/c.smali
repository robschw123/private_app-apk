.class public abstract Lio/dcloud/h/c/c/e/c;
.super Lio/dcloud/h/c/c/e/b;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected b:Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

.field protected final c:Landroid/app/Activity;

.field protected d:I

.field private e:Lio/dcloud/h/c/c/b/a$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/dcloud/h/c/c/e/b;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/h/c/c/e/c;->c:Landroid/app/Activity;

    return-void
.end method

.method private e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/e/c;->e:Lio/dcloud/h/c/c/b/a$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/dcloud/h/c/c/e/c$a;

    iget-object v1, p0, Lio/dcloud/h/c/c/e/c;->b:Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    invoke-virtual {v1}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->getAdpid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/dcloud/h/c/c/e/c$a;-><init>(Lio/dcloud/h/c/c/e/c;Ljava/lang/String;)V

    iput-object v0, p0, Lio/dcloud/h/c/c/e/c;->e:Lio/dcloud/h/c/c/b/a$a;

    .line 14
    :cond_0
    invoke-static {}, Lio/dcloud/h/c/c/b/a;->a()Lio/dcloud/h/c/c/b/a;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/h/c/c/e/c;->c:Landroid/app/Activity;

    invoke-virtual {p0}, Lio/dcloud/h/c/c/e/c;->d()I

    move-result v2

    iget-object v3, p0, Lio/dcloud/h/c/c/e/c;->e:Lio/dcloud/h/c/c/b/a$a;

    invoke-virtual {v0, v1, v2, v3}, Lio/dcloud/h/c/c/b/a;->a(Landroid/content/Context;ILio/dcloud/h/c/c/b/a$a;)V

    return-void
.end method


# virtual methods
.method protected abstract a(ILjava/lang/String;)V
.end method

.method protected abstract a(Lio/dcloud/h/c/c/a/b;)V
.end method

.method protected a(Lio/dcloud/h/c/c/b/a$a;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lio/dcloud/h/c/c/e/c;->e:Lio/dcloud/h/c/c/b/a$a;

    return-void
.end method

.method protected final a(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/dcloud/h/c/c/e/c;->b:Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    .line 2
    iget v0, p0, Lio/dcloud/h/c/c/e/c;->d:I

    invoke-virtual {p1, v0}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->setType(I)V

    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    new-instance v0, Lio/dcloud/h/c/c/a/b;

    invoke-direct {v0}, Lio/dcloud/h/c/c/a/b;-><init>()V

    invoke-virtual {v0, p1}, Lio/dcloud/h/c/c/a/b;->a(Lorg/json/JSONObject;)Lio/dcloud/h/c/c/a/b;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lio/dcloud/h/c/c/e/c;->a(Lio/dcloud/h/c/c/a/b;)V

    goto :goto_0

    :cond_0
    const/16 p1, -0x1389

    .line 7
    invoke-static {p1}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/dcloud/h/c/c/e/c;->a(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected b(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/dcloud/h/c/c/e/c;->a(ILjava/lang/String;)V

    return-void
.end method

.method protected d()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/dcloud/h/c/c/e/c;->e()V

    return-void
.end method
