.class Lcom/baidu/platform/comapi/map/as;
.super Ljava/lang/Object;
.source "VulkanRenderControl.java"

# interfaces
.implements Lcom/baidu/platform/comapi/map/ah;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platform/comapi/map/as$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/baidu/platform/comapi/map/aq;

.field protected b:Z

.field private c:I

.field private d:Lcom/baidu/platform/comapi/map/as$a;

.field private e:Z

.field private final f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/platform/comapi/map/as;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/SurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private h:I


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/as;->e:Z

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/as;->f:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/as;->a:Lcom/baidu/platform/comapi/map/aq;

    const/16 v0, 0x3c

    .line 44
    iput v0, p0, Lcom/baidu/platform/comapi/map/as;->h:I

    .line 51
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/as;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/baidu/platform/comapi/map/as;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/baidu/platform/comapi/map/as;->e:Z

    return p0
.end method

.method static synthetic a(Lcom/baidu/platform/comapi/map/as;Z)Z
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/as;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/platform/comapi/map/as;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/baidu/platform/comapi/map/as;->f:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as;->d:Lcom/baidu/platform/comapi/map/as$a;

    if-nez v0, :cond_0

    return-void

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(IIIILjava/lang/Object;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Landroid/view/SurfaceHolder;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    if-gtz p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x3c

    if-le p1, v0, :cond_1

    const/16 p1, 0x3c

    .line 101
    :cond_1
    iput p1, p0, Lcom/baidu/platform/comapi/map/as;->h:I

    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/map/aq;)V
    .locals 1

    .line 150
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/as;->c()V

    .line 153
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/as;->a:Lcom/baidu/platform/comapi/map/aq;

    .line 154
    new-instance p1, Lcom/baidu/platform/comapi/map/as$a;

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as;->f:Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0, v0}, Lcom/baidu/platform/comapi/map/as$a;-><init>(Lcom/baidu/platform/comapi/map/as;Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/as;->d:Lcom/baidu/platform/comapi/map/as$a;

    .line 155
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/as$a;->start()V

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as;->d:Lcom/baidu/platform/comapi/map/as$a;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/as$a;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()Lcom/baidu/platform/comapi/map/ai$a;
    .locals 1

    .line 76
    sget-object v0, Lcom/baidu/platform/comapi/map/ai$a;->b:Lcom/baidu/platform/comapi/map/ai$a;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/baidu/platform/comapi/map/as;->c:I

    return-void
.end method

.method public d(I)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as;->d:Lcom/baidu/platform/comapi/map/as$a;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/as$a;->a(I)V

    return-void
.end method

.method public e()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/baidu/platform/comapi/map/as;->h:I

    return v0
.end method

.method public f()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/baidu/platform/comapi/map/as;->c:I

    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as;->d:Lcom/baidu/platform/comapi/map/as$a;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/as$a;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public g()I
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as;->d:Lcom/baidu/platform/comapi/map/as$a;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/as$a;->a()I

    move-result v0

    return v0
.end method

.method public h()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as;->d:Lcom/baidu/platform/comapi/map/as$a;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/as$a;->b()V

    return-void
.end method

.method public i()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as;->d:Lcom/baidu/platform/comapi/map/as$a;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/as$a;->c()V

    return-void
.end method

.method public j()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as;->d:Lcom/baidu/platform/comapi/map/as$a;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/as$a;->d()V

    return-void
.end method

.method public k()V
    .locals 4

    .line 233
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/as;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as;->a:Lcom/baidu/platform/comapi/map/aq;

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as;->d:Lcom/baidu/platform/comapi/map/as$a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/as$a;->a()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 239
    :goto_0
    new-instance v2, Lcom/baidu/platform/comapi/map/as$a;

    iget-object v3, p0, Lcom/baidu/platform/comapi/map/as;->f:Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0, v3}, Lcom/baidu/platform/comapi/map/as$a;-><init>(Lcom/baidu/platform/comapi/map/as;Ljava/lang/ref/WeakReference;)V

    iput-object v2, p0, Lcom/baidu/platform/comapi/map/as;->d:Lcom/baidu/platform/comapi/map/as$a;

    if-eq v0, v1, :cond_1

    .line 241
    invoke-virtual {v2, v0}, Lcom/baidu/platform/comapi/map/as$a;->a(I)V

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as;->d:Lcom/baidu/platform/comapi/map/as$a;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/as$a;->start()V

    :cond_2
    const/4 v0, 0x0

    .line 245
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/as;->b:Z

    return-void
.end method

.method public l()V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as;->d:Lcom/baidu/platform/comapi/map/as$a;

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/as$a;->e()V

    :cond_0
    const/4 v0, 0x1

    .line 256
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/as;->b:Z

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 271
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/as;->d:Lcom/baidu/platform/comapi/map/as$a;

    invoke-virtual {p2, p1, p3, p4}, Lcom/baidu/platform/comapi/map/as$a;->a(Landroid/view/SurfaceHolder;II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as;->d:Lcom/baidu/platform/comapi/map/as$a;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/as$a;->a(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as;->d:Lcom/baidu/platform/comapi/map/as$a;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/as$a;->b(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public surfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V
    .locals 0

    .line 302
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/as;->d:Lcom/baidu/platform/comapi/map/as$a;

    if-eqz p1, :cond_0

    .line 303
    invoke-virtual {p1, p2}, Lcom/baidu/platform/comapi/map/as$a;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
