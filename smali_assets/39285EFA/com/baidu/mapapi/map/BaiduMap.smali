.class public Lcom/baidu/mapapi/map/BaiduMap;
.super Ljava/lang/Object;
.source "BaiduMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/map/BaiduMap$OnSynchronizationListener;,
        Lcom/baidu/mapapi/map/BaiduMap$OnMapRenderValidDataListener;,
        Lcom/baidu/mapapi/map/BaiduMap$OnBaseIndoorMapListener;,
        Lcom/baidu/mapapi/map/BaiduMap$OnMapDrawFrameCallback;,
        Lcom/baidu/mapapi/map/BaiduMap$SnapshotReadyCallback;,
        Lcom/baidu/mapapi/map/BaiduMap$OnMyLocationClickListener;,
        Lcom/baidu/mapapi/map/BaiduMap$OnMarkerDragListener;,
        Lcom/baidu/mapapi/map/BaiduMap$OnMultiPointClickListener;,
        Lcom/baidu/mapapi/map/BaiduMap$OnPolylineClickListener;,
        Lcom/baidu/mapapi/map/BaiduMap$OnMarkerClickListener;,
        Lcom/baidu/mapapi/map/BaiduMap$OnMapLongClickListener;,
        Lcom/baidu/mapapi/map/BaiduMap$OnMapDoubleClickListener;,
        Lcom/baidu/mapapi/map/BaiduMap$OnMapRenderCallback;,
        Lcom/baidu/mapapi/map/BaiduMap$OnHeatMapDrawFrameCallBack;,
        Lcom/baidu/mapapi/map/BaiduMap$OnMapLoadedCallback;,
        Lcom/baidu/mapapi/map/BaiduMap$OnMapClickListener;,
        Lcom/baidu/mapapi/map/BaiduMap$onMapGestureListener;,
        Lcom/baidu/mapapi/map/BaiduMap$OnMapTouchListener;,
        Lcom/baidu/mapapi/map/BaiduMap$OnMapStatusChangeListener;
    }
.end annotation


# static fields
.field public static final MAP_TYPE_NONE:I = 0x3

.field public static final MAP_TYPE_NORMAL:I = 0x1

.field public static final MAP_TYPE_SATELLITE:I = 0x2

.field public static final REAL_MAX_ZOOM_LEVEL:F = 21.0f

.field public static final REAL_MIN_ZOOM_LEVEL:F = 4.0f

.field private static final e:Ljava/lang/String; = "BaiduMap"

.field public static mapStatusReason:I = 0x100


# instance fields
.field private A:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/baidu/mapapi/map/BaiduMap$OnMultiPointClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private B:Lcom/baidu/mapapi/map/BaiduMap$OnMarkerDragListener;

.field private C:Lcom/baidu/mapapi/map/BaiduMap$OnMyLocationClickListener;

.field private D:Lcom/baidu/mapapi/map/BaiduMap$SnapshotReadyCallback;

.field private E:Lcom/baidu/mapapi/map/BaiduMap$OnMapDrawFrameCallback;

.field private F:Lcom/baidu/mapapi/map/BaiduMap$OnBaseIndoorMapListener;

.field private G:Lcom/baidu/mapapi/map/BaiduMap$OnMapRenderValidDataListener;

.field private H:Lcom/baidu/mapapi/map/BaiduMap$OnHeatMapDrawFrameCallBack;

.field private I:Lcom/baidu/mapapi/map/BaiduMap$OnSynchronizationListener;

.field private J:Lcom/baidu/mapapi/map/TileOverlay;

.field private K:Lcom/baidu/mapapi/map/HeatMap;

.field private L:Ljava/util/concurrent/locks/Lock;

.field private M:Ljava/util/concurrent/locks/Lock;

.field private N:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/baidu/mapapi/map/InfoWindow;",
            ">;"
        }
    .end annotation
.end field

.field private O:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/baidu/mapapi/map/InfoWindow;",
            "Lcom/baidu/mapapi/map/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private P:Lcom/baidu/mapapi/map/Marker;

.field private Q:Lcom/baidu/mapapi/map/MyLocationData;

.field private R:Lcom/baidu/mapapi/map/MyLocationConfiguration;

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:Landroid/graphics/Point;

.field private volatile X:Z

.field private Y:Lcom/baidu/mapsdkplatform/comapi/map/a/c;

.field a:Lcom/baidu/mapapi/map/MapView;

.field b:Lcom/baidu/mapapi/map/TextureMapView;

.field c:Lcom/baidu/mapapi/map/WearMapView;

.field d:Lcom/baidu/mapsdkplatform/comapi/map/w;

.field private f:Lcom/baidu/mapapi/map/Projection;

.field private g:Lcom/baidu/mapapi/map/UiSettings;

.field private h:Lcom/baidu/platform/comapi/map/MapSurfaceView;

.field private i:Lcom/baidu/platform/comapi/map/MapTextureView;

.field private j:Lcom/baidu/mapsdkplatform/comapi/map/d;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/Overlay;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/InfoWindow;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/baidu/mapapi/map/Overlay$a;

.field private p:Lcom/baidu/mapapi/map/InfoWindow$a;

.field private q:Lcom/baidu/mapapi/map/BaiduMap$OnMapStatusChangeListener;

.field private r:Lcom/baidu/mapapi/map/BaiduMap$OnMapTouchListener;

.field private s:Lcom/baidu/mapapi/map/BaiduMap$onMapGestureListener;

.field private t:Lcom/baidu/mapapi/map/BaiduMap$OnMapClickListener;

.field private u:Lcom/baidu/mapapi/map/BaiduMap$OnMapLoadedCallback;

.field private v:Lcom/baidu/mapapi/map/BaiduMap$OnMapRenderCallback;

.field private w:Lcom/baidu/mapapi/map/BaiduMap$OnMapDoubleClickListener;

.field private x:Lcom/baidu/mapapi/map/BaiduMap$OnMapLongClickListener;

.field private y:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/baidu/mapapi/map/BaiduMap$OnMarkerClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/baidu/mapapi/map/BaiduMap$OnPolylineClickListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/baidu/platform/comapi/map/MapSurfaceView;Lcom/baidu/mapsdkplatform/comapi/map/v;)V
    .locals 7

    .line 1126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->y:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 463
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 464
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->A:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 480
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->L:Ljava/util/concurrent/locks/Lock;

    .line 481
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->M:Ljava/util/concurrent/locks/Lock;

    const/4 v0, 0x0

    .line 505
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->X:Z

    .line 1127
    iput-object p2, p0, Lcom/baidu/mapapi/map/BaiduMap;->h:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    .line 1128
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/d;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/baidu/mapsdkplatform/comapi/map/d;-><init>(Landroid/content/Context;Lcom/baidu/platform/comapi/map/MapSurfaceView;Lcom/baidu/mapsdkplatform/comapi/map/v;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    .line 1129
    invoke-virtual {p2, v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->setBaseMap(Lcom/baidu/mapsdkplatform/comapi/map/d;)V

    .line 1130
    sget-object p1, Lcom/baidu/mapsdkplatform/comapi/map/w;->a:Lcom/baidu/mapsdkplatform/comapi/map/w;

    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->d:Lcom/baidu/mapsdkplatform/comapi/map/w;

    .line 1131
    invoke-direct {p0}, Lcom/baidu/mapapi/map/BaiduMap;->d()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/baidu/platform/comapi/map/MapTextureView;Lcom/baidu/mapsdkplatform/comapi/map/v;)V
    .locals 7

    .line 1118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->y:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 463
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 464
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->A:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 480
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->L:Ljava/util/concurrent/locks/Lock;

    .line 481
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->M:Ljava/util/concurrent/locks/Lock;

    const/4 v0, 0x0

    .line 505
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->X:Z

    .line 1119
    iput-object p2, p0, Lcom/baidu/mapapi/map/BaiduMap;->i:Lcom/baidu/platform/comapi/map/MapTextureView;

    .line 1120
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/d;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/baidu/mapsdkplatform/comapi/map/d;-><init>(Landroid/content/Context;Lcom/baidu/platform/comapi/map/MapTextureView;Lcom/baidu/mapsdkplatform/comapi/map/v;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    .line 1121
    invoke-virtual {p2, v0}, Lcom/baidu/platform/comapi/map/MapTextureView;->setBaseMap(Lcom/baidu/mapsdkplatform/comapi/map/d;)V

    .line 1122
    sget-object p1, Lcom/baidu/mapsdkplatform/comapi/map/w;->b:Lcom/baidu/mapsdkplatform/comapi/map/w;

    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->d:Lcom/baidu/mapsdkplatform/comapi/map/w;

    .line 1123
    invoke-direct {p0}, Lcom/baidu/mapapi/map/BaiduMap;->d()V

    return-void
.end method

.method static synthetic A(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/BaiduMap$OnMapRenderValidDataListener;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->G:Lcom/baidu/mapapi/map/BaiduMap$OnMapRenderValidDataListener;

    return-object p0
.end method

.method static synthetic B(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/BaiduMap$OnHeatMapDrawFrameCallBack;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->H:Lcom/baidu/mapapi/map/BaiduMap$OnHeatMapDrawFrameCallBack;

    return-object p0
.end method

.method static synthetic C(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->M:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method static synthetic D(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/TileOverlay;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->J:Lcom/baidu/mapapi/map/TileOverlay;

    return-object p0
.end method

.method static synthetic E(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/BaiduMap$SnapshotReadyCallback;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->D:Lcom/baidu/mapapi/map/BaiduMap$SnapshotReadyCallback;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 10

    .line 2086
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "^\\{"

    const-string v1, ""

    .line 2091
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\}$"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v6, p1, v3

    const-string v7, "\""

    .line 2092
    invoke-virtual {v6, v7, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2093
    aget-object v7, v6, v2

    const-string/jumbo v8, "x"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    .line 2094
    aget-object v4, v6, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2096
    :cond_1
    aget-object v7, v6, v2

    const-string/jumbo v9, "y"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2097
    aget-object v5, v6, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2100
    :cond_3
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/BaiduMap;Lcom/baidu/mapapi/map/Marker;)Lcom/baidu/mapapi/map/Marker;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->P:Lcom/baidu/mapapi/map/Marker;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/BaiduMap;Lcom/baidu/mapapi/map/Projection;)Lcom/baidu/mapapi/map/Projection;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->f:Lcom/baidu/mapapi/map/Projection;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapsdkplatform/comapi/map/d;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    return-object p0
.end method

.method private a(Lcom/baidu/mapapi/map/MapStatusUpdate;)Lcom/baidu/mapsdkplatform/comapi/map/x;
    .locals 4

    .line 1515
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1518
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->D()Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object v0

    .line 1519
    iget-object v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/baidu/mapapi/map/MapStatusUpdate;->a(Lcom/baidu/mapsdkplatform/comapi/map/d;Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/MapStatus;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 1524
    :cond_1
    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/MapStatus;->b(Lcom/baidu/mapsdkplatform/comapi/map/x;)Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object p1

    return-object p1
.end method

.method private a(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string p1, ""

    goto :goto_0

    :pswitch_0
    const-string p1, "SSL\u63e1\u624b\u8d85\u65f6"

    goto :goto_0

    :pswitch_1
    const-string p1, "SSL\u63e1\u624b\u9519\u8bef"

    goto :goto_0

    :pswitch_2
    const-string/jumbo p1, "\u7f51\u7edc\u5199\u9519\u8bef"

    goto :goto_0

    :pswitch_3
    const-string p1, "DNS\u89e3\u6790\u8d85\u65f6"

    goto :goto_0

    :pswitch_4
    const-string p1, "DNS\u89e3\u6790\u9519\u8bef"

    goto :goto_0

    :pswitch_5
    const-string/jumbo p1, "\u7f51\u7edc\u63a5\u6536\u8d85\u65f6"

    goto :goto_0

    :pswitch_6
    const-string/jumbo p1, "\u7f51\u7edc\u53d1\u9001\u8d85\u65f6"

    goto :goto_0

    :pswitch_7
    const-string/jumbo p1, "\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6"

    goto :goto_0

    :pswitch_8
    const-string/jumbo p1, "\u7f51\u7edc\u8d85\u65f6\u9519\u8bef"

    goto :goto_0

    :pswitch_9
    const-string/jumbo p1, "\u8bf7\u6c42\u53d6\u6d88"

    goto :goto_0

    :pswitch_a
    const-string/jumbo p1, "\u6570\u636e\u4e0d\u4e00\u81f4"

    goto :goto_0

    :pswitch_b
    const-string/jumbo p1, "\u5f53\u524d\u7f51\u7edc\u7c7b\u578b\u6709\u95ee\u9898"

    goto :goto_0

    :pswitch_c
    const-string/jumbo p1, "\u8fd4\u56de\u54cd\u5e94\u6570\u636e\u8fc7\u5927\uff0c\u6570\u636e\u6ea2\u51fa"

    goto :goto_0

    :pswitch_d
    const-string/jumbo p1, "\u54cd\u5e94\u6570\u636e\u8bfb\u53d6\u5931\u8d25"

    goto :goto_0

    :pswitch_e
    const-string/jumbo p1, "\u8bf7\u6c42\u53d1\u9001\u9519\u8bef"

    goto :goto_0

    :pswitch_f
    const-string/jumbo p1, "\u7f51\u7edc\u8fde\u63a5\u9519\u8bef"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "\u6570\u636e\u8bf7\u6c42\u6210\u529f"

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x3ec
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/BaiduMap;I)Ljava/lang/String;
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/BaiduMap;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/BaiduMap;Lcom/baidu/mapapi/map/InfoWindow;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/BaiduMap;->a(Lcom/baidu/mapapi/map/InfoWindow;)V

    return-void
.end method

.method private a(Lcom/baidu/mapapi/map/InfoWindow;)V
    .locals 7

    if-eqz p1, :cond_a

    .line 2559
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->X:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 2562
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->O:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2563
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_9

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 2570
    :cond_1
    iget-object v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->c:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 2571
    iget-boolean v3, p1, Lcom/baidu/mapapi/map/InfoWindow;->k:Z

    if-eqz v3, :cond_5

    .line 2572
    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 2573
    new-instance v3, Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;

    invoke-direct {v3}, Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;-><init>()V

    .line 2574
    sget-object v4, Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;->mapMode:Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;

    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;->layoutMode(Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;)Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;

    move-result-object v3

    iget-object v4, p1, Lcom/baidu/mapapi/map/InfoWindow;->d:Lcom/baidu/mapapi/model/LatLng;

    .line 2575
    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;

    move-result-object v3

    iget v4, p1, Lcom/baidu/mapapi/map/InfoWindow;->g:I

    .line 2576
    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;->yOffset(I)Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;

    move-result-object v3

    .line 2577
    invoke-virtual {v3}, Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;->build()Lcom/baidu/mapapi/map/MapViewLayoutParams;

    move-result-object v3

    .line 2578
    sget-object v4, Lcom/baidu/mapapi/map/b;->b:[I

    iget-object v5, p0, Lcom/baidu/mapapi/map/BaiduMap;->d:Lcom/baidu/mapsdkplatform/comapi/map/w;

    invoke-virtual {v5}, Lcom/baidu/mapsdkplatform/comapi/map/w;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v1, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    goto :goto_0

    .line 2586
    :cond_2
    iget-object v4, p0, Lcom/baidu/mapapi/map/BaiduMap;->a:Lcom/baidu/mapapi/map/MapView;

    if-eqz v4, :cond_4

    .line 2587
    invoke-virtual {v4, v0, v3}, Lcom/baidu/mapapi/map/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2580
    :cond_3
    iget-object v4, p0, Lcom/baidu/mapapi/map/BaiduMap;->b:Lcom/baidu/mapapi/map/TextureMapView;

    if-eqz v4, :cond_4

    .line 2581
    invoke-virtual {v4, v0, v3}, Lcom/baidu/mapapi/map/TextureMapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2582
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2594
    :cond_4
    :goto_0
    iget-boolean v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->j:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    .line 2599
    :goto_1
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/BaiduMap;->b(Lcom/baidu/mapapi/map/InfoWindow;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v3

    .line 2601
    iget-object v4, p0, Lcom/baidu/mapapi/map/BaiduMap;->O:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/map/Marker;

    if-eqz v4, :cond_8

    .line 2604
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 2605
    iget-object v6, p1, Lcom/baidu/mapapi/map/InfoWindow;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    if-eqz v6, :cond_7

    .line 2606
    sget-object v6, Lcom/baidu/mapsdkplatform/comapi/map/i;->b:Lcom/baidu/mapsdkplatform/comapi/map/i;

    iput-object v6, v4, Lcom/baidu/mapapi/map/Marker;->type:Lcom/baidu/mapsdkplatform/comapi/map/i;

    .line 2607
    iput-object v3, v4, Lcom/baidu/mapapi/map/Marker;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 2608
    iget-object v3, p1, Lcom/baidu/mapapi/map/InfoWindow;->c:Landroid/view/View;

    const-string v6, "draw_with_view"

    if-eqz v3, :cond_6

    .line 2609
    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 2611
    :cond_6
    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2614
    :cond_7
    :goto_2
    iget-object v1, p1, Lcom/baidu/mapapi/map/InfoWindow;->d:Lcom/baidu/mapapi/model/LatLng;

    iput-object v1, v4, Lcom/baidu/mapapi/map/Marker;->a:Lcom/baidu/mapapi/model/LatLng;

    .line 2615
    iget p1, p1, Lcom/baidu/mapapi/map/InfoWindow;->g:I

    iput p1, v4, Lcom/baidu/mapapi/map/Marker;->i:I

    .line 2616
    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/map/Marker;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 2617
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz p1, :cond_8

    if-eqz v0, :cond_8

    iget-boolean p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->X:Z

    if-nez p1, :cond_8

    .line 2618
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    invoke-virtual {p1, v5}, Lcom/baidu/mapsdkplatform/comapi/map/d;->e(Landroid/os/Bundle;)V

    :cond_8
    return-void

    .line 2564
    :cond_9
    :goto_3
    invoke-virtual {p0, p1, v2}, Lcom/baidu/mapapi/map/BaiduMap;->showInfoWindow(Lcom/baidu/mapapi/map/InfoWindow;Z)V

    :cond_a
    :goto_4
    return-void
.end method

.method private final a(Lcom/baidu/mapapi/map/MyLocationData;Lcom/baidu/mapapi/map/MyLocationConfiguration;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "direction_wheel"

    const-string v4, "iconarrowfoc"

    const-string v5, "iconarrowfocid"

    const-string v6, "iconarrownorid"

    const-string v7, "iconarrownor"

    const-string v8, "direction"

    const-string v9, "radius"

    const-string v10, "pty"

    const-string v11, "ptx"

    if-eqz v2, :cond_a

    if-eqz v3, :cond_a

    .line 1799
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/mapapi/map/BaiduMap;->isMyLocationEnabled()Z

    move-result v12

    if-nez v12, :cond_0

    goto/16 :goto_6

    .line 1807
    :cond_0
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 1808
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 1809
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 1810
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 1811
    new-instance v1, Lcom/baidu/mapapi/model/LatLng;

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    iget-wide v4, v2, Lcom/baidu/mapapi/map/MyLocationData;->latitude:D

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    iget-wide v6, v2, Lcom/baidu/mapapi/map/MyLocationData;->longitude:D

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 1812
    invoke-static {v1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v4

    :try_start_0
    const-string v5, "type"

    const/4 v6, 0x0

    .line 1815
    invoke-virtual {v12, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1816
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v6

    invoke-virtual {v14, v11, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1817
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v6

    invoke-virtual {v14, v10, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1818
    iget v6, v2, Lcom/baidu/mapapi/map/MyLocationData;->accuracy:F

    float-to-int v6, v6

    invoke-static {v1, v6}, Lcom/baidu/mapapi/model/CoordUtil;->getMCDistanceByOneLatLngAndRadius(Lcom/baidu/mapapi/model/LatLng;I)I

    move-result v1

    int-to-float v1, v1

    float-to-double v6, v1

    .line 1819
    invoke-virtual {v14, v9, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1820
    iget v1, v2, Lcom/baidu/mapapi/map/MyLocationData;->direction:F

    .line 1821
    iget-boolean v1, v3, Lcom/baidu/mapapi/map/MyLocationConfiguration;->enableDirection:Z

    if-eqz v1, :cond_2

    .line 1822
    iget v1, v2, Lcom/baidu/mapapi/map/MyLocationData;->direction:F

    const/high16 v6, 0x43b40000    # 360.0f

    rem-float/2addr v1, v6

    const/high16 v7, 0x43340000    # 180.0f

    cmpl-float v7, v1, v7

    if-lez v7, :cond_1

    sub-float/2addr v1, v6

    goto :goto_0

    :cond_1
    const/high16 v7, -0x3ccc0000    # -180.0f

    cmpg-float v7, v1, v7

    if-gez v7, :cond_3

    add-float/2addr v1, v6

    goto :goto_0

    :cond_2
    const v1, -0x3b85c000    # -1001.0f

    :cond_3
    :goto_0
    float-to-double v6, v1

    .line 1832
    invoke-virtual {v14, v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "NormalLocArrow"

    move-object/from16 v6, v19

    .line 1833
    invoke-virtual {v14, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v1, 0x1c

    move-object/from16 v7, v18

    .line 1839
    invoke-virtual {v14, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/16 v1, 0x1d

    move-object/from16 v5, v17

    .line 1840
    invoke-virtual {v14, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "FocusLocArrow"

    move-object/from16 v2, v16

    .line 1842
    invoke-virtual {v14, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "lineid"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v16, v12

    .line 1843
    :try_start_1
    iget v12, v3, Lcom/baidu/mapapi/map/MyLocationConfiguration;->accuracyCircleStrokeColor:I

    invoke-virtual {v14, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "areaid"

    .line 1844
    iget v12, v3, Lcom/baidu/mapapi/map/MyLocationConfiguration;->accuracyCircleFillColor:I

    invoke-virtual {v14, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1845
    invoke-virtual {v13, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1846
    iget-object v1, v3, Lcom/baidu/mapapi/map/MyLocationConfiguration;->locationMode:Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;

    sget-object v12, Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;->COMPASS:Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;

    if-ne v1, v12, :cond_4

    move-object v1, v13

    .line 1848
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v12

    invoke-virtual {v15, v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1849
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v11

    invoke-virtual {v15, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const/4 v4, 0x0

    .line 1850
    invoke-virtual {v15, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1851
    invoke-virtual {v15, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1852
    invoke-virtual {v15, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1853
    invoke-virtual {v15, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v0, 0x36

    .line 1859
    invoke-virtual {v15, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1860
    invoke-virtual {v15, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1862
    invoke-virtual {v1, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_4
    move-object v1, v13

    :goto_1
    const-string v0, "data"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v2, v16

    .line 1865
    :try_start_2
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v2, v12

    .line 1868
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1871
    :goto_3
    iget-object v0, v3, Lcom/baidu/mapapi/map/MyLocationConfiguration;->customMarker:Lcom/baidu/mapapi/map/BitmapDescriptor;

    if-eqz v0, :cond_5

    .line 1872
    iget-object v0, v3, Lcom/baidu/mapapi/map/MyLocationConfiguration;->customMarker:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1873
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1874
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1875
    new-instance v4, Lcom/baidu/platform/comapi/map/OverlayLocationData;

    invoke-direct {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;-><init>()V

    .line 1876
    invoke-virtual {v4, v0}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->setImage(Landroid/graphics/Bitmap;)V

    .line 1877
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->setImgHeight(I)V

    .line 1878
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->setImgWidth(I)V

    const-string v0, "icon"

    .line 1879
    invoke-virtual {v4, v0}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->setImgName(Ljava/lang/String;)V

    .line 1880
    iget-boolean v0, v3, Lcom/baidu/mapapi/map/MyLocationConfiguration;->enableDirection:Z

    invoke-virtual {v4, v0}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->setRotation(I)V

    .line 1881
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, p0

    .line 1882
    iget-object v0, v4, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz v0, :cond_6

    .line 1883
    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Ljava/util/List;)V

    goto :goto_4

    :cond_5
    move-object/from16 v4, p0

    .line 1889
    :cond_6
    :goto_4
    iget-object v0, v4, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz v0, :cond_7

    .line 1890
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1896
    :cond_7
    sget-object v0, Lcom/baidu/mapapi/map/b;->a:[I

    iget-object v1, v3, Lcom/baidu/mapapi/map/MyLocationConfiguration;->locationMode:Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    goto/16 :goto_5

    .line 1906
    :cond_8
    new-instance v0, Lcom/baidu/mapapi/map/MapStatus$Builder;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/MapStatus$Builder;-><init>()V

    new-instance v1, Lcom/baidu/mapapi/model/LatLng;

    move-object/from16 v2, p1

    iget-wide v5, v2, Lcom/baidu/mapapi/map/MyLocationData;->latitude:D

    iget-wide v2, v2, Lcom/baidu/mapapi/map/MyLocationData;->longitude:D

    invoke-direct {v1, v5, v6, v2, v3}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MapStatus$Builder;->target(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object v0

    .line 1907
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v1

    iget v1, v1, Lcom/baidu/mapapi/map/MapStatus;->zoom:F

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MapStatus$Builder;->zoom(F)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v1

    iget v1, v1, Lcom/baidu/mapapi/map/MapStatus;->rotate:F

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MapStatus$Builder;->rotate(F)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object v0

    .line 1908
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v1

    iget v1, v1, Lcom/baidu/mapapi/map/MapStatus;->overlook:F

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MapStatus$Builder;->overlook(F)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/mapapi/map/MapStatus;->targetScreen:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MapStatus$Builder;->targetScreen(Landroid/graphics/Point;)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapStatus$Builder;->build()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v0

    .line 1909
    invoke-static {v0}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newMapStatus(Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v0

    .line 1910
    invoke-virtual {v4, v0}, Lcom/baidu/mapapi/map/BaiduMap;->animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    goto :goto_5

    :cond_9
    move-object/from16 v2, p1

    .line 1898
    new-instance v0, Lcom/baidu/mapapi/map/MapStatus$Builder;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/MapStatus$Builder;-><init>()V

    iget v1, v2, Lcom/baidu/mapapi/map/MyLocationData;->direction:F

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MapStatus$Builder;->rotate(F)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object v0

    const/high16 v1, -0x3dcc0000    # -45.0f

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MapStatus$Builder;->overlook(F)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object v0

    new-instance v1, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v5, v2, Lcom/baidu/mapapi/map/MyLocationData;->latitude:D

    iget-wide v2, v2, Lcom/baidu/mapapi/map/MyLocationData;->longitude:D

    invoke-direct {v1, v5, v6, v2, v3}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 1899
    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MapStatus$Builder;->target(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object v0

    .line 1900
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/mapapi/map/MapStatus;->targetScreen:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MapStatus$Builder;->targetScreen(Landroid/graphics/Point;)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v1

    iget v1, v1, Lcom/baidu/mapapi/map/MapStatus;->zoom:F

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MapStatus$Builder;->zoom(F)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapStatus$Builder;->build()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v0

    .line 1901
    invoke-static {v0}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newMapStatus(Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v0

    .line 1902
    invoke-virtual {v4, v0}, Lcom/baidu/mapapi/map/BaiduMap;->animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    :goto_5
    return-void

    :cond_a
    :goto_6
    move-object v4, v1

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/BaiduMap;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->V:Z

    return p1
.end method

.method private b(Lcom/baidu/mapapi/map/InfoWindow;)Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1

    .line 2631
    iget-object v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->c:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->k:Z

    if-eqz v0, :cond_2

    .line 2633
    iget-boolean v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->h:Z

    if-eqz v0, :cond_1

    .line 2635
    iget v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->i:I

    if-gtz v0, :cond_0

    .line 2636
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensityDpi()I

    move-result v0

    iput v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->i:I

    .line 2638
    :cond_0
    iget-object v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->c:Landroid/view/View;

    iget p1, p1, Lcom/baidu/mapapi/map/InfoWindow;->i:I

    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromViewWithDpi(Landroid/view/View;I)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object p1

    goto :goto_0

    .line 2640
    :cond_1
    iget-object p1, p1, Lcom/baidu/mapapi/map/InfoWindow;->c:Landroid/view/View;

    invoke-static {p1}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromView(Landroid/view/View;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object p1

    goto :goto_0

    .line 2644
    :cond_2
    iget-object p1, p1, Lcom/baidu/mapapi/map/InfoWindow;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    :goto_0
    return-object p1
.end method

.method static synthetic b(Lcom/baidu/mapapi/map/BaiduMap;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->X:Z

    return p0
.end method

.method static synthetic c(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/List;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->k:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/List;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->m:Ljava/util/List;

    return-object p0
.end method

.method private d()V
    .locals 3

    const/4 v0, 0x0

    .line 511
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->X:Z

    .line 512
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->k:Ljava/util/List;

    .line 513
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->l:Ljava/util/List;

    .line 514
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->m:Ljava/util/List;

    .line 515
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->N:Ljava/util/Map;

    .line 516
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->O:Ljava/util/Map;

    .line 517
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->n:Ljava/util/List;

    .line 520
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensity()F

    move-result v0

    const/high16 v1, 0x42200000    # 40.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 521
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensity()F

    move-result v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    .line 522
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->W:Landroid/graphics/Point;

    .line 525
    new-instance v0, Lcom/baidu/mapapi/map/UiSettings;

    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    invoke-direct {v0, v1}, Lcom/baidu/mapapi/map/UiSettings;-><init>(Lcom/baidu/mapsdkplatform/comapi/map/d;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->g:Lcom/baidu/mapapi/map/UiSettings;

    .line 526
    new-instance v0, Lcom/baidu/mapapi/map/a;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/a;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->o:Lcom/baidu/mapapi/map/Overlay$a;

    .line 621
    new-instance v0, Lcom/baidu/mapapi/map/c;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/c;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->p:Lcom/baidu/mapapi/map/InfoWindow$a;

    .line 635
    new-instance v0, Lcom/baidu/mapapi/map/d;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/d;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    .line 1062
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Lcom/baidu/platform/comapi/map/al;)V

    .line 1065
    new-instance v0, Lcom/baidu/mapapi/map/f;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/f;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    .line 1090
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Lcom/baidu/mapsdkplatform/comapi/map/m;)V

    .line 1093
    new-instance v0, Lcom/baidu/mapapi/map/g;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/g;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    .line 1112
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Lcom/baidu/mapsdkplatform/comapi/map/ab;)V

    .line 1114
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->B()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->S:Z

    .line 1115
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->C()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->T:Z

    return-void
.end method

.method static synthetic e(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/List;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->l:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/BaiduMap$OnMapStatusChangeListener;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->q:Lcom/baidu/mapapi/map/BaiduMap$OnMapStatusChangeListener;

    return-object p0
.end method

.method static synthetic g(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/BaiduMap$OnSynchronizationListener;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->I:Lcom/baidu/mapapi/map/BaiduMap$OnSynchronizationListener;

    return-object p0
.end method

.method static synthetic h(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/BaiduMap$onMapGestureListener;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->s:Lcom/baidu/mapapi/map/BaiduMap$onMapGestureListener;

    return-object p0
.end method

.method static synthetic i(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/BaiduMap$OnMapTouchListener;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->r:Lcom/baidu/mapapi/map/BaiduMap$OnMapTouchListener;

    return-object p0
.end method

.method static synthetic j(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/BaiduMap$OnMapClickListener;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->t:Lcom/baidu/mapapi/map/BaiduMap$OnMapClickListener;

    return-object p0
.end method

.method static synthetic k(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/BaiduMap$OnMapDoubleClickListener;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->w:Lcom/baidu/mapapi/map/BaiduMap$OnMapDoubleClickListener;

    return-object p0
.end method

.method static synthetic l(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/BaiduMap$OnMapLongClickListener;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->x:Lcom/baidu/mapapi/map/BaiduMap$OnMapLongClickListener;

    return-object p0
.end method

.method static synthetic m(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/BaiduMap$OnMapLoadedCallback;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->u:Lcom/baidu/mapapi/map/BaiduMap$OnMapLoadedCallback;

    return-object p0
.end method

.method static synthetic n(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/BaiduMap$OnMapRenderCallback;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->v:Lcom/baidu/mapapi/map/BaiduMap$OnMapRenderCallback;

    return-object p0
.end method

.method static synthetic o(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/BaiduMap$OnMyLocationClickListener;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->C:Lcom/baidu/mapapi/map/BaiduMap$OnMyLocationClickListener;

    return-object p0
.end method

.method static synthetic p(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/Map;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->N:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic q(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->y:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic r(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic s(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->A:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic t(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/Marker;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->P:Lcom/baidu/mapapi/map/Marker;

    return-object p0
.end method

.method static synthetic u(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/Projection;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->f:Lcom/baidu/mapapi/map/Projection;

    return-object p0
.end method

.method static synthetic v(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/BaiduMap$OnMarkerDragListener;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->B:Lcom/baidu/mapapi/map/BaiduMap$OnMarkerDragListener;

    return-object p0
.end method

.method static synthetic w(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->L:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method static synthetic x(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/HeatMap;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->K:Lcom/baidu/mapapi/map/HeatMap;

    return-object p0
.end method

.method static synthetic y(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/BaiduMap$OnMapDrawFrameCallback;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->E:Lcom/baidu/mapapi/map/BaiduMap$OnMapDrawFrameCallback;

    return-object p0
.end method

.method static synthetic z(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/BaiduMap$OnBaseIndoorMapListener;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->F:Lcom/baidu/mapapi/map/BaiduMap$OnBaseIndoorMapListener;

    return-object p0
.end method


# virtual methods
.method a()V
    .locals 1

    .line 2009
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    return-void

    .line 2012
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->v()V

    return-void
.end method

.method a(Lcom/baidu/mapapi/map/HeatMap;)V
    .locals 2

    .line 1991
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->L:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1993
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->K:Lcom/baidu/mapapi/map/HeatMap;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz v1, :cond_0

    if-ne p1, v0, :cond_0

    .line 1995
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/HeatMap;->b()V

    .line 1996
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->K:Lcom/baidu/mapapi/map/HeatMap;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/HeatMap;->c()V

    .line 1997
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->K:Lcom/baidu/mapapi/map/HeatMap;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/baidu/mapapi/map/HeatMap;->a:Lcom/baidu/mapapi/map/BaiduMap;

    .line 1998
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    invoke-virtual {p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->q()V

    .line 2000
    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->K:Lcom/baidu/mapapi/map/HeatMap;

    .line 2001
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->r(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2004
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->L:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->L:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method a(Lcom/baidu/mapapi/map/TileOverlay;)V
    .locals 2

    .line 3036
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->M:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3038
    :try_start_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->J:Lcom/baidu/mapapi/map/TileOverlay;

    if-ne v1, p1, :cond_0

    .line 3041
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/TileOverlay;->b()V

    .line 3042
    iput-object v0, p1, Lcom/baidu/mapapi/map/TileOverlay;->a:Lcom/baidu/mapapi/map/BaiduMap;

    .line 3045
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz p1, :cond_0

    .line 3046
    invoke-virtual {p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3050
    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->J:Lcom/baidu/mapapi/map/TileOverlay;

    .line 3051
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->M:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    .line 3050
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->J:Lcom/baidu/mapapi/map/TileOverlay;

    .line 3051
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->M:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public addHeatMap(Lcom/baidu/mapapi/map/HeatMap;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 1928
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1931
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->L:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1933
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->K:Lcom/baidu/mapapi/map/HeatMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_1

    .line 1953
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->L:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 1938
    :try_start_1
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/HeatMap;->b()V

    .line 1939
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->K:Lcom/baidu/mapapi/map/HeatMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/HeatMap;->c()V

    .line 1940
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->K:Lcom/baidu/mapapi/map/HeatMap;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/baidu/mapapi/map/HeatMap;->a:Lcom/baidu/mapapi/map/BaiduMap;

    .line 1941
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->q()V

    .line 1944
    :cond_2
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->K:Lcom/baidu/mapapi/map/HeatMap;

    .line 1945
    iput-object p0, p1, Lcom/baidu/mapapi/map/HeatMap;->a:Lcom/baidu/mapapi/map/BaiduMap;

    .line 1946
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/HeatMap;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 1949
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->r(Z)V

    .line 1951
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->h(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1953
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->L:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->L:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public final addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;
    .locals 3

    if-eqz p1, :cond_4

    .line 1170
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->X:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1174
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/OverlayOptions;->a()Lcom/baidu/mapapi/map/Overlay;

    move-result-object p1

    .line 1175
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->o:Lcom/baidu/mapapi/map/Overlay$a;

    iput-object v0, p1, Lcom/baidu/mapapi/map/Overlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    .line 1176
    instance-of v0, p1, Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_2

    .line 1177
    move-object v0, p1

    check-cast v0, Lcom/baidu/mapapi/map/Marker;

    .line 1178
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->p:Lcom/baidu/mapapi/map/InfoWindow$a;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Marker;->A:Lcom/baidu/mapapi/map/InfoWindow$a;

    .line 1179
    iget-object v1, v0, Lcom/baidu/mapapi/map/Marker;->s:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/baidu/mapapi/map/Marker;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1180
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1181
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 1182
    invoke-virtual {v1, v2}, Lcom/baidu/mapsdkplatform/comapi/map/d;->c(Z)V

    .line 1185
    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1186
    iget-object v1, v0, Lcom/baidu/mapapi/map/Marker;->z:Lcom/baidu/mapapi/map/InfoWindow;

    if-eqz v1, :cond_2

    .line 1187
    iget-object v0, v0, Lcom/baidu/mapapi/map/Marker;->z:Lcom/baidu/mapapi/map/InfoWindow;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/mapapi/map/BaiduMap;->showInfoWindow(Lcom/baidu/mapapi/map/InfoWindow;Z)V

    .line 1191
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1192
    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1193
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->X:Z

    if-nez v1, :cond_3

    .line 1194
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->c(Landroid/os/Bundle;)V

    .line 1196
    :cond_3
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final addOverlays(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/OverlayOptions;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/Overlay;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    .line 1223
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->X:Z

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 1227
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1229
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1230
    div-int/lit16 v3, v2, 0x190

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v6, v3, 0x1

    if-ge v5, v6, :cond_a

    const/16 v6, 0x190

    if-nez v3, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    if-ne v5, v3, :cond_2

    mul-int/lit16 v7, v3, 0x190

    sub-int v7, v2, v7

    goto :goto_1

    :cond_2
    const/16 v7, 0x190

    .line 1241
    :goto_1
    new-array v7, v7, [Landroid/os/Bundle;

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v6, :cond_8

    mul-int/lit16 v9, v5, 0x190

    add-int/2addr v9, v8

    if-ge v9, v2, :cond_8

    .line 1244
    iget-boolean v10, p0, Lcom/baidu/mapapi/map/BaiduMap;->X:Z

    if-eqz v10, :cond_3

    return-object v0

    .line 1248
    :cond_3
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/mapapi/map/OverlayOptions;

    if-nez v9, :cond_4

    goto :goto_3

    .line 1253
    :cond_4
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1254
    invoke-virtual {v9}, Lcom/baidu/mapapi/map/OverlayOptions;->a()Lcom/baidu/mapapi/map/Overlay;

    move-result-object v9

    .line 1255
    iget-object v11, p0, Lcom/baidu/mapapi/map/BaiduMap;->o:Lcom/baidu/mapapi/map/Overlay$a;

    iput-object v11, v9, Lcom/baidu/mapapi/map/Overlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    .line 1257
    instance-of v11, v9, Lcom/baidu/mapapi/map/Marker;

    if-eqz v11, :cond_6

    .line 1258
    move-object v11, v9

    check-cast v11, Lcom/baidu/mapapi/map/Marker;

    .line 1259
    iget-object v12, p0, Lcom/baidu/mapapi/map/BaiduMap;->p:Lcom/baidu/mapapi/map/InfoWindow$a;

    iput-object v12, v11, Lcom/baidu/mapapi/map/Marker;->A:Lcom/baidu/mapapi/map/InfoWindow$a;

    .line 1260
    iget-object v12, v11, Lcom/baidu/mapapi/map/Marker;->s:Ljava/util/ArrayList;

    if-eqz v12, :cond_5

    iget-object v12, v11, Lcom/baidu/mapapi/map/Marker;->s:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eqz v12, :cond_5

    .line 1261
    iget-object v12, p0, Lcom/baidu/mapapi/map/BaiduMap;->l:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1262
    iget-object v12, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz v12, :cond_5

    const/4 v13, 0x1

    .line 1263
    invoke-virtual {v12, v13}, Lcom/baidu/mapsdkplatform/comapi/map/d;->c(Z)V

    .line 1267
    :cond_5
    iget-object v12, p0, Lcom/baidu/mapapi/map/BaiduMap;->m:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1270
    :cond_6
    iget-object v11, p0, Lcom/baidu/mapapi/map/BaiduMap;->k:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1271
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1272
    invoke-virtual {v9, v10}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1273
    iget-object v9, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz v9, :cond_7

    .line 1274
    invoke-virtual {v9, v10}, Lcom/baidu/mapsdkplatform/comapi/map/d;->g(Landroid/os/Bundle;)V

    .line 1275
    iget-object v9, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    invoke-virtual {v9, v10}, Lcom/baidu/mapsdkplatform/comapi/map/d;->d(Landroid/os/Bundle;)V

    .line 1277
    :cond_7
    aput-object v10, v7, v8

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1280
    :cond_8
    iget-object v6, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz v6, :cond_9

    .line 1281
    invoke-virtual {v6, v7}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a([Landroid/os/Bundle;)V

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_a
    return-object v1

    :cond_b
    :goto_4
    return-object v0
.end method

.method public addTileLayer(Lcom/baidu/mapapi/map/TileOverlayOptions;)Lcom/baidu/mapapi/map/TileOverlay;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2969
    :cond_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->J:Lcom/baidu/mapapi/map/TileOverlay;

    if-eqz v1, :cond_1

    .line 2970
    invoke-virtual {v1}, Lcom/baidu/mapapi/map/TileOverlay;->b()V

    .line 2972
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->J:Lcom/baidu/mapapi/map/TileOverlay;

    iput-object v0, v1, Lcom/baidu/mapapi/map/TileOverlay;->a:Lcom/baidu/mapapi/map/BaiduMap;

    .line 2975
    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/TileOverlayOptions;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2976
    invoke-virtual {p1, p0}, Lcom/baidu/mapapi/map/TileOverlayOptions;->a(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/TileOverlay;

    move-result-object p1

    .line 2977
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->J:Lcom/baidu/mapapi/map/TileOverlay;

    return-object p1

    :cond_2
    return-object v0
.end method

.method public final addTraceOverlay(Lcom/baidu/mapapi/map/track/TraceOptions;Lcom/baidu/mapapi/map/track/TraceAnimationListener;)Lcom/baidu/mapapi/map/track/TraceOverlay;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1146
    :cond_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->Y:Lcom/baidu/mapsdkplatform/comapi/map/a/c;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1147
    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->d:Lcom/baidu/mapsdkplatform/comapi/map/w;

    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/map/w;->a:Lcom/baidu/mapsdkplatform/comapi/map/w;

    if-ne v1, v2, :cond_2

    .line 1148
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;

    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->h:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-direct {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/a/c;-><init>(Lcom/baidu/platform/comapi/map/MapSurfaceView;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->Y:Lcom/baidu/mapsdkplatform/comapi/map/a/c;

    goto :goto_0

    .line 1149
    :cond_2
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->d:Lcom/baidu/mapsdkplatform/comapi/map/w;

    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/map/w;->b:Lcom/baidu/mapsdkplatform/comapi/map/w;

    if-ne v1, v2, :cond_4

    .line 1150
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;

    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->i:Lcom/baidu/platform/comapi/map/MapTextureView;

    invoke-direct {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/a/c;-><init>(Lcom/baidu/platform/comapi/map/MapTextureView;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->Y:Lcom/baidu/mapsdkplatform/comapi/map/a/c;

    .line 1154
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->Y:Lcom/baidu/mapsdkplatform/comapi/map/a/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->a()V

    .line 1157
    :cond_3
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->Y:Lcom/baidu/mapsdkplatform/comapi/map/a/c;

    invoke-virtual {v0, p2}, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->a(Lcom/baidu/mapapi/map/track/TraceAnimationListener;)V

    .line 1159
    iget-object p2, p0, Lcom/baidu/mapapi/map/BaiduMap;->Y:Lcom/baidu/mapsdkplatform/comapi/map/a/c;

    invoke-virtual {p2, p1}, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->a(Lcom/baidu/mapapi/map/track/TraceOptions;)Lcom/baidu/mapapi/map/track/TraceOverlay;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v0
.end method

.method public final animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V
    .locals 1

    const/16 v0, 0x12c

    .line 1511
    invoke-virtual {p0, p1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;I)V

    return-void
.end method

.method public final animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;I)V
    .locals 2

    if-eqz p1, :cond_3

    if-gtz p2, :cond_0

    goto :goto_0

    .line 1474
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/BaiduMap;->a(Lcom/baidu/mapapi/map/MapStatusUpdate;)Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object p1

    .line 1475
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_1

    return-void

    .line 1479
    :cond_1
    sget v1, Lcom/baidu/mapapi/map/BaiduMap;->mapStatusReason:I

    or-int/lit16 v1, v1, 0x100

    sput v1, Lcom/baidu/mapapi/map/BaiduMap;->mapStatusReason:I

    .line 1480
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->V:Z

    if-nez v1, :cond_2

    .line 1481
    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Lcom/baidu/mapsdkplatform/comapi/map/x;)V

    goto :goto_0

    .line 1483
    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Lcom/baidu/mapsdkplatform/comapi/map/x;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method b()Z
    .locals 1

    .line 3025
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3028
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->f()Z

    move-result v0

    return v0
.end method

.method c()V
    .locals 1

    const/4 v0, 0x1

    .line 3172
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->X:Z

    .line 3174
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->Y:Lcom/baidu/mapsdkplatform/comapi/map/a/c;

    if-eqz v0, :cond_0

    .line 3175
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->c()V

    const/4 v0, 0x0

    .line 3176
    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->Y:Lcom/baidu/mapsdkplatform/comapi/map/a/c;

    .line 3179
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/BaiduMap;->hideInfoWindow()V

    return-void
.end method

.method public changeLocationLayerOrder(Z)V
    .locals 1

    .line 3004
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    return-void

    .line 3007
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->f(Z)V

    return-void
.end method

.method public cleanCache(I)V
    .locals 1

    .line 3165
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    return-void

    .line 3168
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(I)V

    return-void
.end method

.method public final clear()V
    .locals 2

    .line 1380
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->X:Z

    if-eqz v0, :cond_0

    return-void

    .line 1383
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1384
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1385
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1387
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1388
    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->c(Z)V

    .line 1389
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->n()V

    .line 1392
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/BaiduMap;->hideInfoWindow()V

    return-void
.end method

.method public getAllInfoWindows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/InfoWindow;",
            ">;"
        }
    .end annotation

    .line 2471
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->n:Ljava/util/List;

    return-object v0
.end method

.method public final getCompassPosition()Landroid/graphics/Point;
    .locals 1

    .line 2078
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz v0, :cond_0

    .line 2079
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->h()Ljava/lang/String;

    move-result-object v0

    .line 2080
    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/BaiduMap;->a(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFocusedBaseIndoorMapInfo()Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;
    .locals 1

    .line 2899
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2902
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->r()Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getFontSizeLevel()I
    .locals 1

    .line 3233
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz v0, :cond_0

    .line 3234
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->G()I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getGLMapView()Lcom/baidu/platform/comapi/map/MapSurfaceView;
    .locals 1

    .line 1612
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->h:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    return-object v0
.end method

.method public getHeatMapDrawFrameCallBack()Lcom/baidu/mapapi/map/BaiduMap$OnHeatMapDrawFrameCallBack;
    .locals 1

    .line 2712
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->H:Lcom/baidu/mapapi/map/BaiduMap$OnHeatMapDrawFrameCallBack;

    return-object v0
.end method

.method public final getLocationConfigeration()Lcom/baidu/mapapi/map/MyLocationConfiguration;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1795
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/BaiduMap;->getLocationConfiguration()Lcom/baidu/mapapi/map/MyLocationConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public final getLocationConfiguration()Lcom/baidu/mapapi/map/MyLocationConfiguration;
    .locals 1

    .line 1787
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->R:Lcom/baidu/mapapi/map/MyLocationConfiguration;

    return-object v0
.end method

.method public final getLocationData()Lcom/baidu/mapapi/map/MyLocationData;
    .locals 1

    .line 1760
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->Q:Lcom/baidu/mapapi/map/MyLocationData;

    return-object v0
.end method

.method public final getMapApprovalNumber()Ljava/lang/String;
    .locals 1

    .line 3188
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 3191
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->O()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMapCopyrightInfo()Ljava/lang/String;
    .locals 1

    .line 3199
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 3203
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->Q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMapLanguage()Lcom/baidu/mapapi/map/MapLanguage;
    .locals 2

    .line 3257
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz v0, :cond_0

    .line 3258
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->R()I

    move-result v0

    .line 3259
    invoke-static {}, Lcom/baidu/mapapi/map/MapLanguage;->values()[Lcom/baidu/mapapi/map/MapLanguage;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0

    .line 3262
    :cond_0
    sget-object v0, Lcom/baidu/mapapi/map/MapLanguage;->CHINESE:Lcom/baidu/mapapi/map/MapLanguage;

    return-object v0
.end method

.method public final getMapMappingQualificationInfo()Ljava/lang/String;
    .locals 1

    .line 3211
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 3215
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->P()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMapStatus()Lcom/baidu/mapapi/map/MapStatus;
    .locals 1

    .line 1422
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1425
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->D()Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object v0

    .line 1426
    invoke-static {v0}, Lcom/baidu/mapapi/map/MapStatus;->a(Lcom/baidu/mapsdkplatform/comapi/map/x;)Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v0

    return-object v0
.end method

.method public final getMapStatusLimit()Lcom/baidu/mapapi/model/LatLngBounds;
    .locals 1

    .line 1434
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1437
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->E()Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object v0

    return-object v0
.end method

.method public getMapTextureView()Lcom/baidu/platform/comapi/map/MapTextureView;
    .locals 1

    .line 1621
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->i:Lcom/baidu/platform/comapi/map/MapTextureView;

    return-object v0
.end method

.method public final getMapType()I
    .locals 2

    .line 1586
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1589
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->l()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    return v0

    .line 1592
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    :cond_2
    return v1
.end method

.method public getMarkersInBounds(Lcom/baidu/mapapi/model/LatLngBounds;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/mapapi/model/LatLngBounds;",
            ")",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/Marker;",
            ">;"
        }
    .end annotation

    .line 1357
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1362
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1363
    iget-object v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 1367
    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/map/Marker;

    .line 1368
    invoke-virtual {v2}, Lcom/baidu/mapapi/map/Marker;->getPosition()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/baidu/mapapi/model/LatLngBounds;->contains(Lcom/baidu/mapapi/model/LatLng;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1369
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final getMaxZoomLevel()F
    .locals 1

    .line 1630
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1633
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->b()F

    move-result v0

    return v0
.end method

.method public final getMinZoomLevel()F
    .locals 1

    .line 1671
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1674
    :cond_0
    iget v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/d;->b:F

    return v0
.end method

.method public getOverlayLatLngBounds(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/model/LatLngBounds;
    .locals 1

    if-eqz p1, :cond_1

    .line 1206
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1210
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/OverlayOptions;->a()Lcom/baidu/mapapi/map/Overlay;

    move-result-object p1

    .line 1211
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1212
    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1213
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    invoke-virtual {p1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->b(Landroid/os/Bundle;)Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getProjection()Lcom/baidu/mapapi/map/Projection;
    .locals 1

    .line 1683
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->f:Lcom/baidu/mapapi/map/Projection;

    return-object v0
.end method

.method public getProjectionMatrix()[F
    .locals 1

    .line 3061
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3065
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->M()[F

    move-result-object v0

    return-object v0
.end method

.method public final getUiSettings()Lcom/baidu/mapapi/map/UiSettings;
    .locals 1

    .line 1692
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->g:Lcom/baidu/mapapi/map/UiSettings;

    return-object v0
.end method

.method public getViewMatrix()[F
    .locals 1

    .line 3074
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3078
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->N()[F

    move-result-object v0

    return-object v0
.end method

.method public getZoomToBound(IIIIII)F
    .locals 7

    .line 1499
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 1502
    invoke-virtual/range {v0 .. v6}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(IIIIII)F

    move-result p1

    return p1
.end method

.method public getmGLMapView()Lcom/baidu/platform/comapi/map/MapSurfaceView;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1603
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->h:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    return-object v0
.end method

.method public hideInfoWindow()V
    .locals 5

    .line 2478
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->N:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 2479
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2480
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/InfoWindow;

    if-eqz v1, :cond_0

    .line 2482
    iget-object v1, v1, Lcom/baidu/mapapi/map/InfoWindow;->c:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2484
    sget-object v2, Lcom/baidu/mapapi/map/b;->b:[I

    iget-object v3, p0, Lcom/baidu/mapapi/map/BaiduMap;->d:Lcom/baidu/mapsdkplatform/comapi/map/w;

    invoke-virtual {v3}, Lcom/baidu/mapsdkplatform/comapi/map/w;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2492
    :cond_1
    iget-object v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->a:Lcom/baidu/mapapi/map/MapView;

    if-eqz v2, :cond_0

    .line 2493
    invoke-virtual {v2, v1}, Lcom/baidu/mapapi/map/MapView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 2486
    :cond_2
    iget-object v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->b:Lcom/baidu/mapapi/map/TextureMapView;

    if-eqz v2, :cond_0

    .line 2487
    invoke-virtual {v2, v1}, Lcom/baidu/mapapi/map/TextureMapView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 2504
    :cond_3
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/Overlay;

    .line 2505
    iget-object v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->N:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 2506
    iget-object v3, v1, Lcom/baidu/mapapi/map/Overlay;->F:Ljava/lang/String;

    .line 2507
    instance-of v4, v1, Lcom/baidu/mapapi/map/Marker;

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2508
    invoke-virtual {v1}, Lcom/baidu/mapapi/map/Overlay;->remove()V

    goto :goto_1

    .line 2511
    :cond_5
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->N:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2512
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->O:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2513
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public hideInfoWindow(Lcom/baidu/mapapi/map/InfoWindow;)V
    .locals 3

    .line 2523
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->O:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz p1, :cond_5

    .line 2524
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2527
    :cond_0
    iget-object v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->c:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 2529
    sget-object v1, Lcom/baidu/mapapi/map/b;->b:[I

    iget-object v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->d:Lcom/baidu/mapsdkplatform/comapi/map/w;

    invoke-virtual {v2}, Lcom/baidu/mapsdkplatform/comapi/map/w;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 2536
    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->a:Lcom/baidu/mapapi/map/MapView;

    if-eqz v1, :cond_3

    .line 2537
    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/MapView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 2531
    :cond_2
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->b:Lcom/baidu/mapapi/map/TextureMapView;

    if-eqz v1, :cond_3

    .line 2532
    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/TextureMapView;->removeView(Landroid/view/View;)V

    .line 2544
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->O:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_4

    .line 2546
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Marker;->remove()V

    .line 2547
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->N:Ljava/util/Map;

    iget-object v0, v0, Lcom/baidu/mapapi/map/Marker;->F:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2549
    :cond_4
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->O:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2550
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public hideSDKLayer()V
    .locals 1

    .line 2985
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    return-void

    .line 2988
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->c()V

    return-void
.end method

.method public final isBaiduHeatMapEnabled()Z
    .locals 1

    .line 2109
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2112
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->i()Z

    move-result v0

    return v0
.end method

.method public isBaseIndoorMapMode()Z
    .locals 1

    .line 2942
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2945
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->s()Z

    move-result v0

    return v0
.end method

.method public final isBuildingsEnabled()Z
    .locals 1

    .line 1712
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1715
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->m()Z

    move-result v0

    return v0
.end method

.method public final isMyLocationEnabled()Z
    .locals 1

    .line 1735
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1738
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->u()Z

    move-result v0

    return v0
.end method

.method public final isShowMapPoi()Z
    .locals 1

    .line 2195
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->S:Z

    return v0
.end method

.method public final isSupportBaiduHeatMap()Z
    .locals 1

    .line 2121
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2124
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->j()Z

    move-result v0

    return v0
.end method

.method public final isTrafficEnabled()Z
    .locals 1

    .line 2172
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2175
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->g()Z

    move-result v0

    return v0
.end method

.method public final removeMarkerClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnMarkerClickListener;)V
    .locals 1

    .line 2954
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->y:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2955
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->y:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeOverLays(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/Overlay;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 1294
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->X:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 1298
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1299
    div-int/lit16 v1, v0, 0x190

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v1, 0x1

    if-ge v3, v4, :cond_a

    const/16 v4, 0x190

    if-nez v1, :cond_1

    move v5, v0

    goto :goto_1

    :cond_1
    if-ne v3, v1, :cond_2

    mul-int/lit16 v5, v1, 0x190

    sub-int v5, v0, v5

    goto :goto_1

    :cond_2
    const/16 v5, 0x190

    .line 1310
    :goto_1
    new-array v5, v5, [Landroid/os/Bundle;

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_8

    mul-int/lit16 v7, v3, 0x190

    add-int/2addr v7, v6

    if-ge v7, v0, :cond_8

    .line 1313
    iget-boolean v8, p0, Lcom/baidu/mapapi/map/BaiduMap;->X:Z

    if-eqz v8, :cond_3

    return-void

    .line 1317
    :cond_3
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/mapapi/map/Overlay;

    if-nez v7, :cond_4

    goto :goto_3

    .line 1322
    :cond_4
    invoke-virtual {v7}, Lcom/baidu/mapapi/map/Overlay;->a()Landroid/os/Bundle;

    move-result-object v8

    .line 1323
    iget-object v9, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz v9, :cond_5

    .line 1324
    invoke-virtual {v9, v8}, Lcom/baidu/mapsdkplatform/comapi/map/d;->g(Landroid/os/Bundle;)V

    .line 1326
    :cond_5
    aput-object v8, v5, v6

    .line 1327
    iget-object v8, p0, Lcom/baidu/mapapi/map/BaiduMap;->m:Ljava/util/List;

    if-eqz v8, :cond_6

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1328
    iget-object v8, p0, Lcom/baidu/mapapi/map/BaiduMap;->m:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1331
    :cond_6
    iget-object v8, p0, Lcom/baidu/mapapi/map/BaiduMap;->l:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1332
    check-cast v7, Lcom/baidu/mapapi/map/Marker;

    .line 1333
    iget-object v8, v7, Lcom/baidu/mapapi/map/Marker;->s:Ljava/util/ArrayList;

    if-eqz v8, :cond_7

    .line 1334
    iget-object v8, p0, Lcom/baidu/mapapi/map/BaiduMap;->l:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1335
    iget-object v7, p0, Lcom/baidu/mapapi/map/BaiduMap;->l:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_7

    .line 1336
    iget-object v7, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz v7, :cond_7

    .line 1337
    invoke-virtual {v7, v2}, Lcom/baidu/mapsdkplatform/comapi/map/d;->c(Z)V

    :cond_7
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1344
    :cond_8
    iget-object v4, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz v4, :cond_9

    .line 1345
    invoke-virtual {v4, v5}, Lcom/baidu/mapsdkplatform/comapi/map/d;->b([Landroid/os/Bundle;)V

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1349
    :cond_a
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_b
    :goto_4
    return-void
.end method

.method public final setBaiduHeatMapEnabled(Z)V
    .locals 1

    .line 2021
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz v0, :cond_0

    .line 2022
    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->k(Z)V

    :cond_0
    return-void
.end method

.method public final setBuildingsEnabled(Z)V
    .locals 1

    .line 1701
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz v0, :cond_0

    .line 1702
    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->m(Z)V

    :cond_0
    return-void
.end method

.method public setCompassEnable(Z)V
    .locals 1

    .line 3014
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    return-void

    .line 3017
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->h(Z)V

    return-void
.end method

.method public setCompassIcon(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 2067
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    return-void

    .line 2070
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Landroid/graphics/Bitmap;)V

    return-void

    .line 2065
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: compass\'s icon can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompassPosition(Landroid/graphics/Point;)V
    .locals 3

    .line 2050
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    return-void

    .line 2053
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 2054
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2055
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->W:Landroid/graphics/Point;

    :cond_1
    return-void
.end method

.method public setCustomTrafficColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    .line 2149
    iget-object v1, v0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const-string v1, "^#[0-9a-fA-F]{8}$"

    .line 2153
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v3, p1

    .line 2154
    invoke-virtual {v3, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v4, p2

    invoke-virtual {v4, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v5, p3

    invoke-virtual {v5, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object/from16 v6, p4

    invoke-virtual {v6, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2155
    iget-object v1, v0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    int-to-long v7, v2

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    int-to-long v9, v2

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    int-to-long v11, v2

    invoke-static/range {p4 .. p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    int-to-long v13, v2

    const/4 v2, 0x1

    move-object v3, v1

    move-wide v4, v7

    move-wide v6, v9

    move-wide v8, v11

    move-wide v10, v13

    move v12, v2

    invoke-virtual/range {v3 .. v12}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(JJJJZ)V

    goto :goto_0

    .line 2157
    :cond_1
    sget-object v1, Lcom/baidu/mapapi/map/BaiduMap;->e:Ljava/lang/String;

    const-string v3, "the string of the input customTrafficColor is error"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 2160
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2161
    iget-object v2, v0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    const-string v1, "#ffffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    int-to-long v9, v1

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(JJJJZ)V

    :cond_3
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public setDEMEnable(Z)V
    .locals 1

    .line 3271
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz v0, :cond_0

    .line 3272
    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->b(Z)V

    :cond_0
    return-void
.end method

.method public final setFontSizeLevel(I)V
    .locals 1

    .line 3223
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz v0, :cond_0

    .line 3224
    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->c(I)V

    :cond_0
    return-void
.end method

.method public setHeatMapFrameAnimationIndex(I)V
    .locals 1

    .line 1978
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    return-void

    .line 1981
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->b(I)V

    return-void
.end method

.method public final setIndoorEnable(Z)V
    .locals 2

    .line 2033
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz v0, :cond_0

    .line 2034
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->U:Z

    .line 2035
    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->o(Z)V

    .line 2037
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->F:Lcom/baidu/mapapi/map/BaiduMap$OnBaseIndoorMapListener;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 2039
    invoke-interface {v0, p1, v1}, Lcom/baidu/mapapi/map/BaiduMap$OnBaseIndoorMapListener;->onBaseIndoorMapMode(ZLcom/baidu/mapapi/map/MapBaseIndoorMapInfo;)V

    :cond_1
    return-void
.end method

.method public setLayerClickable(Lcom/baidu/mapapi/map/MapLayer;Z)V
    .locals 1

    .line 3149
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    return-void

    .line 3152
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Lcom/baidu/mapapi/map/MapLayer;Z)V

    return-void
.end method

.method public final setMapLanguage(Lcom/baidu/mapapi/map/MapLanguage;)V
    .locals 0

    return-void
.end method

.method public final setMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1405
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/BaiduMap;->a(Lcom/baidu/mapapi/map/MapStatusUpdate;)Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object p1

    .line 1406
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_1

    return-void

    .line 1410
    :cond_1
    sget v1, Lcom/baidu/mapapi/map/BaiduMap;->mapStatusReason:I

    or-int/lit16 v1, v1, 0x100

    sput v1, Lcom/baidu/mapapi/map/BaiduMap;->mapStatusReason:I

    const/4 v1, 0x1

    .line 1411
    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->B(Z)V

    .line 1412
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Lcom/baidu/mapsdkplatform/comapi/map/x;)V

    return-void
.end method

.method public final setMapStatusLimits(Lcom/baidu/mapapi/model/LatLngBounds;)V
    .locals 1

    .line 1454
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    return-void

    .line 1458
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Lcom/baidu/mapapi/model/LatLngBounds;)V

    .line 1459
    invoke-static {p1}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newLatLngBounds(Lcom/baidu/mapapi/model/LatLngBounds;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object p1

    .line 1460
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/map/BaiduMap;->setMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    return-void
.end method

.method public final setMapType(I)V
    .locals 4

    .line 1537
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_5

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 1543
    :cond_1
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1544
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    invoke-virtual {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/map/d;->C(Z)V

    .line 1546
    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->C()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1547
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    invoke-virtual {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/map/d;->D(Z)V

    .line 1549
    :cond_3
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    invoke-virtual {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/map/d;->j(Z)V

    .line 1550
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    invoke-virtual {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/map/d;->o(Z)V

    goto :goto_0

    .line 1563
    :cond_4
    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Z)V

    .line 1564
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    iget-boolean v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->S:Z

    invoke-virtual {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/map/d;->C(Z)V

    .line 1565
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    iget-boolean v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->T:Z

    invoke-virtual {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/map/d;->D(Z)V

    .line 1566
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->j(Z)V

    goto :goto_0

    .line 1554
    :cond_5
    invoke-virtual {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Z)V

    .line 1555
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    iget-boolean v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->S:Z

    invoke-virtual {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/map/d;->C(Z)V

    .line 1556
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    iget-boolean v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->T:Z

    invoke-virtual {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/map/d;->D(Z)V

    .line 1557
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->j(Z)V

    .line 1558
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->U:Z

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->o(Z)V

    .line 1573
    :goto_0
    invoke-static {}, Lcom/baidu/mapapi/OpenLogUtil;->isMapLogEnable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1574
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BasicMap setMapType type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1575
    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public final setMaxAndMinZoomLevel(FF)V
    .locals 1

    const/high16 v0, 0x41a80000    # 21.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x40800000    # 4.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    return-void

    :cond_1
    cmpg-float v0, p1, p2

    if-gez v0, :cond_2

    return-void

    .line 1660
    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz v0, :cond_3

    .line 1661
    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(FF)V

    :cond_3
    return-void
.end method

.method public final setMyLocationConfigeration(Lcom/baidu/mapapi/map/MyLocationConfiguration;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1778
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/map/BaiduMap;->setMyLocationConfiguration(Lcom/baidu/mapapi/map/MyLocationConfiguration;)V

    return-void
.end method

.method public final setMyLocationConfiguration(Lcom/baidu/mapapi/map/MyLocationConfiguration;)V
    .locals 1

    .line 1769
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->R:Lcom/baidu/mapapi/map/MyLocationConfiguration;

    .line 1770
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->Q:Lcom/baidu/mapapi/map/MyLocationData;

    invoke-direct {p0, v0, p1}, Lcom/baidu/mapapi/map/BaiduMap;->a(Lcom/baidu/mapapi/map/MyLocationData;Lcom/baidu/mapapi/map/MyLocationConfiguration;)V

    return-void
.end method

.method public final setMyLocationData(Lcom/baidu/mapapi/map/MyLocationData;)V
    .locals 4

    .line 1747
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->Q:Lcom/baidu/mapapi/map/MyLocationData;

    .line 1748
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->R:Lcom/baidu/mapapi/map/MyLocationConfiguration;

    if-nez v0, :cond_0

    .line 1749
    new-instance v0, Lcom/baidu/mapapi/map/MyLocationConfiguration;

    sget-object v1, Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;->NORMAL:Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/mapapi/map/MyLocationConfiguration;-><init>(Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;ZLcom/baidu/mapapi/map/BitmapDescriptor;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->R:Lcom/baidu/mapapi/map/MyLocationConfiguration;

    .line 1751
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->R:Lcom/baidu/mapapi/map/MyLocationConfiguration;

    invoke-direct {p0, p1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->a(Lcom/baidu/mapapi/map/MyLocationData;Lcom/baidu/mapapi/map/MyLocationConfiguration;)V

    return-void
.end method

.method public final setMyLocationEnabled(Z)V
    .locals 1

    .line 1724
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz v0, :cond_0

    .line 1725
    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->q(Z)V

    :cond_0
    return-void
.end method

.method public final setOnBaseIndoorMapListener(Lcom/baidu/mapapi/map/BaiduMap$OnBaseIndoorMapListener;)V
    .locals 0

    .line 2808
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->F:Lcom/baidu/mapapi/map/BaiduMap$OnBaseIndoorMapListener;

    return-void
.end method

.method public setOnHeatMapDrawFrameCallBack(Lcom/baidu/mapapi/map/BaiduMap$OnHeatMapDrawFrameCallBack;)V
    .locals 0

    .line 2708
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->H:Lcom/baidu/mapapi/map/BaiduMap$OnHeatMapDrawFrameCallBack;

    return-void
.end method

.method public final setOnMapClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnMapClickListener;)V
    .locals 0

    .line 2695
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->t:Lcom/baidu/mapapi/map/BaiduMap$OnMapClickListener;

    return-void
.end method

.method public final setOnMapDoubleClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnMapDoubleClickListener;)V
    .locals 0

    .line 2729
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->w:Lcom/baidu/mapapi/map/BaiduMap$OnMapDoubleClickListener;

    return-void
.end method

.method public final setOnMapDrawFrameCallback(Lcom/baidu/mapapi/map/BaiduMap$OnMapDrawFrameCallback;)V
    .locals 0

    .line 2798
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->E:Lcom/baidu/mapapi/map/BaiduMap$OnMapDrawFrameCallback;

    return-void
.end method

.method public final setOnMapGestureListener(Lcom/baidu/mapapi/map/BaiduMap$onMapGestureListener;)V
    .locals 0

    .line 2686
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->s:Lcom/baidu/mapapi/map/BaiduMap$onMapGestureListener;

    return-void
.end method

.method public setOnMapLoadedCallback(Lcom/baidu/mapapi/map/BaiduMap$OnMapLoadedCallback;)V
    .locals 0

    .line 2704
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->u:Lcom/baidu/mapapi/map/BaiduMap$OnMapLoadedCallback;

    return-void
.end method

.method public final setOnMapLongClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnMapLongClickListener;)V
    .locals 0

    .line 2738
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->x:Lcom/baidu/mapapi/map/BaiduMap$OnMapLongClickListener;

    return-void
.end method

.method public setOnMapRenderCallbadk(Lcom/baidu/mapapi/map/BaiduMap$OnMapRenderCallback;)V
    .locals 0

    .line 2720
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->v:Lcom/baidu/mapapi/map/BaiduMap$OnMapRenderCallback;

    return-void
.end method

.method public final setOnMapRenderValidDataListener(Lcom/baidu/mapapi/map/BaiduMap$OnMapRenderValidDataListener;)V
    .locals 0

    .line 2818
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->G:Lcom/baidu/mapapi/map/BaiduMap$OnMapRenderValidDataListener;

    return-void
.end method

.method public final setOnMapStatusChangeListener(Lcom/baidu/mapapi/map/BaiduMap$OnMapStatusChangeListener;)V
    .locals 0

    .line 2673
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->q:Lcom/baidu/mapapi/map/BaiduMap$OnMapStatusChangeListener;

    return-void
.end method

.method public final setOnMapTouchListener(Lcom/baidu/mapapi/map/BaiduMap$OnMapTouchListener;)V
    .locals 0

    .line 2682
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->r:Lcom/baidu/mapapi/map/BaiduMap$OnMapTouchListener;

    return-void
.end method

.method public final setOnMarkerClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnMarkerClickListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2769
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->y:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2770
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->y:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final setOnMarkerDragListener(Lcom/baidu/mapapi/map/BaiduMap$OnMarkerDragListener;)V
    .locals 0

    .line 2780
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->B:Lcom/baidu/mapapi/map/BaiduMap$OnMarkerDragListener;

    return-void
.end method

.method public final setOnMultiPointClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnMultiPointClickListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2759
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->A:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final setOnMyLocationClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnMyLocationClickListener;)V
    .locals 0

    .line 2789
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->C:Lcom/baidu/mapapi/map/BaiduMap$OnMyLocationClickListener;

    return-void
.end method

.method public final setOnPolylineClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnPolylineClickListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2748
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final setOnSynchronizationListener(Lcom/baidu/mapapi/map/BaiduMap$OnSynchronizationListener;)V
    .locals 0

    .line 2890
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->I:Lcom/baidu/mapapi/map/BaiduMap$OnSynchronizationListener;

    return-void
.end method

.method public setOverlayUnderPoi(Z)V
    .locals 1

    .line 3091
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    return-void

    .line 3094
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->e(Z)V

    return-void
.end method

.method public final setPadding(IIII)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2215
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/baidu/mapapi/map/BaiduMap;->setViewPadding(IIII)V

    return-void
.end method

.method public setPixelFormatTransparent(Z)V
    .locals 1

    .line 2656
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->h:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 2660
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->setPixelFormatTransparent(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2662
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->setPixelFormatTransparent(Z)V

    :goto_0
    return-void
.end method

.method public final setTrafficEnabled(Z)V
    .locals 1

    .line 2133
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz v0, :cond_0

    .line 2134
    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->l(Z)V

    :cond_0
    return-void
.end method

.method public final setViewPadding(IIII)V
    .locals 6

    if-ltz p1, :cond_6

    if-ltz p2, :cond_6

    if-ltz p3, :cond_6

    if-gez p4, :cond_0

    goto/16 :goto_0

    .line 2230
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_1

    return-void

    .line 2236
    :cond_1
    sget-object v0, Lcom/baidu/mapapi/map/b;->b:[I

    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->d:Lcom/baidu/mapsdkplatform/comapi/map/w;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/w;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    goto/16 :goto_0

    .line 2251
    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->a:Lcom/baidu/mapapi/map/MapView;

    if-nez v0, :cond_3

    return-void

    .line 2255
    :cond_3
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    sub-int/2addr v0, p3

    int-to-float v0, v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/MapView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 2256
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/MapView;->getHeight()I

    move-result v1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p4

    int-to-float v1, v1

    iget-object v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v2}, Lcom/baidu/mapapi/map/MapView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 2258
    iget-object v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    new-instance v3, Landroid/graphics/Point;

    int-to-float v4, p1

    iget-object v5, p0, Lcom/baidu/mapapi/map/BaiduMap;->W:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    mul-float v5, v5, v0

    add-float/2addr v4, v5

    float-to-int v0, v4

    int-to-float v4, p2

    iget-object v5, p0, Lcom/baidu/mapapi/map/BaiduMap;->W:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float v5, v5, v1

    add-float/2addr v4, v5

    float-to-int v1, v4

    invoke-direct {v3, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Landroid/graphics/Point;)Z

    .line 2260
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/mapapi/map/MapView;->setPadding(IIII)V

    .line 2261
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MapView;->invalidate()V

    goto :goto_0

    .line 2238
    :cond_4
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->b:Lcom/baidu/mapapi/map/TextureMapView;

    if-nez v0, :cond_5

    return-void

    .line 2241
    :cond_5
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/TextureMapView;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    sub-int/2addr v0, p3

    int-to-float v0, v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->b:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/TextureMapView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 2242
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->b:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/TextureMapView;->getHeight()I

    move-result v1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p4

    int-to-float v1, v1

    iget-object v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->b:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-virtual {v2}, Lcom/baidu/mapapi/map/TextureMapView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 2244
    iget-object v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    new-instance v3, Landroid/graphics/Point;

    int-to-float v4, p1

    iget-object v5, p0, Lcom/baidu/mapapi/map/BaiduMap;->W:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    mul-float v5, v5, v0

    add-float/2addr v4, v5

    float-to-int v0, v4

    int-to-float v4, p2

    iget-object v5, p0, Lcom/baidu/mapapi/map/BaiduMap;->W:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float v5, v5, v1

    add-float/2addr v4, v5

    float-to-int v1, v4

    invoke-direct {v3, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Landroid/graphics/Point;)Z

    .line 2246
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->b:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/mapapi/map/TextureMapView;->setPadding(IIII)V

    .line 2247
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->b:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/TextureMapView;->invalidate()V

    :cond_6
    :goto_0
    return-void
.end method

.method public showInfoWindow(Lcom/baidu/mapapi/map/InfoWindow;)V
    .locals 1

    const/4 v0, 0x1

    .line 2365
    invoke-virtual {p0, p1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->showInfoWindow(Lcom/baidu/mapapi/map/InfoWindow;Z)V

    return-void
.end method

.method public showInfoWindow(Lcom/baidu/mapapi/map/InfoWindow;Z)V
    .locals 6

    .line 2375
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->O:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz p1, :cond_9

    .line 2377
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->X:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p2, :cond_1

    .line 2382
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/BaiduMap;->hideInfoWindow()V

    .line 2385
    :cond_1
    iget-object p2, p0, Lcom/baidu/mapapi/map/BaiduMap;->p:Lcom/baidu/mapapi/map/InfoWindow$a;

    iput-object p2, p1, Lcom/baidu/mapapi/map/InfoWindow;->f:Lcom/baidu/mapapi/map/InfoWindow$a;

    .line 2386
    iget-object p2, p1, Lcom/baidu/mapapi/map/InfoWindow;->c:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_5

    iget-boolean p2, p1, Lcom/baidu/mapapi/map/InfoWindow;->k:Z

    if-eqz p2, :cond_5

    .line 2387
    iget-object p2, p1, Lcom/baidu/mapapi/map/InfoWindow;->c:Landroid/view/View;

    .line 2388
    invoke-virtual {p2}, Landroid/view/View;->destroyDrawingCache()V

    .line 2390
    new-instance v2, Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;

    invoke-direct {v2}, Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;-><init>()V

    .line 2391
    sget-object v3, Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;->mapMode:Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;->layoutMode(Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;)Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/mapapi/map/InfoWindow;->d:Lcom/baidu/mapapi/model/LatLng;

    .line 2392
    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;

    move-result-object v2

    iget v3, p1, Lcom/baidu/mapapi/map/InfoWindow;->g:I

    .line 2393
    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;->yOffset(I)Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;

    move-result-object v2

    .line 2394
    invoke-virtual {v2}, Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;->build()Lcom/baidu/mapapi/map/MapViewLayoutParams;

    move-result-object v2

    .line 2395
    sget-object v3, Lcom/baidu/mapapi/map/b;->b:[I

    iget-object v4, p0, Lcom/baidu/mapapi/map/BaiduMap;->d:Lcom/baidu/mapsdkplatform/comapi/map/w;

    invoke-virtual {v4}, Lcom/baidu/mapsdkplatform/comapi/map/w;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v1, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 2403
    :cond_2
    iget-object v3, p0, Lcom/baidu/mapapi/map/BaiduMap;->a:Lcom/baidu/mapapi/map/MapView;

    if-eqz v3, :cond_4

    .line 2404
    invoke-virtual {v3, p2, v2}, Lcom/baidu/mapapi/map/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2397
    :cond_3
    iget-object v3, p0, Lcom/baidu/mapapi/map/BaiduMap;->b:Lcom/baidu/mapapi/map/TextureMapView;

    if-eqz v3, :cond_4

    .line 2398
    invoke-virtual {v3, p2, v2}, Lcom/baidu/mapapi/map/TextureMapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_5
    const/4 p2, 0x1

    .line 2418
    :goto_1
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/BaiduMap;->b(Lcom/baidu/mapapi/map/InfoWindow;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v2

    if-nez v2, :cond_6

    return-void

    .line 2422
    :cond_6
    new-instance v3, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v3}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {v3, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->perspective(Z)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v3

    .line 2423
    invoke-virtual {v3, v2}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/mapapi/map/InfoWindow;->d:Lcom/baidu/mapapi/model/LatLng;

    .line 2424
    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    const v3, 0x7fffffff

    .line 2425
    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    iget v3, p1, Lcom/baidu/mapapi/map/InfoWindow;->g:I

    .line 2426
    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->yOffset(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/baidu/mapapi/map/MarkerOptions;->infoWindow(Lcom/baidu/mapapi/map/InfoWindow;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    .line 2427
    invoke-virtual {v2}, Lcom/baidu/mapapi/map/MarkerOptions;->a()Lcom/baidu/mapapi/map/Overlay;

    move-result-object v2

    .line 2428
    iget-object v3, p0, Lcom/baidu/mapapi/map/BaiduMap;->o:Lcom/baidu/mapapi/map/Overlay$a;

    iput-object v3, v2, Lcom/baidu/mapapi/map/Overlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    .line 2429
    sget-object v3, Lcom/baidu/mapsdkplatform/comapi/map/i;->b:Lcom/baidu/mapsdkplatform/comapi/map/i;

    iput-object v3, v2, Lcom/baidu/mapapi/map/Overlay;->type:Lcom/baidu/mapsdkplatform/comapi/map/i;

    .line 2430
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2431
    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 2432
    iget-object v4, p1, Lcom/baidu/mapapi/map/InfoWindow;->c:Landroid/view/View;

    const-string v5, "draw_with_view"

    if-eqz v4, :cond_7

    .line 2433
    invoke-virtual {v3, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 2435
    :cond_7
    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2438
    :goto_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz v0, :cond_8

    if-eqz p2, :cond_8

    iget-boolean p2, p0, Lcom/baidu/mapapi/map/BaiduMap;->X:Z

    if-nez p2, :cond_8

    .line 2439
    iget-object p2, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    invoke-virtual {p2, v3}, Lcom/baidu/mapsdkplatform/comapi/map/d;->c(Landroid/os/Bundle;)V

    .line 2440
    iget-object p2, p0, Lcom/baidu/mapapi/map/BaiduMap;->k:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2443
    :cond_8
    check-cast v2, Lcom/baidu/mapapi/map/Marker;

    .line 2444
    iget-object p2, p0, Lcom/baidu/mapapi/map/BaiduMap;->p:Lcom/baidu/mapapi/map/InfoWindow$a;

    iput-object p2, v2, Lcom/baidu/mapapi/map/Marker;->A:Lcom/baidu/mapapi/map/InfoWindow$a;

    .line 2445
    iget-object p2, p0, Lcom/baidu/mapapi/map/BaiduMap;->N:Ljava/util/Map;

    iget-object v0, v2, Lcom/baidu/mapapi/map/Marker;->F:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2446
    iget-object p2, p0, Lcom/baidu/mapapi/map/BaiduMap;->O:Ljava/util/Map;

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2447
    iget-object p2, p0, Lcom/baidu/mapapi/map/BaiduMap;->n:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_3
    return-void
.end method

.method public showInfoWindows(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/InfoWindow;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 2457
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2460
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/InfoWindow;

    const/4 v1, 0x0

    .line 2461
    invoke-virtual {p0, v0, v1}, Lcom/baidu/mapapi/map/BaiduMap;->showInfoWindow(Lcom/baidu/mapapi/map/InfoWindow;Z)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final showMapIndoorPoi(Z)V
    .locals 1

    .line 2203
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz v0, :cond_0

    .line 2204
    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->D(Z)V

    .line 2205
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->T:Z

    :cond_0
    return-void
.end method

.method public final showMapPoi(Z)V
    .locals 1

    .line 2183
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz v0, :cond_0

    .line 2184
    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->C(Z)V

    .line 2185
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->S:Z

    :cond_0
    return-void
.end method

.method public showOperateLayer(Z)V
    .locals 1

    .line 3133
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    return-void

    .line 3136
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->d(Z)V

    return-void
.end method

.method public showSDKLayer()V
    .locals 1

    .line 2992
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    return-void

    .line 2995
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->d()V

    return-void
.end method

.method public final snapshot(Lcom/baidu/mapapi/map/BaiduMap$SnapshotReadyCallback;)V
    .locals 4

    .line 2277
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->D:Lcom/baidu/mapapi/map/BaiduMap$SnapshotReadyCallback;

    .line 2278
    sget-object p1, Lcom/baidu/mapapi/map/b;->b:[I

    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->d:Lcom/baidu/mapsdkplatform/comapi/map/w;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/w;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2294
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->h:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getController()Lcom/baidu/platform/comapi/map/MapController;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2295
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->h:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    new-instance v0, Lcom/baidu/mapapi/map/i;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/i;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->h:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    .line 2300
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getController()Lcom/baidu/platform/comapi/map/MapController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getScreenWidth()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->h:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    .line 2301
    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getController()Lcom/baidu/platform/comapi/map/MapController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/MapController;->getScreenHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2295
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->doCaptureMapView(Lcom/baidu/platform/comapi/map/c;IILandroid/graphics/Bitmap$Config;)V

    .line 2303
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->h:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->requestRender()V

    goto :goto_0

    .line 2280
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->i:Lcom/baidu/platform/comapi/map/MapTextureView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapTextureView;->getController()Lcom/baidu/platform/comapi/map/MapController;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2281
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->i:Lcom/baidu/platform/comapi/map/MapTextureView;

    new-instance v0, Lcom/baidu/mapapi/map/h;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/h;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->i:Lcom/baidu/platform/comapi/map/MapTextureView;

    .line 2286
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapTextureView;->getController()Lcom/baidu/platform/comapi/map/MapController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getScreenWidth()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->i:Lcom/baidu/platform/comapi/map/MapTextureView;

    .line 2287
    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/MapTextureView;->getController()Lcom/baidu/platform/comapi/map/MapController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/MapController;->getScreenHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2281
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/baidu/platform/comapi/map/MapTextureView;->doCaptureMapView(Lcom/baidu/platform/comapi/map/c;IILandroid/graphics/Bitmap$Config;)V

    .line 2289
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->i:Lcom/baidu/platform/comapi/map/MapTextureView;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapTextureView;->requestRender()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final snapshotScope(Landroid/graphics/Rect;Lcom/baidu/mapapi/map/BaiduMap$SnapshotReadyCallback;)V
    .locals 2

    .line 2322
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    return-void

    .line 2326
    :cond_0
    iput-object p2, p0, Lcom/baidu/mapapi/map/BaiduMap;->D:Lcom/baidu/mapapi/map/BaiduMap$SnapshotReadyCallback;

    .line 2328
    sget-object p2, Lcom/baidu/mapapi/map/b;->b:[I

    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->d:Lcom/baidu/mapsdkplatform/comapi/map/w;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/w;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 2342
    :cond_1
    iget-object p2, p0, Lcom/baidu/mapapi/map/BaiduMap;->h:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-eqz p2, :cond_3

    .line 2343
    new-instance v0, Lcom/baidu/mapapi/map/k;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/k;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p2, v0, p1, v1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->doCaptureMapView(Lcom/baidu/platform/comapi/map/c;Landroid/graphics/Rect;Landroid/graphics/Bitmap$Config;)V

    .line 2349
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->h:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->requestRender()V

    goto :goto_0

    .line 2330
    :cond_2
    iget-object p2, p0, Lcom/baidu/mapapi/map/BaiduMap;->i:Lcom/baidu/platform/comapi/map/MapTextureView;

    if-eqz p2, :cond_3

    .line 2331
    new-instance v0, Lcom/baidu/mapapi/map/j;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/j;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p2, v0, p1, v1}, Lcom/baidu/platform/comapi/map/MapTextureView;->doCaptureMapView(Lcom/baidu/platform/comapi/map/c;Landroid/graphics/Rect;Landroid/graphics/Bitmap$Config;)V

    .line 2337
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->i:Lcom/baidu/platform/comapi/map/MapTextureView;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapTextureView;->requestRender()V

    :cond_3
    :goto_0
    return-void
.end method

.method public startHeatMapFrameAnimation()V
    .locals 1

    .line 1961
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    return-void

    .line 1964
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->o()V

    return-void
.end method

.method public stopHeatMapFrameAnimation()V
    .locals 1

    .line 1971
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    return-void

    .line 1974
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->p()V

    return-void
.end method

.method public switchBaseIndoorMapFloor(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;
    .locals 2

    .line 2914
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2917
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/BaiduMap;->getFocusedBaseIndoorMapInfo()Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2919
    sget-object p1, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;->SWITCH_ERROR:Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;

    return-object p1

    .line 2921
    :cond_1
    iget-object v1, v0, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2922
    sget-object p1, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;->FOCUSED_ID_ERROR:Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;

    return-object p1

    .line 2924
    :cond_2
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;->getFloors()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2925
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 2928
    :cond_3
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2929
    sget-object p1, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;->SWITCH_OK:Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;

    return-object p1

    .line 2931
    :cond_4
    sget-object p1, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;->SWITCH_ERROR:Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;

    return-object p1

    .line 2926
    :cond_5
    :goto_0
    sget-object p1, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;->FLOOR_OVERLFLOW:Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;

    return-object p1

    .line 2915
    :cond_6
    :goto_1
    sget-object p1, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;->FLOOR_INFO_ERROR:Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;

    return-object p1
.end method

.method public switchLayerOrder(Lcom/baidu/mapapi/map/MapLayer;Lcom/baidu/mapapi/map/MapLayer;)V
    .locals 1

    .line 3105
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    return-void

    .line 3108
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Lcom/baidu/mapapi/map/MapLayer;Lcom/baidu/mapapi/map/MapLayer;)V

    return-void
.end method

.method public switchOverlayLayerAndNavigationLayer(Z)Z
    .locals 1

    .line 3119
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3122
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->g(Z)Z

    move-result p1

    return p1
.end method
