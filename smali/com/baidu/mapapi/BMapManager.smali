.class public Lcom/baidu/mapapi/BMapManager;
.super Ljava/lang/Object;
.source "BMapManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroy()V
    .locals 1

    .line 15
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/a;->a()Lcom/baidu/mapsdkplatform/comapi/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/a;->d()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 20
    :try_start_0
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/a;->a()Lcom/baidu/mapsdkplatform/comapi/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/a;->e()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static init()V
    .locals 1

    .line 9
    :try_start_0
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/a;->a()Lcom/baidu/mapsdkplatform/comapi/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/a;->b()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method
