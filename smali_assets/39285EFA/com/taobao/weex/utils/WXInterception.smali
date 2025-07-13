.class public Lcom/taobao/weex/utils/WXInterception;
.super Ljava/lang/Object;
.source "WXInterception.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/utils/WXInterception$InterceptionHandler;,
        Lcom/taobao/weex/utils/WXInterception$Intercepted;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs proxy(Ljava/lang/Object;Lcom/taobao/weex/utils/WXInterception$InterceptionHandler;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "delegatee",
            "handler",
            "interfaces"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/taobao/weex/utils/WXInterception$InterceptionHandler<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 43
    invoke-virtual {p1, p0}, Lcom/taobao/weex/utils/WXInterception$InterceptionHandler;->setDelegate(Ljava/lang/Object;)V

    .line 44
    const-class p0, Lcom/taobao/weex/utils/WXInterception;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {p0, p2, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static proxy(Ljava/lang/Object;Ljava/lang/Class;Lcom/taobao/weex/utils/WXInterception$InterceptionHandler;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "delegatee",
            "interface_class",
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/taobao/weex/utils/WXInterception$InterceptionHandler<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 33
    instance-of v0, p0, Lcom/taobao/weex/utils/WXInterception$Intercepted;

    if-eqz v0, :cond_0

    return-object p0

    .line 36
    :cond_0
    invoke-virtual {p2, p0}, Lcom/taobao/weex/utils/WXInterception$InterceptionHandler;->setDelegate(Ljava/lang/Object;)V

    .line 37
    const-class p0, Lcom/taobao/weex/utils/WXInterception;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    const-class v1, Lcom/taobao/weex/utils/WXInterception$Intercepted;

    aput-object v1, v0, p1

    invoke-static {p0, v0, p2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
