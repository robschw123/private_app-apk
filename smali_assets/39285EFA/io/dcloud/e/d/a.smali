.class public Lio/dcloud/e/d/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/e/d/a$b;,
        Lio/dcloud/e/d/a$c;
    }
.end annotation


# instance fields
.field private a:Lio/dcloud/e/d/a$b;


# direct methods
.method public constructor <init>(Lio/dcloud/e/d/a$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/e/d/a;->a:Lio/dcloud/e/d/a$b;

    return-void
.end method

.method private a(Landroid/content/Context;)I
    .locals 10

    :try_start_0
    const-string v0, "com.bun.miitmdid.core.MdidSdkHelper"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v1, "com.bun.supplier.IIdentifierListener"

    .line 14
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v1, "com.bun.miitmdid.interfaces.IIdentifierListener"

    .line 16
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 18
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    new-instance v6, Lio/dcloud/e/d/a$c;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lio/dcloud/e/d/a$c;-><init>(Lio/dcloud/e/d/a;Lio/dcloud/e/d/a$a;)V

    invoke-static {v2, v4, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v4, "InitSdk"

    const/4 v6, 0x3

    :try_start_3
    new-array v8, v6, [Ljava/lang/Class;

    .line 20
    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v5

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    const/4 v9, 0x2

    aput-object v1, v8, v9

    invoke-virtual {v0, v4, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v5

    .line 24
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object p1, v1, v3

    aput-object v2, v1, v9

    invoke-virtual {v0, v7, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 26
    :cond_0
    instance-of p1, v7, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 27
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return p1

    :catch_1
    :cond_1
    const p1, 0xf63e7

    return p1

    :catch_2
    nop

    .line 28
    invoke-static {}, Lio/dcloud/common/util/PdrUtil;->checkIntl()Z

    move-result v0

    const v1, 0xf63e4

    if-eqz v0, :cond_2

    return v1

    .line 30
    :cond_2
    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->isChannelGooglePlay()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 33
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    sget v1, Lio/dcloud/base/R$string;->dcloud_common_app_not_oaid:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lio/dcloud/e/d/a;)Lio/dcloud/e/d/a$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/dcloud/e/d/a;->a:Lio/dcloud/e/d/a$b;

    return-object p0
.end method


# virtual methods
.method public b(Landroid/content/Context;)Z
    .locals 3

    .line 1
    invoke-static {}, Lio/dcloud/common/util/PdrUtil;->checkIntl()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lio/dcloud/e/d/a;->a(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    const v2, 0xf63e4

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const v2, 0xf63e5

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    const v2, 0xf63e3

    if-ne p1, v2, :cond_3

    goto :goto_0

    :cond_3
    const v2, 0xf63e6

    if-ne p1, v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    :goto_0
    return v1
.end method
