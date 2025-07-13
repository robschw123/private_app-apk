.class public Lcom/baidu/platform/comapi/map/MapTextureView;
.super Lcom/baidu/platform/comapi/map/h;
.source "MapTextureView.java"

# interfaces
.implements Lcom/baidu/platform/comapi/map/MapRenderModeChangeListener;
.implements Lcom/baidu/platform/comapi/map/MapViewInterface;
.implements Lcom/baidu/platform/comapi/map/ak;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platform/comapi/map/MapTextureView$b;,
        Lcom/baidu/platform/comapi/map/MapTextureView$a;,
        Lcom/baidu/platform/comapi/map/MapTextureView$c;
    }
.end annotation


# instance fields
.field protected a:Lcom/baidu/mapsdkplatform/comapi/map/d;

.field protected b:Lcom/baidu/platform/comapi/map/MapController;

.field protected c:Lcom/baidu/platform/comapi/map/af;

.field protected d:Lcom/baidu/platform/comapi/map/l;

.field protected e:Lcom/baidu/platform/comapi/map/p;

.field f:I

.field g:I

.field protected h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/map/Overlay;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Lcom/baidu/platform/comapi/map/ac;

.field protected j:Lcom/baidu/platform/comapi/map/am;

.field protected k:Landroid/view/GestureDetector;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/bmsdk/BmLayer;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/baidu/platform/comapi/map/MapTextureView$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 68
    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/map/h;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    .line 48
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->c:Lcom/baidu/platform/comapi/map/af;

    .line 49
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->d:Lcom/baidu/platform/comapi/map/l;

    .line 50
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->e:Lcom/baidu/platform/comapi/map/p;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->l:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->h:Ljava/util/List;

    .line 69
    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/map/MapTextureView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/baidu/platform/comapi/map/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 47
    iput-object p2, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    .line 48
    iput-object p2, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->c:Lcom/baidu/platform/comapi/map/af;

    .line 49
    iput-object p2, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->d:Lcom/baidu/platform/comapi/map/l;

    .line 50
    iput-object p2, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->e:Lcom/baidu/platform/comapi/map/p;

    .line 55
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->l:Ljava/util/List;

    .line 58
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->h:Ljava/util/List;

    .line 74
    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/map/MapTextureView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/platform/comapi/map/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 47
    iput-object p2, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    .line 48
    iput-object p2, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->c:Lcom/baidu/platform/comapi/map/af;

    .line 49
    iput-object p2, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->d:Lcom/baidu/platform/comapi/map/l;

    .line 50
    iput-object p2, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->e:Lcom/baidu/platform/comapi/map/p;

    .line 55
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->l:Ljava/util/List;

    .line 58
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->h:Ljava/util/List;

    .line 79
    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/map/MapTextureView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x2

    .line 83
    invoke-virtual {p0, v0}, Lcom/baidu/platform/comapi/map/MapTextureView;->setEGLContextClientVersion(I)V

    .line 84
    new-instance v0, Lcom/baidu/platform/comapi/map/am;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/map/am;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->j:Lcom/baidu/platform/comapi/map/am;

    .line 85
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->j:Lcom/baidu/platform/comapi/map/am;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->k:Landroid/view/GestureDetector;

    .line 87
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->j:Lcom/baidu/platform/comapi/map/am;

    new-instance v0, Lcom/baidu/platform/comapi/map/MapTextureView$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/platform/comapi/map/MapTextureView$b;-><init>(Lcom/baidu/platform/comapi/map/MapTextureView;Lcom/baidu/platform/comapi/map/y;)V

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/map/am;->a(Landroid/view/GestureDetector$SimpleOnGestureListener;)V

    return-void
.end method

.method private declared-synchronized a(JLcom/baidu/platform/comapi/bmsdk/BmLayer;)Z
    .locals 9

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    .line 609
    :try_start_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v1, :cond_0

    goto :goto_0

    .line 612
    :cond_0
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    .line 614
    monitor-exit p0

    return v0

    .line 616
    :cond_1
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 617
    :try_start_2
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->l:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 618
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    .line 620
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->l:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 623
    :try_start_4
    invoke-virtual {p3}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->a()J

    move-result-wide v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-wide v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->addBmLayerBelow(JJII)Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 621
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    .line 610
    :cond_3
    :goto_0
    monitor-exit p0

    return v0
.end method


# virtual methods
.method public addBmLayer(Lcom/baidu/platform/comapi/bmsdk/BmLayer;)Z
    .locals 2

    const-wide/16 v0, 0x0

    .line 590
    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comapi/map/MapTextureView;->a(JLcom/baidu/platform/comapi/bmsdk/BmLayer;)Z

    move-result p1

    return p1
.end method

.method public addBmLayerBelow(Lcom/baidu/platform/comapi/map/Overlay;Lcom/baidu/platform/comapi/bmsdk/BmLayer;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 602
    iget-wide v0, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-direct {p0, v0, v1, p2}, Lcom/baidu/platform/comapi/map/MapTextureView;->a(JLcom/baidu/platform/comapi/bmsdk/BmLayer;)Z

    move-result p1

    return p1

    :cond_0
    const-wide/16 v0, 0x0

    .line 604
    invoke-direct {p0, v0, v1, p2}, Lcom/baidu/platform/comapi/map/MapTextureView;->a(JLcom/baidu/platform/comapi/bmsdk/BmLayer;)Z

    move-result p1

    return p1
.end method

.method public addOverlay(Lcom/baidu/platform/comapi/map/Overlay;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 813
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v1, :cond_0

    goto :goto_0

    .line 816
    :cond_0
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 820
    :cond_1
    instance-of v2, p1, Lcom/baidu/platform/comapi/map/InnerOverlay;

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 822
    move-object v1, p1

    check-cast v1, Lcom/baidu/platform/comapi/map/InnerOverlay;

    iget-object v2, v1, Lcom/baidu/platform/comapi/map/InnerOverlay;->mBaseMap:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v2, :cond_2

    .line 823
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapTextureView;->getController()Lcom/baidu/platform/comapi/map/MapController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/platform/comapi/map/InnerOverlay;->mBaseMap:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    .line 825
    :cond_2
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/InnerOverlay;->addedToMapView()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 826
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 827
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->c:Lcom/baidu/platform/comapi/map/af;

    invoke-virtual {p1, v1}, Lcom/baidu/platform/comapi/map/af;->a(Lcom/baidu/platform/comapi/map/InnerOverlay;)V

    return v3

    :cond_3
    return v0

    .line 832
    :cond_4
    instance-of v2, p1, Lcom/baidu/platform/comapi/map/ItemizedOverlay;

    if-eqz v2, :cond_6

    .line 833
    move-object v2, p1

    check-cast v2, Lcom/baidu/platform/comapi/map/ItemizedOverlay;

    .line 834
    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/ItemizedOverlay;->getUpdateType()I

    move-result v4

    const-string v5, "item"

    invoke-virtual {v1, v4, v0, v5}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->AddLayer(IILjava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    .line 836
    iget-wide v4, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_5

    return v0

    .line 839
    :cond_5
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 840
    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/ItemizedOverlay;->a()V

    .line 842
    iget-wide v4, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v4, v5, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetLayersClickable(JZ)V

    .line 843
    iget-wide v4, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v4, v5, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    .line 844
    iget-wide v4, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v4, v5}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->UpdateLayers(J)V

    return v3

    :cond_6
    :goto_0
    return v0
.end method

.method public animateTo(Lcom/baidu/platform/comapi/map/MapStatus;I)V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comapi/map/MapController;->setMapStatusWithAnimation(Lcom/baidu/platform/comapi/map/MapStatus;I)V

    :cond_0
    return-void
.end method

.method public attachBaseMapController(Lcom/baidu/platform/comapi/map/MapController;)V
    .locals 1

    .line 116
    new-instance v0, Lcom/baidu/platform/comapi/map/p;

    invoke-direct {v0, p0, p0}, Lcom/baidu/platform/comapi/map/p;-><init>(Lcom/baidu/platform/comapi/map/h;Lcom/baidu/platform/comapi/map/ak;)V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->e:Lcom/baidu/platform/comapi/map/p;

    .line 117
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    .line 118
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/p;->a(Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;)V

    .line 119
    new-instance p1, Lcom/baidu/platform/comapi/map/MapTextureView$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/baidu/platform/comapi/map/MapTextureView$a;-><init>(Lcom/baidu/platform/comapi/map/MapTextureView;Lcom/baidu/platform/comapi/map/y;)V

    invoke-virtual {p0, p1}, Lcom/baidu/platform/comapi/map/MapTextureView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 120
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->e:Lcom/baidu/platform/comapi/map/p;

    invoke-virtual {p0, p1}, Lcom/baidu/platform/comapi/map/MapTextureView;->setRenderer(Lcom/baidu/platform/comapi/map/aq;)V

    const/4 p1, 0x0

    .line 121
    invoke-virtual {p0, p1}, Lcom/baidu/platform/comapi/map/MapTextureView;->setRenderMode(I)V

    .line 122
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->e:Lcom/baidu/platform/comapi/map/p;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/map/p;->a(Z)V

    .line 124
    new-instance p1, Lcom/baidu/platform/comapi/map/af;

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/baidu/platform/comapi/map/af;-><init>(Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;)V

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->c:Lcom/baidu/platform/comapi/map/af;

    .line 125
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->setOverlayMapCallBack(Lcom/baidu/platform/comapi/map/af;)V

    .line 127
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1, p0}, Lcom/baidu/platform/comapi/map/MapController;->setMapViewInterface(Lcom/baidu/platform/comapi/map/MapViewInterface;)V

    .line 128
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapTextureView;->b()V

    .line 130
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1, p0}, Lcom/baidu/platform/comapi/map/MapController;->setMapRenderModeChangeListener(Lcom/baidu/platform/comapi/map/MapRenderModeChangeListener;)V

    .line 132
    new-instance p1, Lcom/baidu/platform/comapi/map/l;

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    invoke-direct {p1, v0}, Lcom/baidu/platform/comapi/map/l;-><init>(Lcom/baidu/platform/comapi/map/MapController;)V

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->d:Lcom/baidu/platform/comapi/map/l;

    .line 135
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->j:Lcom/baidu/platform/comapi/map/am;

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/map/am;->a(Lcom/baidu/platform/comapi/map/MapController;)V

    return-void
.end method

.method protected b()V
    .locals 1

    .line 763
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    return-void

    .line 766
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 771
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapTextureView;->c()V

    return-void
.end method

.method protected c()V
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    return-void

    .line 799
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 803
    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->c:Lcom/baidu/platform/comapi/map/af;

    if-nez v0, :cond_2

    return-void

    .line 806
    :cond_2
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 807
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->c:Lcom/baidu/platform/comapi/map/af;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/af;->a()V

    return-void
.end method

.method public destroyForMultiViews()V
    .locals 2

    .line 999
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1000
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->unInitForMultiTextureView()V

    .line 1001
    iput-object v1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    .line 1003
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->c:Lcom/baidu/platform/comapi/map/af;

    if-eqz v0, :cond_1

    .line 1004
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/af;->a()V

    .line 1005
    iput-object v1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->c:Lcom/baidu/platform/comapi/map/af;

    .line 1007
    :cond_1
    iput-object v1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->d:Lcom/baidu/platform/comapi/map/l;

    return-void
.end method

.method public doCaptureMapView(Lcom/baidu/platform/comapi/map/c;IILandroid/graphics/Bitmap$Config;)V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->e:Lcom/baidu/platform/comapi/map/p;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/platform/comapi/map/p;->a(Lcom/baidu/platform/comapi/map/c;IILandroid/graphics/Bitmap$Config;)V

    return-void
.end method

.method public doCaptureMapView(Lcom/baidu/platform/comapi/map/c;Landroid/graphics/Rect;Landroid/graphics/Bitmap$Config;)V
    .locals 7

    if-eqz p2, :cond_5

    .line 306
    iget v2, p2, Landroid/graphics/Rect;->left:I

    .line 307
    iget v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->g:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_0

    .line 310
    :cond_0
    iget v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->g:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    move v3, v0

    .line 312
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 313
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ltz v2, :cond_5

    if-ltz v3, :cond_5

    if-lez v0, :cond_5

    if-gtz v1, :cond_1

    goto :goto_2

    .line 318
    :cond_1
    iget v4, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->f:I

    if-le v0, v4, :cond_2

    .line 319
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->f:I

    sub-int/2addr v4, v5

    sub-int/2addr v0, v4

    :cond_2
    move v4, v0

    .line 321
    iget v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->g:I

    if-le v1, v0, :cond_3

    .line 322
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->g:I

    sub-int/2addr p2, v1

    sub-int/2addr v0, p2

    move v5, v0

    goto :goto_1

    :cond_3
    move v5, v1

    .line 325
    :goto_1
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getScreenSizeX()I

    move-result p2

    if-gt v2, p2, :cond_5

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getScreenSizeY()I

    move-result p2

    if-le v3, p2, :cond_4

    goto :goto_2

    .line 328
    :cond_4
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->e:Lcom/baidu/platform/comapi/map/p;

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/platform/comapi/map/p;->a(Lcom/baidu/platform/comapi/map/c;IIIILandroid/graphics/Bitmap$Config;)V

    nop

    :cond_5
    :goto_2
    return-void
.end method

.method public enable3D()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->a:Lcom/baidu/mapsdkplatform/comapi/map/d;

    return-object v0
.end method

.method public getBmlayers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/bmsdk/BmLayer;",
            ">;"
        }
    .end annotation

    .line 652
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->l:Ljava/util/List;

    return-object v0
.end method

.method public getController()Lcom/baidu/platform/comapi/map/MapController;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    return-object v0
.end method

.method public getCurrentMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getCurrentMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCurrentZoomLevel()F
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getCurrentZoomLevel()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getGeoRound()Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 562
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 563
    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    return-object v0
.end method

.method public getLatitudeSpan()I
    .locals 5

    .line 421
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapTextureView;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 422
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapTextureView;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/map/l;

    .line 423
    iget-object v2, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v2, v2, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->left:I

    iget-object v3, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v3, v3, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->top:I

    invoke-virtual {v1, v2, v3}, Lcom/baidu/platform/comapi/map/l;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v2

    .line 424
    iget-object v3, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v3, v3, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->right:I

    add-int/lit8 v3, v3, -0x1

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v0, v0, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->bottom:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v3, v0}, Lcom/baidu/platform/comapi/map/l;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    .line 426
    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitude()D

    move-result-wide v3

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getLongitudeSpan()I
    .locals 4

    .line 431
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapTextureView;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 432
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapTextureView;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/map/l;

    .line 433
    iget-object v2, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v2, v2, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->left:I

    iget-object v3, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v3, v3, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->top:I

    invoke-virtual {v1, v2, v3}, Lcom/baidu/platform/comapi/map/l;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v2

    .line 434
    iget-object v3, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v3, v3, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->right:I

    add-int/lit8 v3, v3, -0x1

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v0, v0, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->bottom:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v3, v0}, Lcom/baidu/platform/comapi/map/l;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    .line 436
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitude()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getMapCenter()Lcom/baidu/platform/comapi/basestruct/GeoPoint;
    .locals 6

    .line 451
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 454
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 455
    new-instance v1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    iget-wide v2, v0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtY:D

    iget-wide v4, v0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtX:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(DD)V

    return-object v1
.end method

.method public getMapRotation()I
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 512
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 513
    iget v0, v0, Lcom/baidu/platform/comapi/map/MapStatus;->rotation:I

    return v0
.end method

.method public getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public declared-synchronized getOverlay(I)Lcom/baidu/platform/comapi/map/Overlay;
    .locals 3

    monitor-enter p0

    .line 666
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/map/Overlay;

    .line 667
    iget v2, v1, Lcom/baidu/platform/comapi/map/Overlay;->mType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    .line 668
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    .line 672
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public declared-synchronized getOverlay(Ljava/lang/Class;)Lcom/baidu/platform/comapi/map/Overlay;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/baidu/platform/comapi/map/Overlay;"
        }
    .end annotation

    monitor-enter p0

    .line 676
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/map/Overlay;

    .line 677
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    .line 678
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    .line 681
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public getOverlays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/map/Overlay;",
            ">;"
        }
    .end annotation

    .line 657
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->h:Ljava/util/List;

    return-object v0
.end method

.method public getOverlooking()I
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 530
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 531
    iget v0, v0, Lcom/baidu/platform/comapi/map/MapStatus;->overlooking:I

    return v0
.end method

.method public getPopupOverlay()Lcom/baidu/platform/comapi/map/Overlay;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProjection()Lcom/baidu/platform/comapi/map/Projection;
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->d:Lcom/baidu/platform/comapi/map/l;

    return-object v0
.end method

.method public getWinRound()Lcom/baidu/platform/comapi/map/MapStatus$WinRound;
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 548
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 549
    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    return-object v0
.end method

.method public getZoomLevel()F
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getZoomLevel()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getZoomToBound(Lcom/baidu/platform/comapi/basestruct/MapBound;)F
    .locals 2

    .line 895
    iget v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->f:I

    iget v1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->g:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/platform/comapi/map/MapTextureView;->getZoomToBound(Lcom/baidu/platform/comapi/basestruct/MapBound;II)F

    move-result p1

    return p1
.end method

.method public getZoomToBound(Lcom/baidu/platform/comapi/basestruct/MapBound;II)F
    .locals 3

    .line 918
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 922
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 923
    iget-object v1, p1, Lcom/baidu/platform/comapi/basestruct/MapBound;->leftBottomPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntX()I

    move-result v1

    const-string v2, "left"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 924
    iget-object v1, p1, Lcom/baidu/platform/comapi/basestruct/MapBound;->leftBottomPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntY()I

    move-result v1

    const-string v2, "bottom"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 925
    iget-object v1, p1, Lcom/baidu/platform/comapi/basestruct/MapBound;->rightTopPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntX()I

    move-result v1

    const-string v2, "right"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 926
    iget-object p1, p1, Lcom/baidu/platform/comapi/basestruct/MapBound;->rightTopPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntY()I

    move-result p1

    const-string v1, "top"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 928
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1, v0, p2, p3}, Lcom/baidu/platform/comapi/map/MapController;->getZoomToBound(Landroid/os/Bundle;II)F

    move-result p1

    return p1
.end method

.method public getZoomToBoundF(Lcom/baidu/platform/comapi/basestruct/MapBound;)F
    .locals 2

    .line 913
    iget v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->f:I

    iget v1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->g:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/platform/comapi/map/MapTextureView;->getZoomToBoundF(Lcom/baidu/platform/comapi/basestruct/MapBound;II)F

    move-result p1

    return p1
.end method

.method public getZoomToBoundF(Lcom/baidu/platform/comapi/basestruct/MapBound;II)F
    .locals 1

    .line 900
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 903
    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 904
    iget-object p3, p1, Lcom/baidu/platform/comapi/basestruct/MapBound;->leftBottomPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {p3}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntX()I

    move-result p3

    const-string v0, "left"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 905
    iget-object p3, p1, Lcom/baidu/platform/comapi/basestruct/MapBound;->leftBottomPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {p3}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntY()I

    move-result p3

    const-string v0, "bottom"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 906
    iget-object p3, p1, Lcom/baidu/platform/comapi/basestruct/MapBound;->rightTopPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {p3}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntX()I

    move-result p3

    const-string v0, "right"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 907
    iget-object p1, p1, Lcom/baidu/platform/comapi/basestruct/MapBound;->rightTopPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntY()I

    move-result p1

    const-string p3, "top"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 908
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1, p2}, Lcom/baidu/platform/comapi/map/MapController;->getZoomToBoundF(Landroid/os/Bundle;)F

    move-result p1

    return p1
.end method

.method public isBaseIndoorMap()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSatellite()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStreetRoad()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTraffic()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public listenMapRenderMessage(Lcom/baidu/platform/comapi/map/MapTextureView$c;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->m:Lcom/baidu/platform/comapi/map/MapTextureView$c;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 977
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->a:Lcom/baidu/mapsdkplatform/comapi/map/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 979
    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/d;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 980
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->a:Lcom/baidu/mapsdkplatform/comapi/map/d;

    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/d;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/platform/comapi/map/al;

    if-eqz v2, :cond_0

    .line 983
    invoke-interface {v2}, Lcom/baidu/platform/comapi/map/al;->d()V

    goto :goto_0

    .line 987
    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->a:Lcom/baidu/mapsdkplatform/comapi/map/d;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->L()V

    .line 988
    iput-object v1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->a:Lcom/baidu/mapsdkplatform/comapi/map/d;

    .line 991
    :cond_2
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->unInit()V

    .line 992
    iput-object v1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    .line 993
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->c:Lcom/baidu/platform/comapi/map/af;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/af;->a()V

    .line 994
    iput-object v1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->c:Lcom/baidu/platform/comapi/map/af;

    .line 995
    iput-object v1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->d:Lcom/baidu/platform/comapi/map/l;

    return-void
.end method

.method public onMapRenderModeChange(I)V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->m:Lcom/baidu/platform/comapi/map/MapTextureView$c;

    if-eqz v0, :cond_0

    .line 342
    invoke-interface {v0, p1}, Lcom/baidu/platform/comapi/map/MapTextureView$c;->a(I)V

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 346
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapTextureView;->requestRender()V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 348
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapTextureView;->getRenderMode()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 349
    invoke-virtual {p0, p1}, Lcom/baidu/platform/comapi/map/MapTextureView;->setRenderMode(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 352
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->i:Lcom/baidu/platform/comapi/map/ac;

    if-eqz p1, :cond_3

    .line 353
    invoke-interface {p1}, Lcom/baidu/platform/comapi/map/ac;->a()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 969
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 970
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->OnPause()V

    .line 972
    :cond_0
    invoke-super {p0}, Lcom/baidu/platform/comapi/map/h;->onPause()V

    return-void
.end method

.method public onRecycle()V
    .locals 1

    .line 1012
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ResetImageRes()V

    :cond_0
    return-void
.end method

.method public onRequestRender()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 961
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 962
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->OnResume()V

    .line 964
    :cond_0
    invoke-super {p0}, Lcom/baidu/platform/comapi/map/h;->onResume()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 217
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/platform/comapi/map/h;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 218
    iput p2, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->f:I

    .line 219
    iput p3, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->g:I

    .line 222
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz p1, :cond_1

    .line 223
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewSurfaceListener()Lcom/baidu/platform/comapi/map/MapViewSurfaceListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 224
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewSurfaceListener()Lcom/baidu/platform/comapi/map/MapViewSurfaceListener;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/baidu/platform/comapi/map/MapViewSurfaceListener;->onSurfaceChanged(II)V

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapTextureView;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object p1

    .line 227
    iget-object p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget p2, p2, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->right:I

    iget-object p3, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget p3, p3, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->left:I

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iput p2, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->f:I

    .line 228
    iget-object p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget p2, p2, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->bottom:I

    iget-object p1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget p1, p1, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->top:I

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->g:I

    .line 232
    :cond_1
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->a:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz p1, :cond_2

    .line 233
    iget p2, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->f:I

    iget p3, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->g:I

    invoke-virtual {p1, p2, p3}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(II)V

    :cond_2
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 274
    invoke-super {p0, p1}, Lcom/baidu/platform/comapi/map/h;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .line 240
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/platform/comapi/map/h;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 242
    iput p2, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->f:I

    .line 243
    iput p3, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->g:I

    .line 245
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->e:Lcom/baidu/platform/comapi/map/p;

    iput p2, p1, Lcom/baidu/platform/comapi/map/p;->a:I

    .line 246
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->e:Lcom/baidu/platform/comapi/map/p;

    iput p3, p1, Lcom/baidu/platform/comapi/map/p;->b:I

    .line 247
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->e:Lcom/baidu/platform/comapi/map/p;

    const/4 v0, 0x0

    iput v0, p1, Lcom/baidu/platform/comapi/map/p;->c:I

    .line 248
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz p1, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapTextureView;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object p1

    .line 250
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iput v0, v1, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->left:I

    .line 251
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iput v0, v1, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->top:I

    .line 252
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iput p3, v1, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->bottom:I

    .line 253
    iget-object v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iput p2, v1, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->right:I

    .line 254
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2, v0}, Lcom/baidu/platform/comapi/map/MapController;->setMapStatusWithAnimation(Lcom/baidu/platform/comapi/map/MapStatus;II)V

    .line 256
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewSurfaceListener()Lcom/baidu/platform/comapi/map/MapViewSurfaceListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 257
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewSurfaceListener()Lcom/baidu/platform/comapi/map/MapViewSurfaceListener;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/baidu/platform/comapi/map/MapViewSurfaceListener;->onSurfaceChanged(II)V

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapTextureView;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object p1

    .line 261
    iget-object p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget p2, p2, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->right:I

    iget-object p3, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget p3, p3, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->left:I

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iput p2, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->f:I

    .line 262
    iget-object p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget p2, p2, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->bottom:I

    iget-object p1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget p1, p1, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->top:I

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->g:I

    .line 263
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    iget p3, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->f:I

    invoke-virtual {p2, p3, p1}, Lcom/baidu/platform/comapi/map/MapController;->setScreenSize(II)V

    .line 266
    :cond_1
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->a:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz p1, :cond_2

    .line 267
    iget p2, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->f:I

    iget p3, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->g:I

    invoke-virtual {p1, p2, p3}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(II)V

    :cond_2
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 280
    invoke-super {p0, p1}, Lcom/baidu/platform/comapi/map/h;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1020
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->k:Landroid/view/GestureDetector;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1024
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    return v1

    .line 1030
    :cond_1
    invoke-super {p0, p1}, Lcom/baidu/platform/comapi/map/h;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1028
    :catch_0
    invoke-super {p0, p1}, Lcom/baidu/platform/comapi/map/h;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public refresh(Lcom/baidu/platform/comapi/map/Overlay;)V
    .locals 6

    if-eqz p1, :cond_3

    .line 933
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    goto :goto_1

    .line 936
    :cond_0
    instance-of v0, p1, Lcom/baidu/platform/comapi/map/ItemizedOverlay;

    if-eqz v0, :cond_2

    .line 937
    move-object v0, p1

    check-cast v0, Lcom/baidu/platform/comapi/map/ItemizedOverlay;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/ItemizedOverlay;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 938
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/ItemizedOverlay;->getAllItem()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_1

    .line 939
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v1

    iget-wide v3, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v3, v4}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ClearLayer(J)V

    .line 940
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v1

    iget-wide v3, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v3, v4, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    .line 941
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v1

    iget-wide v3, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v3, v4}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->UpdateLayers(J)V

    goto :goto_0

    .line 943
    :cond_1
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v1

    iget-wide v3, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v4, v5}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    .line 944
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v1

    iget-wide v3, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v3, v4}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->UpdateLayers(J)V

    .line 946
    :goto_0
    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/map/ItemizedOverlay;->a(Z)V

    .line 949
    :cond_2
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 950
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    iget-wide v1, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->UpdateLayers(J)V

    :cond_3
    :goto_1
    return-void
.end method

.method public declared-synchronized removeBmLayer(Lcom/baidu/platform/comapi/bmsdk/BmLayer;)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 634
    :try_start_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v1, :cond_0

    goto :goto_0

    .line 637
    :cond_0
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 639
    monitor-exit p0

    return v0

    .line 642
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->removeBmLayer(J)V

    .line 643
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 644
    :try_start_2
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 645
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x1

    .line 647
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 645
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    .line 635
    :cond_2
    :goto_0
    monitor-exit p0

    return v0
.end method

.method public removeOverlay(Lcom/baidu/platform/comapi/map/Overlay;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 852
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v1, :cond_0

    goto :goto_1

    .line 855
    :cond_0
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 860
    :cond_1
    iget-wide v2, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ClearLayer(J)V

    .line 861
    iget-wide v2, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    .line 862
    iget-wide v2, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->UpdateLayers(J)V

    .line 863
    iget-wide v2, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->RemoveLayer(J)V

    .line 865
    instance-of v0, p1, Lcom/baidu/platform/comapi/map/ItemizedOverlay;

    if-eqz v0, :cond_2

    .line 866
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 867
    :cond_2
    instance-of v0, p1, Lcom/baidu/platform/comapi/map/InnerOverlay;

    if-eqz v0, :cond_3

    .line 868
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 869
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->c:Lcom/baidu/platform/comapi/map/af;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/af;->a(Lcom/baidu/platform/comapi/map/Overlay;)V

    :cond_3
    :goto_0
    const-wide/16 v0, 0x0

    .line 871
    iput-wide v0, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v0
.end method

.method public saveScreenToLocal(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setBaseIndoorMap(Z)V
    .locals 0

    return-void
.end method

.method public setBaseMap(Lcom/baidu/mapsdkplatform/comapi/map/d;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->a:Lcom/baidu/mapsdkplatform/comapi/map/d;

    return-void
.end method

.method public setGeoRound(Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;)V
    .locals 0

    return-void
.end method

.method public setMapCenter(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)V
    .locals 3

    .line 441
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 443
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtX:D

    .line 444
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtY:D

    .line 445
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/map/MapController;->setMapStatus(Lcom/baidu/platform/comapi/map/MapStatus;)V

    :cond_0
    return-void
.end method

.method public setMapRenderStableListener(Lcom/baidu/platform/comapi/map/ac;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->i:Lcom/baidu/platform/comapi/map/ac;

    return-void
.end method

.method public setMapStatus(Lcom/baidu/platform/comapi/map/MapStatus;)V
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 569
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->setMapStatus(Lcom/baidu/platform/comapi/map/MapStatus;)V

    :cond_0
    return-void
.end method

.method public setMapTo2D(Z)V
    .locals 0

    return-void
.end method

.method public setOverlooking(I)V
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 520
    iput p1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->overlooking:I

    .line 521
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/map/MapController;->setMapStatus(Lcom/baidu/platform/comapi/map/MapStatus;)V

    :cond_0
    return-void
.end method

.method public setRotation(I)V
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 502
    iput p1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->rotation:I

    .line 503
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/map/MapController;->setMapStatus(Lcom/baidu/platform/comapi/map/MapStatus;)V

    :cond_0
    return-void
.end method

.method public setSatellite(Z)V
    .locals 0

    return-void
.end method

.method public setStreetRoad(Z)V
    .locals 0

    return-void
.end method

.method public setTraffic(Z)V
    .locals 1

    .line 746
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 747
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 749
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowTrafficMap(Z)V

    :cond_0
    return-void
.end method

.method public setWinRound(Lcom/baidu/platform/comapi/map/MapStatus$WinRound;)V
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 538
    iput-object p1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    .line 539
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/map/MapController;->setMapStatus(Lcom/baidu/platform/comapi/map/MapStatus;)V

    :cond_0
    return-void
.end method

.method public setZoomLevel(F)V
    .locals 3

    .line 461
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x15

    .line 466
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapTextureView;->getController()Lcom/baidu/platform/comapi/map/MapController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getFocusedBaseIndoorMapInfo()Lcom/baidu/platform/comapi/map/IndoorMapInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v0, 0x16

    :cond_1
    const/high16 v1, 0x40800000    # 4.0f

    cmpg-float v2, p1, v1

    if-gez v2, :cond_2

    const/high16 p1, 0x40800000    # 4.0f

    goto :goto_0

    :cond_2
    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    const/high16 p1, 0x41a80000    # 21.0f

    .line 476
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapTextureView;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 478
    iput p1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    const/16 p1, 0x12c

    .line 479
    invoke-virtual {p0, v0, p1}, Lcom/baidu/platform/comapi/map/MapTextureView;->animateTo(Lcom/baidu/platform/comapi/map/MapStatus;I)V

    :cond_4
    return-void
.end method

.method public setZoomLevel(I)V
    .locals 0

    int-to-float p1, p1

    .line 485
    invoke-virtual {p0, p1}, Lcom/baidu/platform/comapi/map/MapTextureView;->setZoomLevel(F)V

    return-void
.end method

.method public switchOverlay(Lcom/baidu/platform/comapi/map/Overlay;Lcom/baidu/platform/comapi/map/Overlay;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 878
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v1, :cond_0

    goto :goto_0

    .line 881
    :cond_0
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 885
    :cond_1
    iget-wide v2, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    iget-wide p1, p2, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SwitchLayer(JJ)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public unListenMapRenderMessage()V
    .locals 1

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView;->m:Lcom/baidu/platform/comapi/map/MapTextureView$c;

    return-void
.end method
