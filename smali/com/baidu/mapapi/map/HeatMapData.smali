.class public Lcom/baidu/mapapi/map/HeatMapData;
.super Ljava/lang/Object;
.source "HeatMapData.java"


# instance fields
.field private a:[D

.field private b:[D

.field private c:[D

.field private d:F


# direct methods
.method public constructor <init>(Ljava/util/Collection;F)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/baidu/mapapi/map/WeightedLatLng;",
            ">;F)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 21
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/baidu/mapapi/map/HeatMapData;->a:[D

    .line 22
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/baidu/mapapi/map/HeatMapData;->b:[D

    .line 23
    new-array v0, v0, [D

    iput-object v0, p0, Lcom/baidu/mapapi/map/HeatMapData;->c:[D

    .line 25
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/map/WeightedLatLng;

    .line 26
    iget-object v4, p0, Lcom/baidu/mapapi/map/HeatMapData;->a:[D

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v3}, Lcom/baidu/mapapi/map/WeightedLatLng;->getPoint()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-double v6, v6

    aput-wide v6, v4, v0

    .line 27
    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMapData;->b:[D

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3}, Lcom/baidu/mapapi/map/WeightedLatLng;->getPoint()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-double v6, v6

    aput-wide v6, v0, v1

    .line 28
    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMapData;->c:[D

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v3}, Lcom/baidu/mapapi/map/WeightedLatLng;->getIntensity()D

    move-result-wide v6

    aput-wide v6, v0, v2

    move v2, v1

    move v1, v4

    move v0, v5

    goto :goto_0

    .line 31
    :cond_0
    iput p2, p0, Lcom/baidu/mapapi/map/HeatMapData;->d:F

    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    iget-object v1, p0, Lcom/baidu/mapapi/map/HeatMapData;->a:[D

    const-string/jumbo v2, "x_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 37
    iget-object v1, p0, Lcom/baidu/mapapi/map/HeatMapData;->b:[D

    const-string/jumbo v2, "y_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 38
    iget-object v1, p0, Lcom/baidu/mapapi/map/HeatMapData;->c:[D

    const-string/jumbo v2, "z_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 39
    iget v1, p0, Lcom/baidu/mapapi/map/HeatMapData;->d:F

    const-string v2, "max_intentity"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method
