.class Lcom/baidu/mapsdkplatform/comapi/map/a/f;
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

    .line 148
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/f;->b:Lcom/baidu/mapsdkplatform/comapi/map/a/c;

    iput-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/f;->a:Lcom/baidu/mapapi/map/track/TraceOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/f;->b:Lcom/baidu/mapsdkplatform/comapi/map/a/c;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/f;->a:Lcom/baidu/mapapi/map/track/TraceOverlay;

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->c(Lcom/baidu/mapsdkplatform/comapi/map/a/c;Lcom/baidu/mapapi/map/track/TraceOverlay;)V

    .line 152
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/f;->b:Lcom/baidu/mapsdkplatform/comapi/map/a/c;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->a(Lcom/baidu/mapsdkplatform/comapi/map/a/c;)Lcom/baidu/mapsdkplatform/comapi/map/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->a()V

    return-void
.end method
