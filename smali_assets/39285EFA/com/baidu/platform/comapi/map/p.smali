.class Lcom/baidu/platform/comapi/map/p;
.super Ljava/lang/Object;
.source "MapRenderer.java"

# interfaces
.implements Lcom/baidu/platform/comapi/map/aq;


# static fields
.field public static d:Z = false


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field private e:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

.field private f:Z

.field private g:Lcom/baidu/platform/comapi/map/ak;

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/platform/comapi/map/MapSurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/platform/comapi/map/h;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/baidu/platform/comapi/map/c;

.field private volatile k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Landroid/graphics/Bitmap$Config;

.field private q:Lcom/baidu/platform/comapi/map/e;

.field private r:Z

.field private s:I

.field private t:I

.field private u:I

.field private v:J

.field private w:Z

.field private volatile x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/baidu/platform/comapi/map/h;Lcom/baidu/platform/comapi/map/ak;)V
    .locals 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/p;->e:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/p;->f:Z

    .line 31
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/p;->k:Z

    const-wide/16 v1, 0x0

    .line 46
    iput-wide v1, p0, Lcom/baidu/platform/comapi/map/p;->v:J

    .line 48
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/p;->w:Z

    .line 49
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/p;->x:Z

    .line 53
    iput v0, p0, Lcom/baidu/platform/comapi/map/p;->c:I

    .line 69
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/p;->i:Ljava/lang/ref/WeakReference;

    .line 70
    iput-object p2, p0, Lcom/baidu/platform/comapi/map/p;->g:Lcom/baidu/platform/comapi/map/ak;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Lcom/baidu/platform/comapi/map/ak;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/platform/comapi/map/MapSurfaceView;",
            ">;",
            "Lcom/baidu/platform/comapi/map/ak;",
            ")V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/p;->e:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/p;->f:Z

    .line 31
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/p;->k:Z

    const-wide/16 v1, 0x0

    .line 46
    iput-wide v1, p0, Lcom/baidu/platform/comapi/map/p;->v:J

    .line 48
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/p;->w:Z

    .line 49
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/p;->x:Z

    .line 53
    iput v0, p0, Lcom/baidu/platform/comapi/map/p;->c:I

    .line 64
    iput-object p2, p0, Lcom/baidu/platform/comapi/map/p;->g:Lcom/baidu/platform/comapi/map/ak;

    .line 65
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/p;->h:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/baidu/platform/comapi/map/p;)Lcom/baidu/platform/comapi/map/c;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/baidu/platform/comapi/map/p;->j:Lcom/baidu/platform/comapi/map/c;

    return-object p0
.end method

.method private b(Ljava/lang/Object;)V
    .locals 10

    .line 292
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/p;->j:Lcom/baidu/platform/comapi/map/c;

    if-nez v0, :cond_0

    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/p;->h:Ljava/lang/ref/WeakReference;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-eqz v3, :cond_1

    .line 298
    iget v6, p0, Lcom/baidu/platform/comapi/map/p;->l:I

    if-lez v6, :cond_1

    iget v7, p0, Lcom/baidu/platform/comapi/map/p;->m:I

    if-lez v7, :cond_1

    .line 299
    iget v4, p0, Lcom/baidu/platform/comapi/map/p;->n:I

    iget v5, p0, Lcom/baidu/platform/comapi/map/p;->o:I

    iget-object v9, p0, Lcom/baidu/platform/comapi/map/p;->p:Landroid/graphics/Bitmap$Config;

    move-object v8, p1

    invoke-virtual/range {v3 .. v9}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->captureImageFromSurface(IIIILjava/lang/Object;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 302
    new-instance v3, Lcom/baidu/platform/comapi/map/r;

    invoke-direct {v3, p0, v0}, Lcom/baidu/platform/comapi/map/r;-><init>(Lcom/baidu/platform/comapi/map/p;Landroid/graphics/Bitmap;)V

    invoke-static {v3, v1, v2}, Lcom/baidu/platform/comapi/util/j;->a(Ljava/lang/Runnable;J)V

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/p;->i:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 312
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/baidu/platform/comapi/map/h;

    if-eqz v3, :cond_2

    .line 313
    iget v6, p0, Lcom/baidu/platform/comapi/map/p;->l:I

    if-lez v6, :cond_2

    iget v7, p0, Lcom/baidu/platform/comapi/map/p;->m:I

    if-lez v7, :cond_2

    .line 314
    iget v4, p0, Lcom/baidu/platform/comapi/map/p;->n:I

    iget v5, p0, Lcom/baidu/platform/comapi/map/p;->o:I

    iget-object v9, p0, Lcom/baidu/platform/comapi/map/p;->p:Landroid/graphics/Bitmap$Config;

    move-object v8, p1

    invoke-virtual/range {v3 .. v9}, Lcom/baidu/platform/comapi/map/h;->captureImageFromSurface(IIIILjava/lang/Object;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 317
    new-instance v0, Lcom/baidu/platform/comapi/map/s;

    invoke-direct {v0, p0, p1}, Lcom/baidu/platform/comapi/map/s;-><init>(Lcom/baidu/platform/comapi/map/p;Landroid/graphics/Bitmap;)V

    invoke-static {v0, v1, v2}, Lcom/baidu/platform/comapi/util/j;->a(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method

.method private c()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/p;->e:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/p;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/p;->x:Z

    return-void
.end method

.method public a(II)V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/p;->e:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->renderResize(II)V

    .line 150
    :cond_0
    invoke-static {}, Lcom/baidu/mapapi/OpenLogUtil;->isMapLogEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BasicMap onSurfaceChanged width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; height = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 160
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 162
    :goto_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/p;->e:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->surfaceDestroyed(Landroid/view/Surface;)V

    .line 165
    :cond_1
    invoke-static {}, Lcom/baidu/mapapi/OpenLogUtil;->isMapLogEnable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 166
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object p1

    const-string v0, "BasicMap onSurfaceDestroyed"

    .line 167
    invoke-virtual {p1, v0}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;III)V
    .locals 1

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/p;->r:Z

    .line 112
    iput v0, p0, Lcom/baidu/platform/comapi/map/p;->s:I

    .line 113
    iput v0, p0, Lcom/baidu/platform/comapi/map/p;->u:I

    .line 114
    iput v0, p0, Lcom/baidu/platform/comapi/map/p;->t:I

    .line 116
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/p;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 124
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 127
    :cond_1
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/p;->e:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p1, p2, p3, v0, p4}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->renderInit(IILandroid/view/Surface;I)V

    .line 137
    invoke-static {}, Lcom/baidu/mapapi/OpenLogUtil;->isMapLogEnable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 138
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object p1

    const-string p2, "BasicMap onSurfaceCreated ok"

    .line 139
    invoke-virtual {p1, p2}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/map/c;II)V
    .locals 1

    const/4 v0, 0x1

    .line 373
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/p;->k:Z

    .line 374
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/p;->j:Lcom/baidu/platform/comapi/map/c;

    .line 375
    iput p2, p0, Lcom/baidu/platform/comapi/map/p;->l:I

    .line 376
    iput p3, p0, Lcom/baidu/platform/comapi/map/p;->m:I

    const/4 p1, 0x0

    .line 377
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/p;->p:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/map/c;IIIILandroid/graphics/Bitmap$Config;)V
    .locals 1

    const/4 v0, 0x1

    .line 402
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/p;->k:Z

    .line 403
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/p;->j:Lcom/baidu/platform/comapi/map/c;

    .line 404
    iput p2, p0, Lcom/baidu/platform/comapi/map/p;->n:I

    .line 405
    iput p3, p0, Lcom/baidu/platform/comapi/map/p;->o:I

    .line 406
    iput p4, p0, Lcom/baidu/platform/comapi/map/p;->l:I

    .line 407
    iput p5, p0, Lcom/baidu/platform/comapi/map/p;->m:I

    .line 408
    iput-object p6, p0, Lcom/baidu/platform/comapi/map/p;->p:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/map/c;IILandroid/graphics/Bitmap$Config;)V
    .locals 1

    const/4 v0, 0x1

    .line 387
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/p;->k:Z

    .line 388
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/p;->j:Lcom/baidu/platform/comapi/map/c;

    .line 389
    iput p2, p0, Lcom/baidu/platform/comapi/map/p;->l:I

    .line 390
    iput p3, p0, Lcom/baidu/platform/comapi/map/p;->m:I

    .line 391
    iput-object p4, p0, Lcom/baidu/platform/comapi/map/p;->p:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/map/e;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/p;->q:Lcom/baidu/platform/comapi/map/e;

    return-void
.end method

.method public a(Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/p;->e:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 5

    .line 175
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/p;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 185
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/p;->w:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 186
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/p;->w:Z

    .line 187
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/p;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-eqz v0, :cond_1

    .line 191
    new-instance v2, Lcom/baidu/platform/comapi/map/q;

    invoke-direct {v2, p0, v0}, Lcom/baidu/platform/comapi/map/q;-><init>(Lcom/baidu/platform/comapi/map/p;Lcom/baidu/platform/comapi/map/MapSurfaceView;)V

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->post(Ljava/lang/Runnable;)Z

    .line 203
    :cond_1
    sget-boolean v0, Lcom/baidu/platform/comapi/map/p;->d:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 206
    sput-boolean v2, Lcom/baidu/platform/comapi/map/p;->d:Z

    return-void

    .line 210
    :cond_2
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/p;->x:Z

    if-eqz v0, :cond_3

    return-void

    .line 214
    :cond_3
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/p;->e:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->Draw()I

    move-result v0

    .line 215
    iget-object v3, p0, Lcom/baidu/platform/comapi/map/p;->h:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_5

    .line 216
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-eqz v3, :cond_5

    if-ne v0, v1, :cond_4

    .line 222
    invoke-virtual {v3}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->requestRender()V

    goto :goto_0

    .line 224
    :cond_4
    invoke-virtual {v3}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getRenderMode()I

    move-result v4

    if-eqz v4, :cond_5

    .line 225
    invoke-virtual {v3, v2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->setRenderMode(I)V

    .line 230
    :cond_5
    :goto_0
    iget-object v3, p0, Lcom/baidu/platform/comapi/map/p;->i:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_7

    .line 231
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/platform/comapi/map/h;

    if-eqz v3, :cond_7

    if-ne v0, v1, :cond_6

    .line 237
    invoke-virtual {v3}, Lcom/baidu/platform/comapi/map/h;->requestRender()V

    goto :goto_1

    .line 239
    :cond_6
    invoke-virtual {v3}, Lcom/baidu/platform/comapi/map/h;->getRenderMode()I

    move-result v0

    if-eqz v0, :cond_7

    .line 240
    invoke-virtual {v3, v2}, Lcom/baidu/platform/comapi/map/h;->setRenderMode(I)V

    .line 246
    :cond_7
    :goto_1
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/p;->k:Z

    if-eqz v0, :cond_8

    .line 247
    iput-boolean v2, p0, Lcom/baidu/platform/comapi/map/p;->k:Z

    .line 248
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/p;->j:Lcom/baidu/platform/comapi/map/c;

    if-eqz v0, :cond_8

    .line 249
    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/map/p;->b(Ljava/lang/Object;)V

    .line 253
    :cond_8
    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/p;->r:Z

    if-nez p1, :cond_b

    .line 254
    iget p1, p0, Lcom/baidu/platform/comapi/map/p;->s:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/baidu/platform/comapi/map/p;->s:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    .line 255
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/p;->q:Lcom/baidu/platform/comapi/map/e;

    if-eqz p1, :cond_9

    .line 256
    invoke-interface {p1}, Lcom/baidu/platform/comapi/map/e;->a()V

    .line 257
    invoke-static {}, Lcom/baidu/mapapi/OpenLogUtil;->isMapLogEnable()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 258
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object p1

    const-string v3, "BasicMap onDrawFirstFrame"

    .line 259
    invoke-virtual {p1, v3}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a(Ljava/lang/String;)V

    .line 263
    :cond_9
    iget p1, p0, Lcom/baidu/platform/comapi/map/p;->s:I

    if-ne p1, v0, :cond_a

    goto :goto_2

    :cond_a
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/p;->r:Z

    .line 272
    :cond_b
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/p;->h:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_e

    .line 273
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/p;->h:Ljava/lang/ref/WeakReference;

    .line 274
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/p;->h:Ljava/lang/ref/WeakReference;

    .line 275
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object p1

    iget-object p1, p1, Lcom/baidu/mapsdkplatform/comapi/map/d;->h:Ljava/util/List;

    if-eqz p1, :cond_e

    .line 276
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/p;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object p1

    iget-object p1, p1, Lcom/baidu/mapsdkplatform/comapi/map/d;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/al;

    .line 277
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/p;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object v1

    if-nez v1, :cond_d

    return-void

    .line 280
    :cond_d
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/p;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->J()Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object v1

    if-eqz v0, :cond_c

    const/4 v2, 0x0

    .line 283
    invoke-interface {v0, v2, v1}, Lcom/baidu/platform/comapi/map/al;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/baidu/mapsdkplatform/comapi/map/x;)V

    goto :goto_3

    :cond_e
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/p;->f:Z

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/p;->x:Z

    return-void
.end method
