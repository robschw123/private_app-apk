.class public Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;
.super Ljava/lang/Object;
.source "FrescoImageComponent.java"

# interfaces
.implements Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex/adapter/FrescoImageComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomScaleType"
.end annotation


# instance fields
.field private dxf:F

.field private dyf:F

.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;


# direct methods
.method public constructor <init>(Lio/dcloud/feature/weex/adapter/FrescoImageComponent;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "dxf",
            "dyf"
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;->this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput p2, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;->dxf:F

    .line 261
    iput p3, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;->dyf:F

    return-void
.end method


# virtual methods
.method public getTransform(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFF)Landroid/graphics/Matrix;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outTransform",
            "parentRect",
            "childWidth",
            "childHeight",
            "focusX",
            "focusY"
        }
    .end annotation

    int-to-float p3, p3

    .line 267
    iget-object p5, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;->this$0:Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    invoke-virtual {p5}, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p5

    invoke-virtual {p5}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p5

    invoke-static {p3, p5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p5

    div-float/2addr p5, p3

    .line 269
    iget p6, p2, Landroid/graphics/Rect;->left:I

    int-to-float p6, p6

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float p3, p3, p5

    sub-float/2addr v0, p3

    iget p3, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;->dxf:F

    mul-float v0, v0, p3

    add-float/2addr p6, v0

    .line 270
    iget p3, p2, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    int-to-float p4, p4

    mul-float p4, p4, p5

    sub-float/2addr p2, p4

    iget p4, p0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent$CustomScaleType;->dyf:F

    mul-float p2, p2, p4

    add-float/2addr p3, p2

    .line 272
    invoke-virtual {p1, p5, p5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 273
    invoke-virtual {p1, p6, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object p1
.end method
