.class Lio/dcloud/feature/weex_barcode/BarcodeView$4$1;
.super Ljava/lang/Object;
.source "BarcodeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex_barcode/BarcodeView$4;->onGranted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/feature/weex_barcode/BarcodeView$4;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex_barcode/BarcodeView$4;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 360
    iput-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$4$1;->this$1:Lio/dcloud/feature/weex_barcode/BarcodeView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 363
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$4$1;->this$1:Lio/dcloud/feature/weex_barcode/BarcodeView$4;

    iget-object v0, v0, Lio/dcloud/feature/weex_barcode/BarcodeView$4;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$500(Lio/dcloud/feature/weex_barcode/BarcodeView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$4$1;->this$1:Lio/dcloud/feature/weex_barcode/BarcodeView$4;

    iget-object v0, v0, Lio/dcloud/feature/weex_barcode/BarcodeView$4;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Lio/dcloud/feature/weex_barcode/BarcodeView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 366
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$4$1;->this$1:Lio/dcloud/feature/weex_barcode/BarcodeView$4;

    iget-object v0, v0, Lio/dcloud/feature/weex_barcode/BarcodeView$4;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$400(Lio/dcloud/feature/weex_barcode/BarcodeView;)Landroid/widget/AbsoluteLayout$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 368
    :cond_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0xcb

    .line 369
    iput v2, v1, Landroid/os/Message;->what:I

    .line 370
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 371
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$4$1;->this$1:Lio/dcloud/feature/weex_barcode/BarcodeView$4;

    iget-object v0, v0, Lio/dcloud/feature/weex_barcode/BarcodeView$4;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    iget-object v0, v0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method
