.class public Lcom/baidu/location/b/r;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Lcom/baidu/location/b/r;


# instance fields
.field private c:Landroid/content/SharedPreferences;

.field private d:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/location/b/r;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/b/r;->c:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/baidu/location/b/r;->d:Landroid/content/SharedPreferences;

    :try_start_0
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "MapCoreServicePreIA"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/b/r;->c:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iput-object v0, p0, Lcom/baidu/location/b/r;->c:Landroid/content/SharedPreferences;

    :cond_0
    :goto_0
    return-void
.end method

.method public static a()Lcom/baidu/location/b/r;
    .locals 2

    sget-object v0, Lcom/baidu/location/b/r;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/baidu/location/b/r;->b:Lcom/baidu/location/b/r;

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/location/b/r;

    invoke-direct {v1}, Lcom/baidu/location/b/r;-><init>()V

    sput-object v1, Lcom/baidu/location/b/r;->b:Lcom/baidu/location/b/r;

    :cond_0
    sget-object v1, Lcom/baidu/location/b/r;->b:Lcom/baidu/location/b/r;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/b/r;->d:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "MapCoreServicePregck"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/b/r;->d:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/location/b/r;->d:Landroid/content/SharedPreferences;

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/baidu/location/b/r;->d:Landroid/content/SharedPreferences;

    return-object p1
.end method
