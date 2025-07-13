.class Lcom/baidu/platform/comapi/map/f$h;
.super Ljava/lang/Object;
.source "GLRenderControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platform/comapi/map/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field a:Ljavax/microedition/khronos/egl/EGL10;

.field b:Ljavax/microedition/khronos/egl/EGLDisplay;

.field c:Ljavax/microedition/khronos/egl/EGLSurface;

.field d:Ljavax/microedition/khronos/egl/EGLConfig;

.field e:Ljavax/microedition/khronos/egl/EGLContext;

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/platform/comapi/map/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/platform/comapi/map/f;",
            ">;)V"
        }
    .end annotation

    .line 968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 969
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/f$h;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 1218
    invoke-static {p0}, Lcom/baidu/platform/comapi/map/f$h;->b(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "EGL_CONTEXT_LOST"

    return-object p0

    :pswitch_1
    const-string p0, "EGL_BAD_SURFACE"

    return-object p0

    :pswitch_2
    const-string p0, "EGL_BAD_PARAMETER"

    return-object p0

    :pswitch_3
    const-string p0, "EGL_BAD_NATIVE_WINDOW"

    return-object p0

    :pswitch_4
    const-string p0, "EGL_BAD_NATIVE_PIXMAP"

    return-object p0

    :pswitch_5
    const-string p0, "EGL_BAD_MATCH"

    return-object p0

    :pswitch_6
    const-string p0, "EGL_BAD_DISPLAY"

    return-object p0

    :pswitch_7
    const-string p0, "EGL_BAD_CURRENT_SURFACE"

    return-object p0

    :pswitch_8
    const-string p0, "EGL_BAD_CONTEXT"

    return-object p0

    :pswitch_9
    const-string p0, "EGL_BAD_CONFIG"

    return-object p0

    :pswitch_a
    const-string p0, "EGL_BAD_ATTRIBUTE"

    return-object p0

    :pswitch_b
    const-string p0, "EGL_BAD_ALLOC"

    return-object p0

    :pswitch_c
    const-string p0, "EGL_BAD_ACCESS"

    return-object p0

    :pswitch_d
    const-string p0, "EGL_NOT_INITIALIZED"

    return-object p0

    :pswitch_e
    const-string p0, "EGL_SUCCESS"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3000
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

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 1166
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/f$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {p1, v0}, Lcom/baidu/platform/comapi/map/f$h;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 0

    .line 1170
    invoke-static {p0, p1}, Lcom/baidu/platform/comapi/map/f$h;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 1174
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1178
    invoke-static {p1, p2}, Lcom/baidu/platform/comapi/map/f$h;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static b(I)Ljava/lang/String;
    .locals 2

    .line 1223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/baidu/platform/comapi/map/f$h;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private g()V
    .locals 5

    .line 1138
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/f$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_1

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_1

    .line 1139
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/f$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/f$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1140
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/f$h;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/f;

    if-eqz v0, :cond_0

    .line 1142
    invoke-static {v0}, Lcom/baidu/platform/comapi/map/f;->d(Lcom/baidu/platform/comapi/map/f;)Lcom/baidu/platform/comapi/map/f$g;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/f$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/f$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/baidu/platform/comapi/map/f$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Lcom/baidu/platform/comapi/map/f$g;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    :cond_0
    const/4 v0, 0x0

    .line 1144
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/f$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 983
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/f$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    .line 988
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/f$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 990
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 998
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/f$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/f$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1001
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/f$h;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1003
    iput-object v1, p0, Lcom/baidu/platform/comapi/map/f$h;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1004
    iput-object v1, p0, Lcom/baidu/platform/comapi/map/f$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_0

    .line 1006
    :cond_0
    invoke-static {v0}, Lcom/baidu/platform/comapi/map/f;->b(Lcom/baidu/platform/comapi/map/f;)Lcom/baidu/platform/comapi/map/f$e;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/platform/comapi/map/f$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/baidu/platform/comapi/map/f$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v4}, Lcom/baidu/platform/comapi/map/f$e;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/platform/comapi/map/f$h;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1012
    invoke-static {v0}, Lcom/baidu/platform/comapi/map/f;->c(Lcom/baidu/platform/comapi/map/f;)Lcom/baidu/platform/comapi/map/f$f;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/f$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/baidu/platform/comapi/map/f$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/baidu/platform/comapi/map/f$h;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v2, v3, v4}, Lcom/baidu/platform/comapi/map/f$f;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/f$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1014
    :goto_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/f$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_1

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v2, :cond_2

    .line 1015
    :cond_1
    iput-object v1, p0, Lcom/baidu/platform/comapi/map/f$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    const-string v0, "createContext"

    .line 1016
    invoke-direct {p0, v0}, Lcom/baidu/platform/comapi/map/f$h;->a(Ljava/lang/String;)V

    .line 1022
    :cond_2
    iput-object v1, p0, Lcom/baidu/platform/comapi/map/f$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    return-void

    .line 999
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 991
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglGetDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Z
    .locals 5

    .line 1038
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/f$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_7

    .line 1041
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/f$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_6

    .line 1044
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/f$h;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    if-eqz v0, :cond_5

    .line 1052
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/f$h;->g()V

    .line 1057
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/f$h;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/f;

    if-eqz v0, :cond_0

    .line 1059
    invoke-static {v0}, Lcom/baidu/platform/comapi/map/f;->d(Lcom/baidu/platform/comapi/map/f;)Lcom/baidu/platform/comapi/map/f$g;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/f$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/baidu/platform/comapi/map/f$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/baidu/platform/comapi/map/f$h;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1060
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/f;->a()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 1059
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/baidu/platform/comapi/map/f$g;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/f$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1062
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/f$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1065
    :goto_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/f$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 1077
    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/f$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/f$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/baidu/platform/comapi/map/f$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/baidu/platform/comapi/map/f$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1082
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/f$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const-string v2, "EGLHelper"

    const-string v3, "eglMakeCurrent"

    invoke-static {v2, v3, v0}, Lcom/baidu/platform/comapi/map/f$h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0

    .line 1066
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/f$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v2, 0x300b

    if-ne v0, v2, :cond_4

    const-string v0, "EglHelper"

    const-string v2, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    .line 1068
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v1

    .line 1045
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mEglConfig not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1042
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglDisplay not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1039
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "egl not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method c()Ljavax/microedition/khronos/opengles/GL;
    .locals 6

    .line 1096
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/f$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 1097
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/f$h;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/map/f;

    if-eqz v1, :cond_3

    .line 1099
    invoke-static {v1}, Lcom/baidu/platform/comapi/map/f;->e(Lcom/baidu/platform/comapi/map/f;)Lcom/baidu/platform/comapi/map/f$k;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1100
    invoke-static {v1}, Lcom/baidu/platform/comapi/map/f;->e(Lcom/baidu/platform/comapi/map/f;)Lcom/baidu/platform/comapi/map/f$k;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/baidu/platform/comapi/map/f$k;->a(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 1103
    :cond_0
    invoke-static {v1}, Lcom/baidu/platform/comapi/map/f;->f(Lcom/baidu/platform/comapi/map/f;)I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1106
    invoke-static {v1}, Lcom/baidu/platform/comapi/map/f;->f(Lcom/baidu/platform/comapi/map/f;)I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 1109
    :cond_1
    invoke-static {v1}, Lcom/baidu/platform/comapi/map/f;->f(Lcom/baidu/platform/comapi/map/f;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 1110
    new-instance v3, Lcom/baidu/platform/comapi/map/f$l;

    invoke-direct {v3}, Lcom/baidu/platform/comapi/map/f$l;-><init>()V

    .line 1112
    :cond_2
    invoke-static {v0, v2, v3}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public d()I
    .locals 3

    .line 1124
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/f$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/f$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/f$h;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/f$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x3000

    return v0
.end method

.method public e()V
    .locals 0

    .line 1134
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/f$h;->g()V

    return-void
.end method

.method public f()V
    .locals 5

    .line 1152
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/f$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1153
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/f$h;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/f;

    if-eqz v0, :cond_0

    .line 1155
    invoke-static {v0}, Lcom/baidu/platform/comapi/map/f;->c(Lcom/baidu/platform/comapi/map/f;)Lcom/baidu/platform/comapi/map/f$f;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/f$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/baidu/platform/comapi/map/f$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/baidu/platform/comapi/map/f$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v4}, Lcom/baidu/platform/comapi/map/f$f;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 1157
    :cond_0
    iput-object v1, p0, Lcom/baidu/platform/comapi/map/f$h;->e:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1159
    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/f$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_2

    .line 1160
    iget-object v2, p0, Lcom/baidu/platform/comapi/map/f$h;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 1161
    iput-object v1, p0, Lcom/baidu/platform/comapi/map/f$h;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_2
    return-void
.end method
