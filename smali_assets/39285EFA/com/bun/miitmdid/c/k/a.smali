.class public Lcom/bun/miitmdid/c/k/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "reflect exception!"

    const-string v1, "IdentifierManager"

    :try_start_0
    const-string v2, "com.android.id.impl.IdProviderImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/bun/miitmdid/c/k/a;->b:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/bun/miitmdid/c/k/a;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v1, v0, v2}, Lcom/bun/lib/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_1
    sget-object v4, Lcom/bun/miitmdid/c/k/a;->b:Ljava/lang/Class;

    if-eqz v4, :cond_0

    const-string v5, "getOAID"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/bun/miitmdid/c/k/a;->c:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    invoke-static {v1, v0, v4}, Lcom/bun/lib/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    :try_start_2
    sget-object v4, Lcom/bun/miitmdid/c/k/a;->b:Ljava/lang/Class;

    if-eqz v4, :cond_1

    const-string v5, "getVAID"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/bun/miitmdid/c/k/a;->d:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v4

    invoke-static {v1, v0, v4}, Lcom/bun/lib/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    :try_start_3
    sget-object v4, Lcom/bun/miitmdid/c/k/a;->b:Ljava/lang/Class;

    if-eqz v4, :cond_2

    const-string v5, "getAAID"

    new-array v3, v3, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v3, v2

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/bun/miitmdid/c/k/a;->e:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    invoke-static {v1, v0, v2}, Lcom/bun/lib/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    return-void
.end method

.method public static native a(Landroid/content/Context;)Ljava/lang/String;
.end method

.method private static native a(Landroid/content/Context;Ljava/lang/reflect/Method;)Ljava/lang/String;
.end method

.method public static native a()Z
.end method

.method public static native b(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public static native c(Landroid/content/Context;)Ljava/lang/String;
.end method
