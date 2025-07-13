.class public Lio/dcloud/h/a/d/b/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/h/a/d/b/g$a;
    }
.end annotation


# static fields
.field private static a:Lio/dcloud/h/a/d/b/g;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lio/dcloud/h/a/d/b/g;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;)I
    .locals 9

    :try_start_0
    const-string v0, "com.bun.miitmdid.core.MdidSdkHelper"

    .line 10
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v1, "com.bun.supplier.IIdentifierListener"

    .line 17
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v1, "com.bun.miitmdid.interfaces.IIdentifierListener"

    .line 19
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 21
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    new-instance v6, Lio/dcloud/h/a/d/b/g$a;

    invoke-direct {v6, p0, p1}, Lio/dcloud/h/a/d/b/g$a;-><init>(Lio/dcloud/h/a/d/b/g;Landroid/content/Context;)V

    invoke-static {v2, v4, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v4, "InitSdk"

    const/4 v6, 0x3

    :try_start_3
    new-array v7, v6, [Ljava/lang/Class;

    .line 23
    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v5

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    const/4 v8, 0x2

    aput-object v1, v7, v8

    invoke-virtual {v0, v4, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    .line 27
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object p1, v4, v3

    aput-object v2, v4, v8

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 29
    :cond_0
    instance-of p1, v1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 30
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return p1

    :catch_1
    :cond_1
    const p1, 0xf63e7

    return p1

    .line 31
    :catch_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "not support"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a()Lio/dcloud/h/a/d/b/g;
    .locals 2

    .line 2
    sget-object v0, Lio/dcloud/h/a/d/b/g;->a:Lio/dcloud/h/a/d/b/g;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lio/dcloud/h/a/d/b/g;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lio/dcloud/h/a/d/b/g;->a:Lio/dcloud/h/a/d/b/g;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lio/dcloud/h/a/d/b/g;

    invoke-direct {v1}, Lio/dcloud/h/a/d/b/g;-><init>()V

    sput-object v1, Lio/dcloud/h/a/d/b/g;->a:Lio/dcloud/h/a/d/b/g;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 9
    :cond_1
    :goto_0
    sget-object v0, Lio/dcloud/h/a/d/b/g;->a:Lio/dcloud/h/a/d/b/g;

    return-object v0
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 32
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 34
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_1

    .line 35
    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    :goto_0
    const/4 p2, 0x1

    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 40
    array-length p2, p3

    if-nez p2, :cond_2

    move-object p3, v0

    :cond_2
    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v0
.end method

.method static synthetic a(Lio/dcloud/h/a/d/b/g;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/h/a/d/b/g;->b:Ljava/lang/String;

    return-object p1
.end method

.method private b(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/h/a/d/b/g;->a(Landroid/content/Context;)I

    move-result p1

    const v0, 0xf63e4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0xf63e5

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0xf63e3

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const v0, 0xf63e6

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method


# virtual methods
.method public c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/h/a/d/b/g;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lio/dcloud/h/a/d/b/g;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "dcloud-ads"

    const-string v1, "oaid"

    .line 5
    invoke-static {p1, v0, v1}, Lio/dcloud/h/a/e/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/h/a/d/b/g;->b:Ljava/lang/String;

    .line 8
    :cond_1
    iget-object p1, p0, Lio/dcloud/h/a/d/b/g;->b:Ljava/lang/String;

    return-object p1
.end method
