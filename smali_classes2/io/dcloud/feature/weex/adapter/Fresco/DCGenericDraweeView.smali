.class public Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;
.super Lcom/facebook/drawee/view/DraweeView;
.source "DCGenericDraweeView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/view/DraweeView<",
        "Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;",
        ">;"
    }
.end annotation


# static fields
.field private static sDraweecontrollerbuildersupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "+",
            "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mControllerBuilder:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/DraweeView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, p1, v0}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->inflateHierarchy(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/view/DraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->inflateHierarchy(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-direct {p0}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/drawee/view/DraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->inflateHierarchy(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    invoke-direct {p0}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/drawee/view/DraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->inflateHierarchy(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    invoke-direct {p0}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "hierarchy"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/DraweeView;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p0, p2}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->setHierarchy(Lcom/facebook/drawee/interfaces/DraweeHierarchy;)V

    .line 39
    invoke-direct {p0}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 69
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SimpleDraweeView#init"

    .line 70
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 72
    :cond_0
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->getTopLevelDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 74
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->getTopLevelDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    .line 76
    :cond_1
    sget-object v0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->sDraweecontrollerbuildersupplier:Lcom/facebook/common/internal/Supplier;

    const-string v1, "SimpleDraweeView was not initialized!"

    invoke-static {v0, v1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->sDraweecontrollerbuildersupplier:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->mControllerBuilder:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :goto_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 81
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 82
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 84
    :cond_3
    throw v0
.end method

.method public static initialize(Lcom/facebook/common/internal/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "draweeControllerBuilderSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "+",
            "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;",
            ">;)V"
        }
    .end annotation

    .line 27
    sput-object p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->sDraweecontrollerbuildersupplier:Lcom/facebook/common/internal/Supplier;

    return-void
.end method

.method public static shutDown()V
    .locals 1

    const/4 v0, 0x0

    .line 31
    sput-object v0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->sDraweecontrollerbuildersupplier:Lcom/facebook/common/internal/Supplier;

    return-void
.end method


# virtual methods
.method protected getControllerBuilder()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 1

    .line 101
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->mControllerBuilder:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    return-object v0
.end method

.method protected inflateHierarchy(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 88
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GenericDraweeView#inflateHierarchy"

    .line 89
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 92
    :cond_0
    invoke-static {p1, p2}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyInflater;->inflateBuilder(Landroid/content/Context;Landroid/util/AttributeSet;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->getDesiredAspectRatio()F

    move-result p2

    invoke-virtual {p0, p2}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->setAspectRatio(F)V

    .line 94
    invoke-virtual {p1}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->build()Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->setHierarchy(Lcom/facebook/drawee/interfaces/DraweeHierarchy;)V

    .line 95
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 96
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_1
    return-void
.end method

.method public setActualImageResource(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    const/4 v0, 0x0

    .line 174
    invoke-virtual {p0, p1, v0}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->setActualImageResource(ILjava/lang/Object;)V

    return-void
.end method

.method public setActualImageResource(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resourceId",
            "callerContext"
        }
    .end annotation

    .line 189
    invoke-static {p1}, Lcom/facebook/common/util/UriUtil;->getUriForResourceId(I)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->setImageURI(Landroid/net/Uri;Ljava/lang/Object;)V

    return-void
.end method

.method public setImageRequest(Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->mControllerBuilder:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 112
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setImageRequest(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->getController()Lcom/facebook/drawee/interfaces/DraweeController;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setOldController(Lcom/facebook/drawee/interfaces/DraweeController;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object p1

    .line 113
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 201
    invoke-super {p0, p1}, Lcom/facebook/drawee/view/DraweeView;->setImageResource(I)V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, p1, v0}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->setImageURI(Landroid/net/Uri;Ljava/lang/Object;)V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uri",
            "callerContext"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->mControllerBuilder:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 145
    invoke-virtual {v0, p2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setCallerContext(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p2

    .line 146
    invoke-virtual {p2, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->setUri(Landroid/net/Uri;)Lcom/facebook/drawee/interfaces/SimpleDraweeControllerBuilder;

    move-result-object p1

    .line 147
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->getController()Lcom/facebook/drawee/interfaces/DraweeController;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/facebook/drawee/interfaces/SimpleDraweeControllerBuilder;->setOldController(Lcom/facebook/drawee/interfaces/DraweeController;)Lcom/facebook/drawee/interfaces/SimpleDraweeControllerBuilder;

    move-result-object p1

    .line 148
    invoke-interface {p1}, Lcom/facebook/drawee/interfaces/SimpleDraweeControllerBuilder;->build()Lcom/facebook/drawee/interfaces/DraweeController;

    move-result-object p1

    .line 149
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    return-void
.end method

.method public setImageURI(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uriString"
        }
    .end annotation

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0, p1, v0}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->setImageURI(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setImageURI(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uriString",
            "callerContext"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 159
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 160
    :goto_0
    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->setImageURI(Landroid/net/Uri;Ljava/lang/Object;)V

    return-void
.end method
