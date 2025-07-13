.class public Lio/dcloud/feature/weex/extend/DCCoverImageComponent;
.super Lcom/taobao/weex/ui/component/WXImage;
.source "DCCoverImageComponent.java"


# instance fields
.field private mBitmapHeight:I

.field private mBitmapWidth:I


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instance",
            "parent",
            "basicComponentData"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXImage;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lio/dcloud/feature/weex/extend/DCCoverImageComponent;->mBitmapWidth:I

    .line 22
    iput p1, p0, Lio/dcloud/feature/weex/extend/DCCoverImageComponent;->mBitmapHeight:I

    .line 25
    new-instance p1, Lio/dcloud/feature/weex/extend/DCCoverImageComponent$1;

    invoke-direct {p1, p0}, Lio/dcloud/feature/weex/extend/DCCoverImageComponent$1;-><init>(Lio/dcloud/feature/weex/extend/DCCoverImageComponent;)V

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/extend/DCCoverImageComponent;->setContentBoxMeasurement(Lcom/taobao/weex/layout/ContentBoxMeasurement;)V

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/weex/extend/DCCoverImageComponent;)I
    .locals 0

    .line 19
    iget p0, p0, Lio/dcloud/feature/weex/extend/DCCoverImageComponent;->mBitmapWidth:I

    return p0
.end method

.method static synthetic access$100(Lio/dcloud/feature/weex/extend/DCCoverImageComponent;)I
    .locals 0

    .line 19
    iget p0, p0, Lio/dcloud/feature/weex/extend/DCCoverImageComponent;->mBitmapHeight:I

    return p0
.end method


# virtual methods
.method public synthetic lambda$onImageFinish$0$DCCoverImageComponent()V
    .locals 4

    .line 62
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCCoverImageComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCCoverImageComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lio/dcloud/feature/weex/extend/DCCoverImageComponent;->mBitmapWidth:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleWidth(Ljava/lang/String;Ljava/lang/String;F)V

    .line 63
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCCoverImageComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCCoverImageComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lio/dcloud/feature/weex/extend/DCCoverImageComponent;->mBitmapHeight:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleHeight(Ljava/lang/String;Ljava/lang/String;F)V

    return-void
.end method

.method public onImageFinish(ZLjava/util/Map;)V
    .locals 0
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

    .line 57
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXImage;->onImageFinish(ZLjava/util/Map;)V

    const-string p1, "width"

    .line 58
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXUtils;->getInt(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/weex/extend/DCCoverImageComponent;->mBitmapWidth:I

    const-string p1, "height"

    .line 59
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/taobao/weex/utils/WXUtils;->getInt(Ljava/lang/Object;)I

    move-result p2

    iput p2, p0, Lio/dcloud/feature/weex/extend/DCCoverImageComponent;->mBitmapHeight:I

    .line 60
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCCoverImageComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/taobao/weex/dom/WXStyle;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 61
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    new-instance p2, Lio/dcloud/feature/weex/extend/-$$Lambda$DCCoverImageComponent$MzThyCLWoH_u4k49z3UcVSkIsgc;

    invoke-direct {p2, p0}, Lio/dcloud/feature/weex/extend/-$$Lambda$DCCoverImageComponent$MzThyCLWoH_u4k49z3UcVSkIsgc;-><init>(Lio/dcloud/feature/weex/extend/DCCoverImageComponent;)V

    invoke-virtual {p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected setImage(Ljava/lang/String;Lcom/taobao/weex/common/WXImageStrategy;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rewritedStr",
            "imageStrategy"
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCCoverImageComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 52
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCCoverImageComponent;->getImageQuality()Lcom/taobao/weex/dom/WXImageQuality;

    move-result-object v1

    .line 51
    invoke-static {p1, v0, v1, p2}, Lio/dcloud/feature/weex/adapter/GlideImageAdapter;->setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lcom/taobao/weex/common/WXImageStrategy;)V

    return-void
.end method
