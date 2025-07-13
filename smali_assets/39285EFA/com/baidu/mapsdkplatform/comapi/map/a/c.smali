.class public Lcom/baidu/mapsdkplatform/comapi/map/a/c;
.super Ljava/lang/Object;
.source "TraceOverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapsdkplatform/comapi/map/a/c$a;
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/mapsdkplatform/comapi/map/a/a;

.field private b:Lcom/baidu/mapsdkplatform/comapi/map/d;

.field private c:I

.field private d:Lcom/baidu/mapapi/map/track/TraceAnimationListener;

.field private e:Lcom/baidu/mapsdkplatform/comapi/map/a/c$a;

.field private f:Lcom/baidu/mapsdkplatform/comapi/map/a/b;

.field private g:Lcom/baidu/platform/comapi/map/MapSurfaceView;

.field private h:Lcom/baidu/platform/comapi/map/MapTextureView;

.field private volatile i:Z


# direct methods
.method public constructor <init>(Lcom/baidu/platform/comapi/map/MapSurfaceView;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->c:I

    .line 44
    new-instance v1, Lcom/baidu/mapsdkplatform/comapi/map/a/c$a;

    invoke-direct {v1, p0}, Lcom/baidu/mapsdkplatform/comapi/map/a/c$a;-><init>(Lcom/baidu/mapsdkplatform/comapi/map/a/c;)V

    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->e:Lcom/baidu/mapsdkplatform/comapi/map/a/c$a;

    const/4 v1, 0x0

    .line 52
    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->i:Z

    if-nez p1, :cond_0

    return-void

    .line 58
    :cond_0
    new-instance v1, Lcom/baidu/mapsdkplatform/comapi/map/a/a;

    invoke-direct {v1}, Lcom/baidu/mapsdkplatform/comapi/map/a/a;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->a:Lcom/baidu/mapsdkplatform/comapi/map/a/a;

    .line 59
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->g:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    .line 60
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->b:Lcom/baidu/mapsdkplatform/comapi/map/d;

    .line 61
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->a:Lcom/baidu/mapsdkplatform/comapi/map/a/a;

    invoke-virtual {p1, v1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->addOverlay(Lcom/baidu/platform/comapi/map/Overlay;)Z

    .line 62
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->a:Lcom/baidu/mapsdkplatform/comapi/map/a/a;

    invoke-virtual {p1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->SetOverlayShow(Z)V

    .line 63
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/baidu/platform/comapi/map/MapTextureView;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->c:I

    .line 44
    new-instance v1, Lcom/baidu/mapsdkplatform/comapi/map/a/c$a;

    invoke-direct {v1, p0}, Lcom/baidu/mapsdkplatform/comapi/map/a/c$a;-><init>(Lcom/baidu/mapsdkplatform/comapi/map/a/c;)V

    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->e:Lcom/baidu/mapsdkplatform/comapi/map/a/c$a;

    const/4 v1, 0x0

    .line 52
    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->i:Z

    if-nez p1, :cond_0

    return-void

    .line 70
    :cond_0
    new-instance v1, Lcom/baidu/mapsdkplatform/comapi/map/a/a;

    invoke-direct {v1}, Lcom/baidu/mapsdkplatform/comapi/map/a/a;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->a:Lcom/baidu/mapsdkplatform/comapi/map/a/a;

    .line 71
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->h:Lcom/baidu/platform/comapi/map/MapTextureView;

    .line 72
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapTextureView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->b:Lcom/baidu/mapsdkplatform/comapi/map/d;

    .line 73
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->a:Lcom/baidu/mapsdkplatform/comapi/map/a/a;

    invoke-virtual {p1, v1}, Lcom/baidu/platform/comapi/map/MapTextureView;->addOverlay(Lcom/baidu/platform/comapi/map/Overlay;)Z

    .line 74
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->a:Lcom/baidu/mapsdkplatform/comapi/map/a/a;

    invoke-virtual {p1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->SetOverlayShow(Z)V

    const/4 p1, 0x2

    .line 75
    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->c:I

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapsdkplatform/comapi/map/a/c;)Lcom/baidu/mapsdkplatform/comapi/map/a/a;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->a:Lcom/baidu/mapsdkplatform/comapi/map/a/a;

    return-object p0
.end method

.method private a(Lcom/baidu/mapapi/map/track/TraceOverlay;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 123
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->a:Lcom/baidu/mapsdkplatform/comapi/map/a/a;

    if-nez p1, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->c()V

    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic a(Lcom/baidu/mapsdkplatform/comapi/map/a/c;Lcom/baidu/mapapi/map/track/TraceOverlay;)Z
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->a(Lcom/baidu/mapapi/map/track/TraceOverlay;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/baidu/mapsdkplatform/comapi/map/a/c;)Lcom/baidu/mapsdkplatform/comapi/map/d;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->b:Lcom/baidu/mapsdkplatform/comapi/map/d;

    return-object p0
.end method

.method private b(Lcom/baidu/mapapi/map/track/TraceOverlay;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 142
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->a:Lcom/baidu/mapsdkplatform/comapi/map/a/a;

    if-nez v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->clear()V

    .line 148
    invoke-static {}, Lcom/baidu/platform/comapi/util/j;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/baidu/mapsdkplatform/comapi/map/a/f;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/a/f;-><init>(Lcom/baidu/mapsdkplatform/comapi/map/a/c;Lcom/baidu/mapapi/map/track/TraceOverlay;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/baidu/mapsdkplatform/comapi/map/a/c;Lcom/baidu/mapapi/map/track/TraceOverlay;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->b(Lcom/baidu/mapapi/map/track/TraceOverlay;)V

    return-void
.end method

.method static synthetic c(Lcom/baidu/mapsdkplatform/comapi/map/a/c;)Lcom/baidu/mapapi/map/track/TraceAnimationListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->d:Lcom/baidu/mapapi/map/track/TraceAnimationListener;

    return-object p0
.end method

.method private c(Lcom/baidu/mapapi/map/track/TraceOverlay;)V
    .locals 5

    .line 158
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->a:Lcom/baidu/mapsdkplatform/comapi/map/a/a;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/track/TraceOverlay;->isAnimate()Z

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->a:Lcom/baidu/mapsdkplatform/comapi/map/a/a;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/track/TraceOverlay;->getAnimationTime()I

    move-result v2

    .line 163
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/track/TraceOverlay;->getAnimationDuration()I

    move-result v3

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/track/TraceOverlay;->getAnimationType()I

    move-result v4

    .line 162
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->a(ZIII)V

    .line 164
    new-instance v0, Lcom/baidu/platform/comapi/map/ag;

    new-instance v1, Lcom/baidu/platform/comapi/map/ap;

    invoke-direct {v1}, Lcom/baidu/platform/comapi/map/ap;-><init>()V

    const v2, -0xf1006a

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/map/ap;->a(I)Lcom/baidu/platform/comapi/map/ap;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/map/ap;->b(I)Lcom/baidu/platform/comapi/map/ap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/platform/comapi/map/ag;-><init>(Lcom/baidu/platform/comapi/map/ap;)V

    .line 165
    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->d(Lcom/baidu/mapapi/map/track/TraceOverlay;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/map/ag;->a(Ljava/util/List;)V

    .line 166
    new-instance v1, Lcom/baidu/platform/comapi/map/ar;

    invoke-direct {v1}, Lcom/baidu/platform/comapi/map/ar;-><init>()V

    const/16 v2, 0x408

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/map/ar;->d(I)Lcom/baidu/platform/comapi/map/ar;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/track/TraceOverlay;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/map/ar;->a(I)Lcom/baidu/platform/comapi/map/ap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/track/TraceOverlay;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/map/ap;->b(I)Lcom/baidu/platform/comapi/map/ap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/map/ag;->a(Lcom/baidu/platform/comapi/map/ap;)V

    .line 167
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/track/TraceOverlay;->isTrackMove()Z

    move-result p1

    iput-boolean p1, v0, Lcom/baidu/platform/comapi/map/ag;->c:Z

    .line 168
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->a:Lcom/baidu/mapsdkplatform/comapi/map/a/a;

    invoke-virtual {p1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->a(Lcom/baidu/platform/comapi/map/j;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/baidu/mapsdkplatform/comapi/map/a/c;Lcom/baidu/mapapi/map/track/TraceOverlay;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->c(Lcom/baidu/mapapi/map/track/TraceOverlay;)V

    return-void
.end method

.method private d(Lcom/baidu/mapapi/map/track/TraceOverlay;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/mapapi/map/track/TraceOverlay;",
            ")",
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/basestruct/GeoPoint;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 172
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/track/TraceOverlay;->getPoints()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 175
    :cond_0
    new-instance v0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;-><init>()V

    .line 176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 177
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/track/TraceOverlay;->getPoints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/model/LatLng;

    .line 178
    invoke-static {v2}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v3

    .line 179
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Lcom/baidu/mapapi/map/track/TraceOptions;)Lcom/baidu/mapapi/map/track/TraceOverlay;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 104
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/track/TraceOptions;->getOverlay()Lcom/baidu/mapapi/map/track/TraceOverlay;

    move-result-object p1

    .line 105
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->f:Lcom/baidu/mapsdkplatform/comapi/map/a/b;

    iput-object v0, p1, Lcom/baidu/mapapi/map/track/TraceOverlay;->mListener:Lcom/baidu/mapsdkplatform/comapi/map/a/b;

    .line 108
    invoke-static {}, Lcom/baidu/platform/comapi/util/j;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/baidu/mapsdkplatform/comapi/map/a/e;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/a/e;-><init>(Lcom/baidu/mapsdkplatform/comapi/map/a/c;Lcom/baidu/mapapi/map/track/TraceOverlay;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 79
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/a/d;

    invoke-direct {v0, p0}, Lcom/baidu/mapsdkplatform/comapi/map/a/d;-><init>(Lcom/baidu/mapsdkplatform/comapi/map/a/c;)V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->f:Lcom/baidu/mapsdkplatform/comapi/map/a/b;

    .line 95
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->e:Lcom/baidu/mapsdkplatform/comapi/map/a/c$a;

    const v1, 0xff16

    invoke-static {v1, v0}, Lcom/baidu/platform/comjni/engine/MessageProxy;->registerMessageHandler(ILandroid/os/Handler;)V

    .line 96
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->e:Lcom/baidu/mapsdkplatform/comapi/map/a/c$a;

    const v1, 0xff17

    invoke-static {v1, v0}, Lcom/baidu/platform/comjni/engine/MessageProxy;->registerMessageHandler(ILandroid/os/Handler;)V

    return-void
.end method

.method public a(Lcom/baidu/mapapi/map/track/TraceAnimationListener;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->d:Lcom/baidu/mapapi/map/track/TraceAnimationListener;

    return-void
.end method

.method public b()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->a:Lcom/baidu/mapsdkplatform/comapi/map/a/a;

    if-nez v0, :cond_0

    return-void

    .line 135
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->clear()V

    .line 136
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->a:Lcom/baidu/mapsdkplatform/comapi/map/a/a;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->a()V

    return-void
.end method

.method public c()V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->e:Lcom/baidu/mapsdkplatform/comapi/map/a/c$a;

    const v1, 0xff16

    invoke-static {v1, v0}, Lcom/baidu/platform/comjni/engine/MessageProxy;->unRegisterMessageHandler(ILandroid/os/Handler;)V

    .line 194
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->e:Lcom/baidu/mapsdkplatform/comapi/map/a/c$a;

    const v1, 0xff17

    invoke-static {v1, v0}, Lcom/baidu/platform/comjni/engine/MessageProxy;->unRegisterMessageHandler(ILandroid/os/Handler;)V

    .line 195
    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->g:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-eqz v2, :cond_0

    .line 196
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->a:Lcom/baidu/mapsdkplatform/comapi/map/a/a;

    invoke-virtual {v2, v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->removeOverlay(Lcom/baidu/platform/comapi/map/Overlay;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 197
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->h:Lcom/baidu/platform/comapi/map/MapTextureView;

    if-eqz v0, :cond_1

    .line 198
    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->a:Lcom/baidu/mapsdkplatform/comapi/map/a/a;

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/map/MapTextureView;->removeOverlay(Lcom/baidu/platform/comapi/map/Overlay;)Z

    .line 200
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->d:Lcom/baidu/mapapi/map/track/TraceAnimationListener;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->d:Lcom/baidu/mapapi/map/track/TraceAnimationListener;

    .line 203
    :cond_2
    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->i:Z

    return-void
.end method

.method public d()Z
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->i:Z

    return v0
.end method
