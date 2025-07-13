.class public final Lcom/baidu/platform/comapi/map/af;
.super Ljava/lang/Object;
.source "OverlayMapCallBack.java"

# interfaces
.implements Lcom/baidu/platform/comjni/map/basemap/a;


# static fields
.field static final a:Ljava/lang/String; = "com.baidu.platform.comapi.map.af"


# instance fields
.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/baidu/platform/comapi/map/InnerOverlay;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/af;->b:Ljava/util/Map;

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/af;->c:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    .line 25
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/af;->c:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;JI)I
    .locals 5

    .line 44
    sget-boolean p4, Lcom/baidu/platform/comapi/map/z;->a:Z

    if-eqz p4, :cond_0

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 47
    :goto_0
    iget-object p4, p0, Lcom/baidu/platform/comapi/map/af;->b:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/baidu/platform/comapi/map/InnerOverlay;

    if-eqz p4, :cond_4

    .line 49
    invoke-virtual {p4}, Lcom/baidu/platform/comapi/map/InnerOverlay;->getData()Ljava/lang/String;

    move-result-object v2

    .line 53
    iget-object v3, p0, Lcom/baidu/platform/comapi/map/af;->c:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v3, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->LayersIsShow(J)Z

    move-result v3

    const-string v4, "jsondata"

    if-eqz v3, :cond_1

    .line 54
    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p4}, Lcom/baidu/platform/comapi/map/InnerOverlay;->getParam()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "param"

    .line 57
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 60
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_2
    :goto_1
    sget-boolean p1, Lcom/baidu/platform/comapi/map/z;->a:Z

    if-eqz p1, :cond_3

    .line 64
    sget-object p1, Lcom/baidu/platform/comapi/map/af;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MapLayerDataReq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " tag:"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p4}, Lcom/baidu/platform/comapi/map/InnerOverlay;->getLayerTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ["

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v0

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms] LayerData:"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 64
    invoke-static {p1, p2}, Lcom/baidu/platform/comapi/map/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_3
    invoke-virtual {p4}, Lcom/baidu/platform/comapi/map/InnerOverlay;->getType()I

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public a()V
    .locals 7

    .line 94
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/af;->c:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/af;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 96
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 97
    iget-object v2, p0, Lcom/baidu/platform/comapi/map/af;->c:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ClearLayer(J)V

    .line 98
    iget-object v2, p0, Lcom/baidu/platform/comapi/map/af;->c:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->RemoveLayer(J)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/af;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/map/InnerOverlay;)V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/af;->b:Ljava/util/Map;

    iget-wide v1, p1, Lcom/baidu/platform/comapi/map/InnerOverlay;->mLayerID:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-wide v0, p1, Lcom/baidu/platform/comapi/map/InnerOverlay;->mLayerID:J

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/af;->c:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p1, v0, v1, v2}, Lcom/baidu/platform/comapi/map/InnerOverlay;->SetMapParam(JLcom/baidu/platform/comjni/map/basemap/AppBaseMap;)V

    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/map/Overlay;)V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/af;->b:Ljava/util/Map;

    iget-wide v1, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(J)Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/af;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
