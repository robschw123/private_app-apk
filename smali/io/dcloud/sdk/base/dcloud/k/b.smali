.class public Lio/dcloud/sdk/base/dcloud/k/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lio/dcloud/sdk/base/dcloud/k/b;

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/sdk/base/dcloud/k/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/dcloud/sdk/base/dcloud/k/b;->b:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lio/dcloud/sdk/base/dcloud/k/b;
    .locals 1

    .line 1
    sget-object p0, Lio/dcloud/sdk/base/dcloud/k/b;->a:Lio/dcloud/sdk/base/dcloud/k/b;

    if-nez p0, :cond_1

    .line 2
    const-class p0, Lio/dcloud/sdk/base/dcloud/k/b;

    monitor-enter p0

    .line 3
    :try_start_0
    sget-object v0, Lio/dcloud/sdk/base/dcloud/k/b;->a:Lio/dcloud/sdk/base/dcloud/k/b;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lio/dcloud/sdk/base/dcloud/k/b;

    invoke-direct {v0}, Lio/dcloud/sdk/base/dcloud/k/b;-><init>()V

    sput-object v0, Lio/dcloud/sdk/base/dcloud/k/b;->a:Lio/dcloud/sdk/base/dcloud/k/b;

    .line 6
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 8
    :cond_1
    :goto_0
    sget-object p0, Lio/dcloud/sdk/base/dcloud/k/b;->a:Lio/dcloud/sdk/base/dcloud/k/b;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/dcloud/sdk/base/dcloud/k/a;",
            ">;"
        }
    .end annotation

    .line 11
    sget-object v0, Lio/dcloud/sdk/base/dcloud/k/b;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(Lio/dcloud/sdk/base/dcloud/k/a;)V
    .locals 1

    .line 9
    sget-object v0, Lio/dcloud/sdk/base/dcloud/k/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-static {}, Lio/dcloud/h/a/e/f;->a()Lio/dcloud/h/a/e/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/dcloud/h/a/e/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lio/dcloud/sdk/base/dcloud/k/a;)V
    .locals 1

    .line 1
    sget-object v0, Lio/dcloud/sdk/base/dcloud/k/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
