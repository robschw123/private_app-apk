.class public Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;
.super Ljava/lang/Object;
.source "ExternalLoaderComponentHolder.java"

# interfaces
.implements Lcom/taobao/weex/ui/IFComponentHolder;


# static fields
.field public static final TAG:Ljava/lang/String; = "SimpleComponentHolder"


# instance fields
.field private mClass:Ljava/lang/Class;

.field private final mClzGetter:Lcom/taobao/weex/ui/IExternalComponentGetter;

.field private mMethodInvokers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/bridge/Invoker;",
            ">;"
        }
    .end annotation
.end field

.field private mPropertyInvokers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/bridge/Invoker;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/taobao/weex/ui/IExternalComponentGetter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "clzGetter"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->mClzGetter:Lcom/taobao/weex/ui/IExternalComponentGetter;

    .line 47
    iput-object p1, p0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->mType:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized generate()Z
    .locals 2

    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->mClass:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 56
    monitor-exit p0

    return v0

    .line 59
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/taobao/weex/ui/SimpleComponentHolder;->getMethods(Ljava/lang/Class;)Landroid/util/Pair;

    move-result-object v0

    .line 60
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->mPropertyInvokers:Ljava/util/Map;

    .line 61
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->mMethodInvokers:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    .line 62
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized createInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instance",
            "parent",
            "basicComponentData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->mClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->mClzGetter:Lcom/taobao/weex/ui/IExternalComponentGetter;

    iget-object v1, p0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->mType:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/taobao/weex/ui/IExternalComponentGetter;->getExternalComponentClass(Ljava/lang/String;Lcom/taobao/weex/WXSDKInstance;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->mClass:Ljava/lang/Class;

    .line 70
    :cond_0
    new-instance v0, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;

    iget-object v1, p0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->mClass:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;-><init>(Ljava/lang/Class;)V

    .line 71
    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/ui/ComponentCreator;->createInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    .line 73
    invoke-virtual {p1, p0}, Lcom/taobao/weex/ui/component/WXComponent;->bindHolder(Lcom/taobao/weex/ui/IFComponentHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getMethodInvoker(Ljava/lang/String;)Lcom/taobao/weex/bridge/Invoker;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->mMethodInvokers:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->generate()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->mMethodInvokers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/bridge/Invoker;

    return-object p1
.end method

.method public declared-synchronized getMethods()[Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->mMethodInvokers:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->generate()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-object v0

    .line 100
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->mMethodInvokers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPropertyInvoker(Ljava/lang/String;)Lcom/taobao/weex/bridge/Invoker;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->mPropertyInvokers:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->generate()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 80
    monitor-exit p0

    return-object p1

    .line 83
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;->mPropertyInvokers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/bridge/Invoker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public loadIfNonLazy()V
    .locals 0

    return-void
.end method
