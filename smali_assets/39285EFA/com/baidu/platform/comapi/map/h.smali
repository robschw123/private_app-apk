.class public Lcom/baidu/platform/comapi/map/h;
.super Landroid/view/TextureView;
.source "GLTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platform/comapi/map/h$g;,
        Lcom/baidu/platform/comapi/map/h$h;,
        Lcom/baidu/platform/comapi/map/h$f;,
        Lcom/baidu/platform/comapi/map/h$e;,
        Lcom/baidu/platform/comapi/map/h$i;,
        Lcom/baidu/platform/comapi/map/h$b;,
        Lcom/baidu/platform/comapi/map/h$a;,
        Lcom/baidu/platform/comapi/map/h$d;,
        Lcom/baidu/platform/comapi/map/h$c;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I

.field private static final c:Lcom/baidu/platform/comapi/map/h$g;


# instance fields
.field private a:I

.field private final b:Landroid/view/View$OnLayoutChangeListener;

.field private final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/platform/comapi/map/h;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/baidu/platform/comapi/map/h$f;

.field private f:Lcom/baidu/platform/comapi/map/aq;

.field private g:Z

.field private h:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

.field private i:Landroid/opengl/GLSurfaceView$EGLContextFactory;

.field private j:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

.field private k:Landroid/opengl/GLSurfaceView$GLWrapper;

.field private l:I

.field private m:I

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1725
    new-instance v0, Lcom/baidu/platform/comapi/map/h$g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/baidu/platform/comapi/map/h$g;-><init>(Lcom/baidu/platform/comapi/map/i;)V

    sput-object v0, Lcom/baidu/platform/comapi/map/h;->c:Lcom/baidu/platform/comapi/map/h$g;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x3c

    .line 121
    iput p1, p0, Lcom/baidu/platform/comapi/map/h;->a:I

    .line 137
    new-instance p1, Lcom/baidu/platform/comapi/map/i;

    invoke-direct {p1, p0}, Lcom/baidu/platform/comapi/map/i;-><init>(Lcom/baidu/platform/comapi/map/h;)V

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/h;->b:Landroid/view/View$OnLayoutChangeListener;

    .line 1728
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/h;->d:Ljava/lang/ref/WeakReference;

    .line 95
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/h;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x3c

    .line 121
    iput p1, p0, Lcom/baidu/platform/comapi/map/h;->a:I

    .line 137
    new-instance p1, Lcom/baidu/platform/comapi/map/i;

    invoke-direct {p1, p0}, Lcom/baidu/platform/comapi/map/i;-><init>(Lcom/baidu/platform/comapi/map/h;)V

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/h;->b:Landroid/view/View$OnLayoutChangeListener;

    .line 1728
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/h;->d:Ljava/lang/ref/WeakReference;

    .line 104
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/h;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x3c

    .line 121
    iput p1, p0, Lcom/baidu/platform/comapi/map/h;->a:I

    .line 137
    new-instance p1, Lcom/baidu/platform/comapi/map/i;

    invoke-direct {p1, p0}, Lcom/baidu/platform/comapi/map/i;-><init>(Lcom/baidu/platform/comapi/map/h;)V

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/h;->b:Landroid/view/View$OnLayoutChangeListener;

    .line 1728
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/h;->d:Ljava/lang/ref/WeakReference;

    .line 113
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/h;->b()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/platform/comapi/map/h;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/baidu/platform/comapi/map/h;->m:I

    return p0
.end method

.method private a(IIIILjavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 15

    move/from16 v0, p3

    move/from16 v9, p4

    move-object/from16 v10, p6

    mul-int v1, v0, v9

    .line 573
    new-array v11, v1, [I

    .line 574
    new-array v12, v1, [I

    .line 575
    invoke-static {v11}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v8

    const/4 v13, 0x0

    .line 576
    invoke-virtual {v8, v13}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    const/4 v14, 0x0

    move-object/from16 v1, p5

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 578
    :try_start_0
    invoke-interface/range {v1 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v9, :cond_1

    mul-int v2, v1, v0

    sub-int v3, v9, v1

    add-int/lit8 v3, v3, -0x1

    mul-int v3, v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_0

    add-int v5, v2, v4

    .line 585
    aget v5, v11, v5

    shr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v7, v5, 0x10

    const/high16 v8, 0xff0000

    and-int/2addr v7, v8

    const v8, -0xff0100

    and-int/2addr v5, v8

    or-int/2addr v5, v7

    or-int/2addr v5, v6

    add-int v6, v3, v4

    .line 589
    aput v5, v12, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v10, :cond_2

    .line 593
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v0, v9, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 595
    :cond_2
    invoke-static {v12, v0, v9, v10}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Landroid/opengl/GLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " createBitmap cause OutOfMemoryError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OutOfMemoryError"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    return-object v14
.end method

.method static synthetic a()Lcom/baidu/platform/comapi/map/h$g;
    .locals 1

    .line 43
    sget-object v0, Lcom/baidu/platform/comapi/map/h;->c:Lcom/baidu/platform/comapi/map/h$g;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/platform/comapi/map/h;)Landroid/opengl/GLSurfaceView$EGLConfigChooser;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/baidu/platform/comapi/map/h;->h:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    return-object p0
.end method

.method private b()V
    .locals 1

    .line 117
    invoke-virtual {p0, p0}, Lcom/baidu/platform/comapi/map/h;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 118
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/h;->b:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Lcom/baidu/platform/comapi/map/h;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method static synthetic c(Lcom/baidu/platform/comapi/map/h;)Landroid/opengl/GLSurfaceView$EGLContextFactory;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/baidu/platform/comapi/map/h;->i:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 1587
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/h;->e:Lcom/baidu/platform/comapi/map/h$f;

    if-nez v0, :cond_0

    return-void

    .line 1588
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic d(Lcom/baidu/platform/comapi/map/h;)Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/baidu/platform/comapi/map/h;->j:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    return-object p0
.end method

.method static synthetic e(Lcom/baidu/platform/comapi/map/h;)Landroid/opengl/GLSurfaceView$GLWrapper;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/baidu/platform/comapi/map/h;->k:Landroid/opengl/GLSurfaceView$GLWrapper;

    return-object p0
.end method

.method static synthetic f(Lcom/baidu/platform/comapi/map/h;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/baidu/platform/comapi/map/h;->l:I

    return p0
.end method

.method static synthetic g(Lcom/baidu/platform/comapi/map/h;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/baidu/platform/comapi/map/h;->n:Z

    return p0
.end method

.method static synthetic h(Lcom/baidu/platform/comapi/map/h;)Lcom/baidu/platform/comapi/map/aq;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/baidu/platform/comapi/map/h;->f:Lcom/baidu/platform/comapi/map/aq;

    return-object p0
.end method


# virtual methods
.method public captureImageFromSurface(IIIILjava/lang/Object;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7

    .line 568
    move-object v5, p5

    check-cast v5, Ljavax/microedition/khronos/opengles/GL10;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p6

    .line 569
    invoke-direct/range {v0 .. v6}, Lcom/baidu/platform/comapi/map/h;->a(IIIILjavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/h;->e:Lcom/baidu/platform/comapi/map/h$f;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/h$f;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDebugFlags()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/baidu/platform/comapi/map/h;->l:I

    return v0
.end method

.method public getFPS()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/baidu/platform/comapi/map/h;->a:I

    return v0
.end method

.method public getPreserveEGLContextOnPause()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/h;->n:Z

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/h;->e:Lcom/baidu/platform/comapi/map/h$f;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/h$f;->b()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 531
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttachedToWindow reattach ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/h;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLTextureView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/h;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/h;->f:Lcom/baidu/platform/comapi/map/aq;

    if-eqz v0, :cond_2

    .line 538
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/h;->e:Lcom/baidu/platform/comapi/map/h$f;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 539
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/h$f;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 541
    :goto_0
    new-instance v2, Lcom/baidu/platform/comapi/map/h$f;

    iget-object v3, p0, Lcom/baidu/platform/comapi/map/h;->d:Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Lcom/baidu/platform/comapi/map/h$f;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v2, p0, Lcom/baidu/platform/comapi/map/h;->e:Lcom/baidu/platform/comapi/map/h$f;

    if-eq v0, v1, :cond_1

    .line 543
    invoke-virtual {v2, v0}, Lcom/baidu/platform/comapi/map/h$f;->a(I)V

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/h;->e:Lcom/baidu/platform/comapi/map/h$f;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/h$f;->start()V

    :cond_2
    const/4 v0, 0x0

    .line 547
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/h;->g:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const-string v0, "GLTextureView"

    const-string v1, "onDetachedFromWindow"

    .line 558
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/h;->e:Lcom/baidu/platform/comapi/map/h$f;

    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/h$f;->h()V

    :cond_0
    const/4 v0, 0x1

    .line 563
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/h;->g:Z

    .line 564
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/h;->e:Lcom/baidu/platform/comapi/map/h$f;

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/h$f;->f()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/h;->e:Lcom/baidu/platform/comapi/map/h$f;

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/h$f;->g()V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 471
    invoke-virtual {p0, p1}, Lcom/baidu/platform/comapi/map/h;->surfaceCreated(Landroid/graphics/SurfaceTexture;)V

    const/4 v0, 0x0

    .line 472
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/baidu/platform/comapi/map/h;->surfaceChanged(Landroid/graphics/SurfaceTexture;III)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 482
    invoke-virtual {p0, p1}, Lcom/baidu/platform/comapi/map/h;->surfaceDestroyed(Landroid/graphics/SurfaceTexture;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    const/4 v0, 0x0

    .line 477
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/baidu/platform/comapi/map/h;->surfaceChanged(Landroid/graphics/SurfaceTexture;III)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/h;->e:Lcom/baidu/platform/comapi/map/h$f;

    if-eqz v0, :cond_0

    .line 525
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/h$f;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public requestRender()V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/h;->e:Lcom/baidu/platform/comapi/map/h$f;

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/h$f;->c()V

    :cond_0
    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0

    .line 187
    iput p1, p0, Lcom/baidu/platform/comapi/map/h;->l:I

    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 9

    .line 358
    new-instance v8, Lcom/baidu/platform/comapi/map/h$b;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/baidu/platform/comapi/map/h$b;-><init>(Lcom/baidu/platform/comapi/map/h;IIIIII)V

    invoke-virtual {p0, v8}, Lcom/baidu/platform/comapi/map/h;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    return-void
.end method

.method public setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V
    .locals 0

    .line 322
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/h;->c()V

    .line 323
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/h;->h:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1

    .line 341
    new-instance v0, Lcom/baidu/platform/comapi/map/h$i;

    invoke-direct {v0, p0, p1}, Lcom/baidu/platform/comapi/map/h$i;-><init>(Lcom/baidu/platform/comapi/map/h;Z)V

    invoke-virtual {p0, v0}, Lcom/baidu/platform/comapi/map/h;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0

    .line 389
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/h;->c()V

    .line 390
    iput p1, p0, Lcom/baidu/platform/comapi/map/h;->m:I

    return-void
.end method

.method public setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V
    .locals 0

    .line 290
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/h;->c()V

    .line 291
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/h;->i:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    return-void
.end method

.method public setEGLWindowSurfaceFactory(Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;)V
    .locals 0

    .line 304
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/h;->c()V

    .line 305
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/h;->j:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    return-void
.end method

.method public setFPS(I)V
    .locals 0

    .line 127
    iput p1, p0, Lcom/baidu/platform/comapi/map/h;->a:I

    return-void
.end method

.method public setGLWrapper(Landroid/opengl/GLSurfaceView$GLWrapper;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/h;->k:Landroid/opengl/GLSurfaceView$GLWrapper;

    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0

    .line 218
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/h;->n:Z

    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/h;->e:Lcom/baidu/platform/comapi/map/h$f;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/h$f;->a(I)V

    return-void
.end method

.method public setRenderer(Lcom/baidu/platform/comapi/map/aq;)V
    .locals 9

    .line 256
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/h;->c()V

    .line 257
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/h;->h:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    if-nez v0, :cond_1

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v5, 0x18

    const/16 v6, 0x8

    const/4 v0, 0x1

    .line 259
    :try_start_0
    invoke-static/range {v1 .. v6}, Lcom/baidu/platform/comapi/util/h;->a(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/16 v8, 0x8

    move-object v2, p0

    .line 260
    invoke-virtual/range {v2 .. v8}, Lcom/baidu/platform/comapi/map/h;->setEGLConfigChooser(IIIIII)V

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p0, v0}, Lcom/baidu/platform/comapi/map/h;->setEGLConfigChooser(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    :catch_0
    invoke-virtual {p0, v0}, Lcom/baidu/platform/comapi/map/h;->setEGLConfigChooser(Z)V

    .line 268
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/h;->i:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 269
    new-instance v0, Lcom/baidu/platform/comapi/map/h$c;

    invoke-direct {v0, p0, v1}, Lcom/baidu/platform/comapi/map/h$c;-><init>(Lcom/baidu/platform/comapi/map/h;Lcom/baidu/platform/comapi/map/i;)V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/h;->i:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/h;->j:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_3

    .line 272
    new-instance v0, Lcom/baidu/platform/comapi/map/h$d;

    invoke-direct {v0, v1}, Lcom/baidu/platform/comapi/map/h$d;-><init>(Lcom/baidu/platform/comapi/map/i;)V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/h;->j:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 274
    :cond_3
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/h;->f:Lcom/baidu/platform/comapi/map/aq;

    .line 275
    new-instance p1, Lcom/baidu/platform/comapi/map/h$f;

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/h;->d:Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Lcom/baidu/platform/comapi/map/h$f;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/h;->e:Lcom/baidu/platform/comapi/map/h$f;

    .line 276
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/h$f;->start()V

    return-void
.end method

.method public surfaceChanged(Landroid/graphics/SurfaceTexture;III)V
    .locals 0

    .line 464
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/h;->e:Lcom/baidu/platform/comapi/map/h$f;

    if-eqz p1, :cond_0

    .line 465
    invoke-virtual {p1, p3, p4}, Lcom/baidu/platform/comapi/map/h$f;->a(II)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 443
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/h;->e:Lcom/baidu/platform/comapi/map/h$f;

    if-eqz p1, :cond_0

    .line 444
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/h$f;->d()V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 454
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/h;->e:Lcom/baidu/platform/comapi/map/h$f;

    if-eqz p1, :cond_0

    .line 455
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/h$f;->e()V

    :cond_0
    return-void
.end method
