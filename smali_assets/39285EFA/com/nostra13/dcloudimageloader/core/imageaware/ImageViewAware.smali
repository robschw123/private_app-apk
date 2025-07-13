.class public Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;


# instance fields
.field protected checkActualViewSize:Z

.field protected imageViewRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;->imageViewRef:Ljava/lang/ref/Reference;

    .line 4
    iput-boolean p2, p0, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;->checkActualViewSize:Z

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;->imageViewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 5
    iget-boolean v3, p0, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;->checkActualViewSize:Z

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-gtz v3, :cond_1

    if-eqz v2, :cond_1

    .line 10
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    if-gtz v3, :cond_2

    .line 14
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMaxHeight()I

    move-result v3

    .line 17
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "height = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/dcloudimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_3
    return v1
.end method

.method public getId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;->imageViewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getScaleType()Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;->imageViewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;->fromImageView(Landroid/widget/ImageView;)Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getWidth()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;->imageViewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 5
    iget-boolean v3, p0, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;->checkActualViewSize:Z

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-gtz v3, :cond_1

    if-eqz v2, :cond_1

    .line 10
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    if-gtz v3, :cond_2

    .line 14
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMaxWidth()I

    move-result v3

    .line 17
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "width = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/dcloudimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_3
    return v1
.end method

.method public bridge synthetic getWrappedView()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;->getWrappedView()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedView()Landroid/widget/ImageView;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;->imageViewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public isCollected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;->imageViewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;->imageViewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageViewAware;->imageViewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
