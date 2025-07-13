.class public Lcom/bun/miitmdid/core/MdidSdkHelper;
.super Ljava/lang/Object;


# static fields
.field public static TAG:Ljava/lang/String; = "MdidSdkHelper"

.field public static _OuterIsOk:Z = true


# instance fields
.field private sdk_date:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "2020011018"

    iput-object v0, p0, Lcom/bun/miitmdid/core/MdidSdkHelper;->sdk_date:Ljava/lang/String;

    return-void
.end method

.method public static InitSdk(Landroid/content/Context;ZLcom/bun/supplier/IIdentifierListener;)I
    .locals 9

    const-string v0, "InitSdk"

    const-string v1, "com.bun.miitmdid.core.MdidSdk"

    const v2, 0xf63e7

    :try_start_0
    sget-boolean v3, Lcom/bun/miitmdid/core/MdidSdkHelper;->_OuterIsOk:Z

    const/4 v4, 0x0

    if-nez v3, :cond_0

    if-eqz p2, :cond_5

    new-instance p0, Lcom/bun/supplier/a;

    invoke-direct {p0}, Lcom/bun/supplier/a;-><init>()V

    invoke-interface {p2, v4, p0}, Lcom/bun/supplier/IIdentifierListener;->OnSupport(ZLcom/bun/supplier/IdSupplier;)V

    goto/16 :goto_2

    :cond_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "not found class:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p1, p0}, Lcom/bun/miitmdid/core/MdidSdkHelper;->logd(ZLjava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    if-nez v5, :cond_2

    const-string p0, "not found MdidSdk Constructor"

    goto :goto_0

    :cond_2
    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    const-string p0, "Create MdidSdk Instance failed"

    goto :goto_0

    :cond_3
    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v4

    const-class v8, Lcom/bun/supplier/IIdentifierListener;

    aput-object v8, v7, v1

    invoke-virtual {v3, v0, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-nez v3, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "not found MdidSdk "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " function"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    new-array v0, v6, [Ljava/lang/Object;

    aput-object p0, v0, v4

    aput-object p2, v0, v1

    invoke-virtual {v3, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "call and retvalue:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bun/miitmdid/core/MdidSdkHelper;->logd(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_1

    :catch_3
    move-exception p0

    goto :goto_1

    :catch_4
    move-exception p0

    :goto_1
    invoke-static {p1, p0}, Lcom/bun/miitmdid/core/MdidSdkHelper;->loge(ZLjava/lang/Exception;)V

    const-string p0, "exception exit"

    invoke-static {p1, p0}, Lcom/bun/miitmdid/core/MdidSdkHelper;->logd(ZLjava/lang/String;)V

    :cond_5
    :goto_2
    return v2
.end method

.method public static logd(ZLjava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/bun/miitmdid/core/MdidSdkHelper;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static loge(ZLjava/lang/Exception;)V
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/bun/miitmdid/core/MdidSdkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
