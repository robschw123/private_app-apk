.class Lcom/baidu/mapsdkplatform/comapi/map/a/e;
.super Ljava/lang/Object;
.source "TraceOverlayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mapapi/map/track/TraceOverlay;

.field final synthetic b:Lcom/baidu/mapsdkplatform/comapi/map/a/c;


# direct methods
.method constructor <init>(Lcom/baidu/mapsdkplatform/comapi/map/a/c;Lcom/baidu/mapapi/map/track/TraceOverlay;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/e;->b:Lcom/baidu/mapsdkplatform/comapi/map/a/c;

    iput-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/e;->a:Lcom/baidu/mapapi/map/track/TraceOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/e;->b:Lcom/baidu/mapsdkplatform/comapi/map/a/c;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->a(Lcom/baidu/mapsdkplatform/comapi/map/a/c;)Lcom/baidu/mapsdkplatform/comapi/map/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/e;->b:Lcom/baidu/mapsdkplatform/comapi/map/a/c;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->b(Lcom/baidu/mapsdkplatform/comapi/map/a/c;)Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/e;->b:Lcom/baidu/mapsdkplatform/comapi/map/a/c;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/e;->a:Lcom/baidu/mapapi/map/track/TraceOverlay;

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->c(Lcom/baidu/mapsdkplatform/comapi/map/a/c;Lcom/baidu/mapapi/map/track/TraceOverlay;)V

    .line 115
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/e;->b:Lcom/baidu/mapsdkplatform/comapi/map/a/c;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->a(Lcom/baidu/mapsdkplatform/comapi/map/a/c;)Lcom/baidu/mapsdkplatform/comapi/map/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->a()V

    :cond_1
    :goto_0
    return-void
.end method
