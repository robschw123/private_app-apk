.class Lcom/baidu/mapapi/map/WearMapView$a;
.super Landroid/os/Handler;
.source "WearMapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/map/WearMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mapapi/map/WearMapView;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/map/WearMapView;Landroid/content/Context;)V
    .locals 0

    .line 750
    iput-object p1, p0, Lcom/baidu/mapapi/map/WearMapView$a;->a:Lcom/baidu/mapapi/map/WearMapView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 751
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/baidu/mapapi/map/WearMapView$a;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 760
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 761
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 763
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapapi/map/WearMapView$a;->a:Lcom/baidu/mapapi/map/WearMapView;

    invoke-static {p1}, Lcom/baidu/mapapi/map/WearMapView;->g(Lcom/baidu/mapapi/map/WearMapView;)Lcom/baidu/mapsdkplatform/comapi/map/ad;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 766
    :cond_2
    iget-object p1, p0, Lcom/baidu/mapapi/map/WearMapView$a;->a:Lcom/baidu/mapapi/map/WearMapView;

    invoke-static {p1, v0}, Lcom/baidu/mapapi/map/WearMapView;->b(Lcom/baidu/mapapi/map/WearMapView;Z)V

    :goto_0
    return-void
.end method
