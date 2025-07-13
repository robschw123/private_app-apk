.class Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->fireCancelEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;


# direct methods
.method constructor <init>(Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask$2;->this$0:Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask$2;->this$0:Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;

    iget-object v1, v0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->listener:Lcom/nostra13/dcloudimageloader/core/assist/ImageLoadingListener;

    iget-object v2, v0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    iget-object v0, v0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->imageAware:Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;

    invoke-interface {v0}, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nostra13/dcloudimageloader/core/assist/ImageLoadingListener;->onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
