.class Lcom/baidu/platform/comapi/map/i;
.super Ljava/lang/Object;
.source "GLTextureView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic a:Lcom/baidu/platform/comapi/map/h;


# direct methods
.method constructor <init>(Lcom/baidu/platform/comapi/map/h;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/i;->a:Lcom/baidu/platform/comapi/map/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 141
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/i;->a:Lcom/baidu/platform/comapi/map/h;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/h;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p6

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-virtual {p1, p6, p4, p5}, Lcom/baidu/platform/comapi/map/h;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method
