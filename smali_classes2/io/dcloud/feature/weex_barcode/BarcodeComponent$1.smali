.class Lio/dcloud/feature/weex_barcode/BarcodeComponent$1;
.super Ljava/lang/Object;
.source "BarcodeComponent.java"

# interfaces
.implements Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex_barcode/BarcodeComponent;->setSutoStart(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex_barcode/BarcodeComponent;

.field final synthetic val$isstart:Z


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex_barcode/BarcodeComponent;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$isstart"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeComponent$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeComponent;

    iput-boolean p2, p0, Lio/dcloud/feature/weex_barcode/BarcodeComponent$1;->val$isstart:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowAnimationEnd()V
    .locals 2

    .line 98
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeComponent$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeComponent;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->access$002(Lio/dcloud/feature/weex_barcode/BarcodeComponent;Z)Z

    .line 99
    iget-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeComponent$1;->val$isstart:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeComponent$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeComponent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->start(Lcom/alibaba/fastjson/JSONObject;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeComponent$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeComponent;

    invoke-virtual {v0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/weex/WXSDKInstance;->removeFrameViewEventListener(Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;)V

    return-void
.end method
