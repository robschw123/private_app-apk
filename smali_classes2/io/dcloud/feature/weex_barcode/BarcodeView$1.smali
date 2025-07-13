.class Lio/dcloud/feature/weex_barcode/BarcodeView$1;
.super Landroid/os/Handler;
.source "BarcodeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex_barcode/BarcodeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex_barcode/BarcodeView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 106
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 107
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_2

    .line 108
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 109
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$000(Lio/dcloud/feature/weex_barcode/BarcodeView;)Landroid/view/TextureView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$000(Lio/dcloud/feature/weex_barcode/BarcodeView;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$000(Lio/dcloud/feature/weex_barcode/BarcodeView;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {v1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$000(Lio/dcloud/feature/weex_barcode/BarcodeView;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$000(Lio/dcloud/feature/weex_barcode/BarcodeView;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    :cond_1
    iget-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {p1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$100(Lio/dcloud/feature/weex_barcode/BarcodeView;)Lio/dcloud/feature/barcode2/view/ViewfinderView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 116
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xca

    if-ne v0, v1, :cond_3

    .line 117
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$000(Lio/dcloud/feature/weex_barcode/BarcodeView;)Landroid/view/TextureView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$000(Lio/dcloud/feature/weex_barcode/BarcodeView;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 118
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$000(Lio/dcloud/feature/weex_barcode/BarcodeView;)Landroid/view/TextureView;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {p1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$100(Lio/dcloud/feature/weex_barcode/BarcodeView;)Lio/dcloud/feature/barcode2/view/ViewfinderView;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/feature/barcode2/view/ViewfinderView;->drawViewfinder()V

    goto :goto_0

    .line 121
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_4

    .line 122
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$000(Lio/dcloud/feature/weex_barcode/BarcodeView;)Landroid/view/TextureView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$000(Lio/dcloud/feature/weex_barcode/BarcodeView;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 123
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$000(Lio/dcloud/feature/weex_barcode/BarcodeView;)Landroid/view/TextureView;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {p1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$100(Lio/dcloud/feature/weex_barcode/BarcodeView;)Lio/dcloud/feature/barcode2/view/ViewfinderView;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/feature/barcode2/view/ViewfinderView;->drawViewfinder()V

    .line 125
    iget-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {p1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$200(Lio/dcloud/feature/weex_barcode/BarcodeView;)V

    :cond_4
    :goto_0
    return-void
.end method
