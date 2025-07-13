.class public Lio/dcloud/feature/weex/adapter/FrescoImageComponent;
.super Lcom/taobao/weex/ui/component/WXImage;
.source "FrescoImageComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;
    }
.end annotation


# instance fields
.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mResizeMode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "instance",
            "parent",
            "basicComponentData"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXImage;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    const-string p1, "scaleToFill"

    .line 51
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->mResizeMode:Ljava/lang/String;

    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->mBitmapWidth:I

    .line 54
    iput p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->mBitmapHeight:I

    .line 58
    new-instance p1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$1;

    invoke-direct {p1, p0, p3}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$1;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->setContentBoxMeasurement(Lcom/taobao/weex/layout/ContentBoxMeasurement;)V

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->mResizeMode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;)I
    .locals 0

    .line 49
    iget p0, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->mBitmapHeight:I

    return p0
.end method

.method static synthetic access$200(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;)I
    .locals 0

    .line 49
    iget p0, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->mBitmapWidth:I

    return p0
.end method

.method private setStyleHeight(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 234
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$2;

    invoke-direct {v1, p0, p1}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$2;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;F)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setStyleWidth(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    .line 245
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$3;

    invoke-direct {v1, p0, p1}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$3;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;F)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateBorderRadius()V
    .locals 6

    .line 287
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->getBorderDrawable(Landroid/view/View;)Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v0

    .line 288
    new-instance v1, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {v1}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    if-eqz v0, :cond_0

    .line 291
    new-instance v2, Landroid/graphics/RectF;

    invoke-static {p0}, Lcom/taobao/weex/utils/WXDomUtils;->getContentWidth(Lcom/taobao/weex/ui/component/WXComponent;)F

    move-result v3

    invoke-static {p0}, Lcom/taobao/weex/utils/WXDomUtils;->getContentHeight(Lcom/taobao/weex/ui/component/WXComponent;)F

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 292
    invoke-virtual {v0, v2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderInnerRadius(Landroid/graphics/RectF;)[F

    move-result-object v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 294
    fill-array-data v0, :array_0

    .line 296
    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/drawee/generic/RoundingParams;->setCornersRadii([F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 297
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex/adapter/FrescoImageView;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/adapter/FrescoImageView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;->setRoundingParams(Lcom/facebook/drawee/generic/RoundingParams;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "context"
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->initComponentHostView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 99
    new-instance v0, Lio/dcloud/feature/weex/adapter/FrescoImageView;

    invoke-direct {v0, p1}, Lio/dcloud/feature/weex/adapter/FrescoImageView;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {v0}, Lio/dcloud/feature/weex/adapter/FrescoImageView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;

    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_XY:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {p1, v1}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;->setActualImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V

    return-object v0
.end method

.method public onImageFinish(ZLjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "result",
            "extra"
        }
    .end annotation

    .line 204
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXImage;->onImageFinish(ZLjava/util/Map;)V

    if-eqz p2, :cond_2

    .line 206
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->mResizeMode:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "heightFix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "height"

    const-string v2, "width"

    if-nez v0, :cond_1

    const-string v0, "widthFix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->mBitmapWidth:I

    .line 209
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->mBitmapHeight:I

    .line 211
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->getLayoutWidth()F

    move-result p1

    iget p2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->mBitmapWidth:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 212
    iget p2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->mBitmapHeight:I

    int-to-float p2, p2

    mul-float p2, p2, p1

    .line 213
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->getLayoutHeight()F

    move-result p1

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_2

    .line 214
    invoke-direct {p0, p2}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->setStyleHeight(F)V

    goto :goto_0

    .line 219
    :cond_1
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->mBitmapWidth:I

    .line 220
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->mBitmapHeight:I

    .line 222
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->getLayoutHeight()F

    move-result p1

    iget p2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->mBitmapHeight:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 223
    iget p2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->mBitmapWidth:I

    int-to-float p2, p2

    mul-float p2, p2, p1

    .line 224
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->getLayoutWidth()F

    move-result p1

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_2

    .line 225
    invoke-direct {p0, p2}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->setStyleWidth(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setFadeAnim(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "fadeShow"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex/adapter/FrescoImageView;

    .line 109
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex/adapter/FrescoImageView;->setFadeShow(Z)V

    :cond_0
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "param"
        }
    .end annotation

    .line 115
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "resizeMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "resize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const/4 v0, 0x0

    packed-switch v2, :pswitch_data_0

    .line 135
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXImage;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 117
    :pswitch_0
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 119
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->setResizeMode(Ljava/lang/String;)V

    :cond_3
    return v1

    .line 129
    :pswitch_1
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 131
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->setResizeMode(Ljava/lang/String;)V

    :cond_4
    return v1

    .line 123
    :pswitch_2
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 125
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->setResizeMode(Ljava/lang/String;)V

    :cond_5
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x37b2634c -> :sswitch_2
        0x3339a3 -> :sswitch_1
        0x7a2cd077 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setResizeMode(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resizeMode"
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex/adapter/FrescoImageView;

    .line 142
    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_XY:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 143
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->mResizeMode:Ljava/lang/String;

    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "contain"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_1
    const-string v3, "bottom right"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_2
    const-string v3, "aspectFill"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_3
    const-string v3, "right"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_4
    const-string v3, "cover"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_5
    const-string v3, "left"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_6
    const-string v3, "top"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_7
    const-string v3, "bottom left"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_8
    const-string v3, "scaleToFill"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string v3, "top left"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_a
    const-string v3, "aspectFit"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_b
    const-string v3, "center"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_c
    const-string v3, "bottom"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_d
    const-string v3, "widthFix"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_e
    const-string v3, "heightFix"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_0

    :cond_e
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_f
    const-string v3, "top right"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_0

    :cond_f
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_10
    const-string v3, "stretch"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_0

    :cond_10
    const/4 v2, 0x0

    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 150
    :pswitch_0
    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_1

    .line 189
    :pswitch_1
    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;

    invoke-direct {v1, p0, p1, p1}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;FF)V

    goto :goto_1

    .line 162
    :pswitch_2
    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_1

    .line 177
    :pswitch_3
    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;

    invoke-direct {v1, p0, p1, v4}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;FF)V

    goto :goto_1

    .line 147
    :pswitch_4
    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_1

    .line 174
    :pswitch_5
    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;

    invoke-direct {v1, p0, v3, v4}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;FF)V

    goto :goto_1

    .line 165
    :pswitch_6
    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;

    invoke-direct {v1, p0, v4, v3}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;FF)V

    goto :goto_1

    .line 186
    :pswitch_7
    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;

    invoke-direct {v1, p0, v3, p1}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;FF)V

    goto :goto_1

    .line 156
    :pswitch_8
    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_XY:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_1

    .line 180
    :pswitch_9
    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;

    invoke-direct {v1, p0, v3, v3}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;FF)V

    goto :goto_1

    .line 159
    :pswitch_a
    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_1

    .line 171
    :pswitch_b
    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;

    invoke-direct {v1, p0, v4, v4}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;FF)V

    goto :goto_1

    .line 168
    :pswitch_c
    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;

    invoke-direct {v1, p0, v4, p1}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;FF)V

    goto :goto_1

    .line 193
    :pswitch_d
    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_1

    .line 183
    :pswitch_e
    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;

    invoke-direct {v1, p0, p1, v3}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;-><init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;FF)V

    goto :goto_1

    .line 153
    :pswitch_f
    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_XY:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 199
    :cond_11
    :goto_1
    invoke-virtual {v0}, Lio/dcloud/feature/weex/adapter/FrescoImageView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;

    invoke-virtual {p1, v1}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;->setActualImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x702b18fb -> :sswitch_10
        -0x648e7c6f -> :sswitch_f
        -0x603b6292 -> :sswitch_e
        -0x52ae3791 -> :sswitch_d
        -0x527265d5 -> :sswitch_c
        -0x514d33ab -> :sswitch_b
        -0x512e7f67 -> :sswitch_a
        -0x3d0fa40e -> :sswitch_9
        -0x2f85e778 -> :sswitch_8
        -0x27c76724 -> :sswitch_7
        0x1c155 -> :sswitch_6
        0x32a007 -> :sswitch_5
        0x5a753b7 -> :sswitch_4
        0x677c21c -> :sswitch_3
        0x2b5e91fb -> :sswitch_2
        0x2f30e3e7 -> :sswitch_1
        0x38b724d4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
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

.method public updateProperties(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "props"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXImage;->updateProperties(Ljava/util/Map;)V

    .line 282
    invoke-direct {p0}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->updateBorderRadius()V

    :cond_0
    return-void
.end method
