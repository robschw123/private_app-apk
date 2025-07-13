.class Lcom/baidu/platform/comapi/map/aj;
.super Landroid/view/SurfaceView;
.source "RenderSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;


# instance fields
.field protected k:Lcom/baidu/platform/comapi/map/ah;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 37
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 38
    sget-object v0, Lcom/baidu/platform/comapi/map/ai$a;->a:Lcom/baidu/platform/comapi/map/ai$a;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/platform/comapi/map/aj;->a(Landroid/content/Context;Lcom/baidu/platform/comapi/map/ai$a;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    sget-object p2, Lcom/baidu/platform/comapi/map/ai$a;->a:Lcom/baidu/platform/comapi/map/ai$a;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/platform/comapi/map/aj;->a(Landroid/content/Context;Lcom/baidu/platform/comapi/map/ai$a;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/platform/comapi/map/ai$a;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/platform/comapi/map/aj;->a(Landroid/content/Context;Lcom/baidu/platform/comapi/map/ai$a;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/platform/comapi/map/ai$a;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/platform/comapi/map/aj;->a(Landroid/content/Context;Lcom/baidu/platform/comapi/map/ai$a;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 64
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 65
    sget-object v0, Lcom/baidu/platform/comapi/map/ai$a;->a:Lcom/baidu/platform/comapi/map/ai$a;

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/platform/comapi/map/aj;->a(Landroid/content/Context;Lcom/baidu/platform/comapi/map/ai$a;Z)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/baidu/platform/comapi/map/ai$a;ZLandroid/content/Context;)Lcom/baidu/platform/comapi/map/ah;
    .locals 0

    .line 147
    invoke-static {p0, p1, p2, p3}, Lcom/baidu/platform/comapi/map/ai;->a(Landroid/view/SurfaceView;Lcom/baidu/platform/comapi/map/ai$a;ZLandroid/content/Context;)Lcom/baidu/platform/comapi/map/ah;

    move-result-object p1

    return-object p1
.end method

.method protected a(Landroid/content/Context;Lcom/baidu/platform/comapi/map/ai$a;Z)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/aj;->k:Lcom/baidu/platform/comapi/map/ah;

    if-eqz v0, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-virtual {p0, p2, p3, p1}, Lcom/baidu/platform/comapi/map/aj;->a(Lcom/baidu/platform/comapi/map/ai$a;ZLandroid/content/Context;)Lcom/baidu/platform/comapi/map/ah;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/aj;->k:Lcom/baidu/platform/comapi/map/ah;

    .line 87
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/aj;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    .line 88
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public captureImageFromSurface(IIIILjava/lang/Object;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7

    .line 292
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/aj;->k:Lcom/baidu/platform/comapi/map/ah;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/baidu/platform/comapi/map/ah;->a(IIIILjava/lang/Object;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getDebugFlags()I
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/aj;->k:Lcom/baidu/platform/comapi/map/ah;

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/ah;->f()I

    move-result v0

    return v0
.end method

.method public getRenderControl()Lcom/baidu/platform/comapi/map/ah;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/aj;->k:Lcom/baidu/platform/comapi/map/ah;

    return-object v0
.end method

.method public getRenderMode()I
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/aj;->k:Lcom/baidu/platform/comapi/map/ah;

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/ah;->g()I

    move-result v0

    return v0
.end method

.method public getViewType()Lcom/baidu/platform/comapi/map/ai$a;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/aj;->k:Lcom/baidu/platform/comapi/map/ah;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/ah;->b()Lcom/baidu/platform/comapi/map/ai$a;

    move-result-object v0

    return-object v0

    .line 76
    :cond_0
    sget-object v0, Lcom/baidu/platform/comapi/map/ai$a;->c:Lcom/baidu/platform/comapi/map/ai$a;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 279
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 281
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/aj;->k:Lcom/baidu/platform/comapi/map/ah;

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/ah;->k()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/aj;->k:Lcom/baidu/platform/comapi/map/ah;

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/ah;->l()V

    .line 288
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/aj;->k:Lcom/baidu/platform/comapi/map/ah;

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/ah;->i()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/aj;->k:Lcom/baidu/platform/comapi/map/ah;

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/ah;->j()V

    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/aj;->k:Lcom/baidu/platform/comapi/map/ah;

    invoke-interface {v0, p1}, Lcom/baidu/platform/comapi/map/ah;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestRender()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/aj;->k:Lcom/baidu/platform/comapi/map/ah;

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/ah;->h()V

    return-void
.end method

.method public setDebugFlags(I)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/aj;->k:Lcom/baidu/platform/comapi/map/ah;

    invoke-interface {v0, p1}, Lcom/baidu/platform/comapi/map/ah;->b(I)V

    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/aj;->k:Lcom/baidu/platform/comapi/map/ah;

    invoke-interface {v0, p1}, Lcom/baidu/platform/comapi/map/ah;->d(I)V

    return-void
.end method

.method public setRenderer(Lcom/baidu/platform/comapi/map/aq;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/aj;->k:Lcom/baidu/platform/comapi/map/ah;

    invoke-interface {v0, p1}, Lcom/baidu/platform/comapi/map/ah;->a(Lcom/baidu/platform/comapi/map/aq;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/aj;->k:Lcom/baidu/platform/comapi/map/ah;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/baidu/platform/comapi/map/ah;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/aj;->k:Lcom/baidu/platform/comapi/map/ah;

    invoke-interface {v0, p1}, Lcom/baidu/platform/comapi/map/ah;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/aj;->k:Lcom/baidu/platform/comapi/map/ah;

    invoke-interface {v0, p1}, Lcom/baidu/platform/comapi/map/ah;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public surfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/aj;->k:Lcom/baidu/platform/comapi/map/ah;

    invoke-interface {v0, p1, p2}, Lcom/baidu/platform/comapi/map/ah;->surfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V

    return-void
.end method
