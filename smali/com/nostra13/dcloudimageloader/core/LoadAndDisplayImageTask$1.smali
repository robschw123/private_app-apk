.class Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->fireFailEvent(Lcom/nostra13/dcloudimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;

.field final synthetic val$failCause:Ljava/lang/Throwable;

.field final synthetic val$failType:Lcom/nostra13/dcloudimageloader/core/assist/FailReason$FailType;


# direct methods
.method constructor <init>(Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;Lcom/nostra13/dcloudimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask$1;->this$0:Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;

    iput-object p2, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask$1;->val$failType:Lcom/nostra13/dcloudimageloader/core/assist/FailReason$FailType;

    iput-object p3, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask$1;->val$failCause:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask$1;->this$0:Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;

    iget-object v0, v0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    invoke-virtual {v0}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->shouldShowImageOnFail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask$1;->this$0:Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;

    iget-object v1, v0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->imageAware:Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;

    iget-object v2, v0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    invoke-static {v0}, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->access$000(Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;)Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/nostra13/dcloudimageloader/core/ImageLoaderConfiguration;->resources:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;->getImageOnFail(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask$1;->this$0:Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;

    iget-object v1, v0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->listener:Lcom/nostra13/dcloudimageloader/core/assist/ImageLoadingListener;

    iget-object v2, v0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    iget-object v0, v0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask;->imageAware:Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;

    invoke-interface {v0}, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/nostra13/dcloudimageloader/core/assist/FailReason;

    iget-object v4, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask$1;->val$failType:Lcom/nostra13/dcloudimageloader/core/assist/FailReason$FailType;

    iget-object v5, p0, Lcom/nostra13/dcloudimageloader/core/LoadAndDisplayImageTask$1;->val$failCause:Ljava/lang/Throwable;

    invoke-direct {v3, v4, v5}, Lcom/nostra13/dcloudimageloader/core/assist/FailReason;-><init>(Lcom/nostra13/dcloudimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2, v0, v3}, Lcom/nostra13/dcloudimageloader/core/assist/ImageLoadingListener;->onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/dcloudimageloader/core/assist/FailReason;)V

    return-void
.end method
