.class Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1$1;
.super Ljava/lang/Object;
.source "FrescoLoadUtil.java"

# interfaces
.implements Lcom/facebook/imagepipeline/request/Postprocessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1$1;->this$1:Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPostprocessorCacheKey()Lcom/facebook/cache/common/CacheKey;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public process(Landroid/graphics/Bitmap;Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;)Lcom/facebook/common/references/CloseableReference;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sourceBitmap",
            "bitmapFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;",
            ")",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1$1;->this$1:Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;

    iget v0, v0, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;->val$newHeight:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1$1;->this$1:Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;

    iget v0, v0, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;->val$newHeight:I

    if-lez v0, :cond_0

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 83
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 85
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 87
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1$1;->this$1:Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;

    iget v0, v0, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;->val$newWidth:I

    int-to-float v0, v0

    int-to-float v1, v5

    div-float/2addr v0, v1

    .line 88
    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1$1;->this$1:Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;

    iget v1, v1, Lio/dcloud/feature/weex/adapter/FrescoLoadUtil$1;->val$newHeight:I

    int-to-float v1, v1

    int-to-float v2, v6

    div-float/2addr v1, v2

    .line 90
    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    move-object v1, p2

    move-object v2, p1

    .line 91
    invoke-virtual/range {v1 .. v8}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    return-object p1

    .line 93
    :cond_0
    invoke-virtual {p2, p1}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmap(Landroid/graphics/Bitmap;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    return-object p1
.end method
