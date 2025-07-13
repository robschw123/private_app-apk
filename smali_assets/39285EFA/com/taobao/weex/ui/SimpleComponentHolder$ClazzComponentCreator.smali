.class public Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;
.super Ljava/lang/Object;
.source "SimpleComponentHolder.java"

# interfaces
.implements Lcom/taobao/weex/ui/ComponentCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/SimpleComponentHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClazzComponentCreator"
.end annotation


# instance fields
.field private mAbsConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompClz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;->mCompClz:Ljava/lang/Class;

    return-void
.end method

.method private getComponentConstructor(Ljava/lang/Boolean;)Ljava/lang/reflect/Constructor;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isAbs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;->mCompClz:Ljava/lang/Class;

    .line 86
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    const-class p1, Lio/dcloud/feature/uniapp/UniSDKInstance;

    .line 88
    const-class v1, Lio/dcloud/feature/uniapp/ui/component/AbsVContainer;

    .line 89
    const-class v2, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;

    goto :goto_0

    .line 91
    :cond_0
    const-class p1, Lcom/taobao/weex/WXSDKInstance;

    .line 92
    const-class v1, Lcom/taobao/weex/ui/component/WXVContainer;

    .line 93
    const-class v2, Lcom/taobao/weex/ui/action/BasicComponentData;

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    :try_start_0
    new-array v7, v6, [Ljava/lang/Class;

    aput-object p1, v7, v5

    aput-object v1, v7, v4

    aput-object v2, v7, v3

    .line 96
    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v7, "ClazzComponentCreator"

    const-string v8, "Use deprecated component constructor"

    .line 98
    invoke-static {v7, v8}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x4

    :try_start_1
    new-array v8, v7, [Ljava/lang/Class;

    aput-object p1, v8, v5

    aput-object v1, v8, v4

    .line 101
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    aput-object v2, v8, v6

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/4 v8, 0x5

    :try_start_2
    new-array v8, v8, [Ljava/lang/Class;

    aput-object p1, v8, v5

    aput-object v1, v8, v4

    .line 105
    const-class p1, Ljava/lang/String;

    aput-object p1, v8, v3

    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object p1, v8, v6

    aput-object v2, v8, v7

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    return-object p1

    .line 107
    :catch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "        "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "shutao"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance p1, Lcom/taobao/weex/common/WXRuntimeException;

    const-string v0, "Can\'t find constructor of component."

    invoke-direct {p1, v0}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public createInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 7
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

    .line 117
    const-class v0, Lio/dcloud/feature/uniapp/ui/component/UniVContainer;

    iget-object v1, p0, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;->mCompClz:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-class v0, Lio/dcloud/feature/uniapp/ui/component/UniComponent;

    iget-object v3, p0, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;->mCompClz:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 120
    iget-object v3, p0, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;->mAbsConstructor:Ljava/lang/reflect/Constructor;

    if-nez v3, :cond_2

    .line 121
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;->getComponentConstructor(Ljava/lang/Boolean;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;->mAbsConstructor:Ljava/lang/reflect/Constructor;

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;->mAbsConstructor:Ljava/lang/reflect/Constructor;

    goto :goto_2

    .line 125
    :cond_3
    iget-object v3, p0, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;->mConstructor:Ljava/lang/reflect/Constructor;

    if-nez v3, :cond_4

    .line 126
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;->getComponentConstructor(Ljava/lang/Boolean;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 128
    :cond_4
    iget-object v0, p0, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 130
    :goto_2
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-ne v3, v5, :cond_5

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    aput-object p3, v3, v4

    .line 134
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/WXComponent;

    goto :goto_3

    :cond_5
    const/4 v6, 0x4

    if-ne v3, v6, :cond_6

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    .line 136
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v4

    aput-object p3, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/WXComponent;

    goto :goto_3

    :cond_6
    new-array p3, v6, [Ljava/lang/Object;

    aput-object p1, p3, v2

    aput-object p2, p3, v1

    .line 139
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v4

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXVContainer;->isLazy()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p3, v5

    invoke-virtual {v0, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/WXComponent;

    :goto_3
    return-object p1
.end method
