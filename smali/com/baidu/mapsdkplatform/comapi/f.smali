.class public Lcom/baidu/mapsdkplatform/comapi/f;
.super Landroid/content/BroadcastReceiver;
.source "NetworkListener.java"


# static fields
.field public static final a:Ljava/lang/String; = "f"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-static {p1}, Lcom/baidu/mapapi/NetworkUtil;->getCurrentNetMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 34
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/util/h;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/f;->a(Landroid/content/Context;)V

    .line 24
    invoke-static {p1}, Lcom/baidu/mapapi/NetworkUtil;->updateNetworkProxy(Landroid/content/Context;)V

    return-void
.end method
