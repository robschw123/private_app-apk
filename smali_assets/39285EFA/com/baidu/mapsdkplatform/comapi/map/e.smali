.class synthetic Lcom/baidu/mapsdkplatform/comapi/map/e;
.super Ljava/lang/Object;
.source "BaseMapInner.java"


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 803
    invoke-static {}, Lcom/baidu/mapapi/map/MapLayer;->values()[Lcom/baidu/mapapi/map/MapLayer;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->a:[I

    :try_start_0
    sget-object v1, Lcom/baidu/mapapi/map/MapLayer;->MAP_LAYER_LOCATION:Lcom/baidu/mapapi/map/MapLayer;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/MapLayer;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->a:[I

    sget-object v1, Lcom/baidu/mapapi/map/MapLayer;->MAP_LAYER_OVERLAY:Lcom/baidu/mapapi/map/MapLayer;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/MapLayer;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->a:[I

    sget-object v1, Lcom/baidu/mapapi/map/MapLayer;->MAP_LAYER_INDOOR_POI:Lcom/baidu/mapapi/map/MapLayer;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/MapLayer;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->a:[I

    sget-object v1, Lcom/baidu/mapapi/map/MapLayer;->MAP_LAYER_POI_MARKER:Lcom/baidu/mapapi/map/MapLayer;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/MapLayer;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
