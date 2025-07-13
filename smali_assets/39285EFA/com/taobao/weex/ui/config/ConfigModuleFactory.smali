.class public Lcom/taobao/weex/ui/config/ConfigModuleFactory;
.super Ljava/lang/Object;
.source "ConfigModuleFactory.java"

# interfaces
.implements Lcom/taobao/weex/bridge/ModuleFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/taobao/weex/common/WXModule;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/taobao/weex/bridge/ModuleFactory<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WeexScanConfigRegister"


# instance fields
.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mClassName:Ljava/lang/String;

.field private mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mMethodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/bridge/Invoker;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private methods:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mName",
            "mClassName",
            "methods"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mName:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mClassName:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->methods:[Ljava/lang/String;

    return-void
.end method

.method public static fromConfig(Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/weex/ui/config/ConfigModuleFactory;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    const-string v0, "WeexScanConfigRegister"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v2, "name"

    .line 147
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "className"

    .line 148
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "methods"

    .line 149
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p0

    .line 150
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 154
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " resolve module "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " className "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " methods "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_2
    new-instance v5, Lcom/taobao/weex/ui/config/ConfigModuleFactory;

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/JSONArray;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-direct {v5, v2, v3, p0}, Lcom/taobao/weex/ui/config/ConfigModuleFactory;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :cond_3
    :goto_0
    return-object v1

    :catch_0
    move-exception p0

    .line 159
    invoke-static {v0, p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private generateMethodMap()V
    .locals 12

    .line 103
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extractMethodNames:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mClazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WeexScanConfigRegister"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mClazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_8

    aget-object v5, v1, v4

    .line 110
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_7

    aget-object v9, v6, v8

    if-eqz v9, :cond_6

    .line 112
    instance-of v10, v9, Lcom/taobao/weex/annotation/JSMethod;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v11, "_"

    if-eqz v10, :cond_2

    .line 113
    :try_start_1
    check-cast v9, Lcom/taobao/weex/annotation/JSMethod;

    .line 114
    invoke-interface {v9}, Lcom/taobao/weex/annotation/JSMethod;->alias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_1
    invoke-interface {v9}, Lcom/taobao/weex/annotation/JSMethod;->alias()Ljava/lang/String;

    move-result-object v6

    .line 115
    :goto_2
    new-instance v7, Lcom/taobao/weex/bridge/MethodInvoker;

    invoke-interface {v9}, Lcom/taobao/weex/annotation/JSMethod;->uiThread()Z

    move-result v8

    invoke-direct {v7, v5, v8}, Lcom/taobao/weex/bridge/MethodInvoker;-><init>(Ljava/lang/reflect/Method;Z)V

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 117
    :cond_2
    instance-of v10, v9, Lcom/taobao/weex/common/WXModuleAnno;

    if-eqz v10, :cond_3

    .line 118
    check-cast v9, Lcom/taobao/weex/common/WXModuleAnno;

    .line 119
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/taobao/weex/bridge/MethodInvoker;

    invoke-interface {v9}, Lcom/taobao/weex/common/WXModuleAnno;->runOnUIThread()Z

    move-result v8

    invoke-direct {v7, v5, v8}, Lcom/taobao/weex/bridge/MethodInvoker;-><init>(Ljava/lang/reflect/Method;Z)V

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 121
    :cond_3
    instance-of v10, v9, Lio/dcloud/feature/uniapp/annotation/UniJSMethod;

    if-eqz v10, :cond_5

    .line 122
    check-cast v9, Lio/dcloud/feature/uniapp/annotation/UniJSMethod;

    .line 123
    invoke-interface {v9}, Lio/dcloud/feature/uniapp/annotation/UniJSMethod;->alias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_4
    invoke-interface {v9}, Lio/dcloud/feature/uniapp/annotation/UniJSMethod;->alias()Ljava/lang/String;

    move-result-object v6

    .line 124
    :goto_3
    new-instance v7, Lcom/taobao/weex/bridge/MethodInvoker;

    invoke-interface {v9}, Lio/dcloud/feature/uniapp/annotation/UniJSMethod;->uiThread()Z

    move-result v8

    invoke-direct {v7, v5, v8}, Lcom/taobao/weex/bridge/MethodInvoker;-><init>(Ljava/lang/reflect/Method;Z)V

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 126
    :cond_5
    instance-of v10, v9, Lio/dcloud/feature/uniapp/common/UniModuleAnno;

    if-eqz v10, :cond_6

    .line 127
    check-cast v9, Lio/dcloud/feature/uniapp/common/UniModuleAnno;

    .line 128
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/taobao/weex/bridge/MethodInvoker;

    invoke-interface {v9}, Lio/dcloud/feature/uniapp/common/UniModuleAnno;->runOnUIThread()Z

    move-result v8

    invoke-direct {v7, v5, v8}, Lcom/taobao/weex/bridge/MethodInvoker;-><init>(Ljava/lang/reflect/Method;Z)V

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "[WXModuleManager] extractMethodNames:"

    .line 135
    invoke-static {v2, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    :cond_8
    iput-object v0, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mMethodMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public buildInstance()Lcom/taobao/weex/common/WXModule;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mClazz:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getClassLoaderAdapter()Lcom/taobao/weex/adapter/ClassLoaderAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mClassName:Ljava/lang/String;

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/adapter/ClassLoaderAdapter;->getModuleClass(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mClazz:Ljava/lang/Class;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mClazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/common/WXModule;

    return-object v0
.end method

.method public buildInstance(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/common/WXModule;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/WXSDKInstance;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->buildInstance()Lcom/taobao/weex/common/WXModule;

    move-result-object p1

    return-object p1

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mClazz:Ljava/lang/Class;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 95
    :cond_1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getClassLoaderAdapter()Lcom/taobao/weex/adapter/ClassLoaderAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mClassName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/adapter/ClassLoaderAdapter;->getModuleClass(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mClazz:Ljava/lang/Class;

    .line 96
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mClassLoader:Ljava/lang/ClassLoader;

    .line 98
    :cond_2
    iget-object p1, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mClazz:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/common/WXModule;

    return-object p1
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

    .line 76
    iget-object v0, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mMethodMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->generateMethodMap()V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mMethodMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/bridge/Invoker;

    return-object p1
.end method

.method public getMethods()[Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->methods:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mName:Ljava/lang/String;

    return-object v0
.end method
