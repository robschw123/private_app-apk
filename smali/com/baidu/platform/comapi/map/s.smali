.class Lcom/baidu/platform/comapi/map/s;
.super Ljava/lang/Object;
.source "MapRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/baidu/platform/comapi/map/p;


# direct methods
.method constructor <init>(Lcom/baidu/platform/comapi/map/p;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/s;->b:Lcom/baidu/platform/comapi/map/p;

    iput-object p2, p0, Lcom/baidu/platform/comapi/map/s;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/s;->b:Lcom/baidu/platform/comapi/map/p;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/p;->a(Lcom/baidu/platform/comapi/map/p;)Lcom/baidu/platform/comapi/map/c;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/s;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/baidu/platform/comapi/map/c;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
