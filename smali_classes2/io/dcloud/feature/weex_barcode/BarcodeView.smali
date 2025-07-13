.class public Lio/dcloud/feature/weex_barcode/BarcodeView;
.super Landroid/widget/AbsoluteLayout;
.source "BarcodeView.java"

# interfaces
.implements Lio/dcloud/feature/barcode2/decoding/IBarHandler;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# static fields
.field static final AZTEC:I = 0x3

.field private static final BEEP_VOLUME:F = 0.8f

.field static final CODABAR:I = 0x7

.field static final CODE128:I = 0xa

.field static final CODE39:I = 0x8

.field static final CODE93:I = 0x9

.field static final DATAMATRIX:I = 0x4

.field static final EAN13:I = 0x1

.field static final EAN8:I = 0x2

.field private static final ID_ADD_VIEW:I = 0xc9

.field private static final ID_START_SCAN:I = 0xcb

.field private static final ID_UPDATE_VIEW:I = 0xca

.field static final ITF:I = 0xb

.field static final MAXICODE:I = 0xc

.field static final PDF417:I = 0xd

.field static final QR:I = 0x0

.field static final RSS14:I = 0xe

.field static final RSSEXPANDED:I = 0xf

.field static final UNKOWN:I = -0x3e8

.field static final UPCA:I = 0x5

.field static final UPCE:I = 0x6

.field private static final VIBRATE_DURATION:J = 0xc8L


# instance fields
.field public autoDecodeCharset:Z

.field private final beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private characterSet:Ljava/lang/String;

.field private component:Lcom/taobao/weex/ui/component/WXComponent;

.field private context:Landroid/content/Context;

.field private decodeFormats:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/dcloud/zxing2/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field public errorMsg:Ljava/lang/String;

.field private handler:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;

.field private hasSurface:Z

.field private inactivityTimer:Lio/dcloud/feature/barcode2/decoding/InactivityTimer;

.field private isCancelScan:Z

.field private isSurfaceAvaliable:Z

.field private isVerticalScreen:Z

.field private lastBiptmap:Landroid/graphics/Bitmap;

.field private mConserve:Z

.field private mFilename:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field private mInstance:Lcom/taobao/weex/WXSDKInstance;

.field mOrientationState:I

.field private mRunning:Z

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private nopermission:Z

.field private playBeep:Z

.field private surfaceView:Landroid/view/TextureView;

.field private vibrate:Z

.field private viewHeight:I

.field private viewWidth:I

.field private viewfinderView:Lio/dcloud/feature/barcode2/view/ViewfinderView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/WXSDKInstance;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "component",
            "mInstance"
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->hasSurface:Z

    const/4 v1, 0x0

    .line 76
    iput-object v1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->errorMsg:Ljava/lang/String;

    .line 83
    iput-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mConserve:Z

    .line 93
    iput-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->isSurfaceAvaliable:Z

    .line 94
    iput-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->isVerticalScreen:Z

    .line 98
    iput-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->autoDecodeCharset:Z

    .line 102
    new-instance v1, Lio/dcloud/feature/weex_barcode/BarcodeView$1;

    invoke-direct {v1, p0}, Lio/dcloud/feature/weex_barcode/BarcodeView$1;-><init>(Lio/dcloud/feature/weex_barcode/BarcodeView;)V

    iput-object v1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mHandler:Landroid/os/Handler;

    .line 277
    iput-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->isCancelScan:Z

    .line 278
    iput-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mRunning:Z

    .line 726
    new-instance v1, Lio/dcloud/feature/weex_barcode/BarcodeView$5;

    invoke-direct {v1, p0}, Lio/dcloud/feature/weex_barcode/BarcodeView$5;-><init>(Lio/dcloud/feature/weex_barcode/BarcodeView;)V

    iput-object v1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 133
    iput-object p2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->component:Lcom/taobao/weex/ui/component/WXComponent;

    .line 134
    iput-object p3, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 135
    new-instance p2, Landroid/view/TextureView;

    invoke-direct {p2, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->surfaceView:Landroid/view/TextureView;

    .line 136
    new-instance p2, Lio/dcloud/feature/barcode2/view/ViewfinderView;

    invoke-direct {p2, p1, p0}, Lio/dcloud/feature/barcode2/view/ViewfinderView;-><init>(Landroid/content/Context;Lio/dcloud/feature/barcode2/decoding/IBarHandler;)V

    iput-object p2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewfinderView:Lio/dcloud/feature/barcode2/view/ViewfinderView;

    .line 137
    new-instance p2, Lio/dcloud/feature/barcode2/decoding/InactivityTimer;

    move-object p3, p1

    check-cast p3, Landroid/app/Activity;

    invoke-direct {p2, p3}, Lio/dcloud/feature/barcode2/decoding/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->inactivityTimer:Lio/dcloud/feature/barcode2/decoding/InactivityTimer;

    .line 138
    iput-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->context:Landroid/content/Context;

    .line 139
    invoke-direct {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->saveOrientationState()V

    .line 140
    iget-object p2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->context:Landroid/content/Context;

    invoke-static {p2, v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->init(Landroid/content/Context;Z)V

    .line 141
    invoke-virtual {p3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getRotation()I

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_2

    if-eq p2, p3, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lio/dcloud/feature/barcode2/camera/CameraManager;->setHorizontalOrientation(Z)V

    .line 151
    iget-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 154
    :cond_1
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->setHorizontalOrientation(Z)V

    .line 155
    iget-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 145
    :cond_2
    iget-object p2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->context:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    const/4 v1, 0x7

    invoke-virtual {p2, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 146
    invoke-static {p1, p3}, Lio/dcloud/feature/barcode2/camera/CameraManager;->init(Landroid/content/Context;Z)V

    .line 147
    iput-boolean p3, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->isVerticalScreen:Z

    .line 158
    :goto_0
    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->onResume(Z)V

    .line 159
    iput-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->hasSurface:Z

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/weex_barcode/BarcodeView;)Landroid/view/TextureView;
    .locals 0

    .line 63
    iget-object p0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->surfaceView:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$100(Lio/dcloud/feature/weex_barcode/BarcodeView;)Lio/dcloud/feature/barcode2/view/ViewfinderView;
    .locals 0

    .line 63
    iget-object p0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewfinderView:Lio/dcloud/feature/barcode2/view/ViewfinderView;

    return-object p0
.end method

.method static synthetic access$200(Lio/dcloud/feature/weex_barcode/BarcodeView;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->startP()V

    return-void
.end method

.method static synthetic access$300(Lio/dcloud/feature/weex_barcode/BarcodeView;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->addBarcodeView()V

    return-void
.end method

.method static synthetic access$400(Lio/dcloud/feature/weex_barcode/BarcodeView;)Landroid/widget/AbsoluteLayout$LayoutParams;
    .locals 0

    .line 63
    invoke-direct {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->setLayoutParams()Landroid/widget/AbsoluteLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lio/dcloud/feature/weex_barcode/BarcodeView;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->isSurfaceAvaliable:Z

    return p0
.end method

.method static synthetic access$602(Lio/dcloud/feature/weex_barcode/BarcodeView;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->nopermission:Z

    return p1
.end method

.method private addBarcodeView()V
    .locals 3

    .line 201
    invoke-direct {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->setLayoutParams()Landroid/widget/AbsoluteLayout$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 203
    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0xc9

    .line 204
    iput v2, v1, Landroid/os/Message;->what:I

    .line 205
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private byte2bitmap([BLandroid/hardware/Camera;)Landroid/graphics/Bitmap;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "mCamera"
        }
    .end annotation

    const/4 v0, 0x0

    .line 339
    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p2

    .line 340
    new-instance v7, Landroid/graphics/YuvImage;

    const/16 v3, 0x11

    iget v4, p2, Landroid/hardware/Camera$Size;->width:I

    iget v5, p2, Landroid/hardware/Camera$Size;->height:I

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 341
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 342
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p2, Landroid/hardware/Camera$Size;->width:I

    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 p2, 0x50

    invoke-virtual {v7, v1, p2, p1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 343
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-static {p2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 344
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 345
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    const/high16 p1, 0x42b40000    # 90.0f

    .line 346
    invoke-virtual {v9, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 347
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    move-object v4, v0

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 349
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private cancel()V
    .locals 1

    .line 695
    iget-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mRunning:Z

    if-eqz v0, :cond_1

    .line 696
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->handler:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->stopDecode()V

    .line 698
    :cond_0
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->getViewfinderView()Lio/dcloud/feature/barcode2/view/ViewfinderView;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/view/ViewfinderView;->stopUpdateScreenTimer()V

    const/4 v0, 0x0

    .line 699
    iput-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mRunning:Z

    :cond_1
    return-void
.end method

.method private convertNumToBarcodeFormat(I)Lcom/dcloud/zxing2/BarcodeFormat;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "num"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 609
    :pswitch_0
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->RSS_EXPANDED:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_0

    .line 605
    :pswitch_1
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->RSS_14:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_0

    .line 601
    :pswitch_2
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->PDF_417:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_0

    .line 597
    :pswitch_3
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->MAXICODE:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_0

    .line 593
    :pswitch_4
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->ITF:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_0

    .line 589
    :pswitch_5
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->CODE_128:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_0

    .line 585
    :pswitch_6
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->CODE_93:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_0

    .line 581
    :pswitch_7
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->CODE_39:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_0

    .line 577
    :pswitch_8
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->CODABAR:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_0

    .line 573
    :pswitch_9
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->UPC_E:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_0

    .line 569
    :pswitch_a
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->UPC_A:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_0

    .line 565
    :pswitch_b
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->DATA_MATRIX:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_0

    .line 561
    :pswitch_c
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->AZTEC:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_0

    .line 557
    :pswitch_d
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->EAN_8:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_0

    .line 553
    :pswitch_e
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->EAN_13:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_0

    .line 549
    :pswitch_f
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->QR_CODE:Lcom/dcloud/zxing2/BarcodeFormat;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
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

.method private convertTypestrToNum(Lcom/dcloud/zxing2/BarcodeFormat;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 617
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->QR_CODE:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 619
    :cond_0
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->EAN_13:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 621
    :cond_1
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->EAN_8:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    return p1

    .line 623
    :cond_2
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->AZTEC:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x3

    return p1

    .line 625
    :cond_3
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->DATA_MATRIX:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p1, v0, :cond_4

    const/4 p1, 0x4

    return p1

    .line 627
    :cond_4
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->UPC_A:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p1, v0, :cond_5

    const/4 p1, 0x5

    return p1

    .line 629
    :cond_5
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->UPC_E:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x6

    return p1

    .line 631
    :cond_6
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->CODABAR:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p1, v0, :cond_7

    const/4 p1, 0x7

    return p1

    .line 633
    :cond_7
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->CODE_39:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p1, v0, :cond_8

    const/16 p1, 0x8

    return p1

    .line 635
    :cond_8
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->CODE_93:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p1, v0, :cond_9

    const/16 p1, 0x9

    return p1

    .line 637
    :cond_9
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->CODE_128:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p1, v0, :cond_a

    const/16 p1, 0xa

    return p1

    .line 639
    :cond_a
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->ITF:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p1, v0, :cond_b

    const/16 p1, 0xb

    return p1

    .line 641
    :cond_b
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->MAXICODE:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p1, v0, :cond_c

    const/16 p1, 0xc

    return p1

    .line 643
    :cond_c
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->PDF_417:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p1, v0, :cond_d

    const/16 p1, 0xd

    return p1

    .line 645
    :cond_d
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->RSS_14:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p1, v0, :cond_e

    const/16 p1, 0xe

    return p1

    .line 647
    :cond_e
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->RSS_EXPANDED:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p1, v0, :cond_f

    const/16 p1, 0xf

    return p1

    :cond_f
    const/16 p1, -0x3e8

    return p1
.end method

.method private fireEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 833
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->containsEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 834
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "detail"

    .line 835
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    iget-object p2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p2, p1, v0}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private initBeepSound()V
    .locals 7

    .line 704
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 705
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 706
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 707
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 708
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 711
    :try_start_0
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "res/dcloud_beep.ogg"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 712
    iget-object v1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 713
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    .line 712
    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 714
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 715
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mediaPlayer:Landroid/media/MediaPlayer;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 716
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 718
    iput-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    :goto_0
    return-void
.end method

.method private initCamera()V
    .locals 4

    .line 211
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->surfaceView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 213
    :try_start_0
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->openDriver(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->handler:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;

    iget-object v1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->decodeFormats:Ljava/util/Vector;

    iget-object v2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->characterSet:Ljava/lang/String;

    iget-boolean v3, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->autoDecodeCharset:Z

    invoke-direct {v0, p0, v1, v2, v3}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;-><init>(Lio/dcloud/feature/barcode2/decoding/IBarHandler;Ljava/util/Vector;Ljava/lang/String;Z)V

    iput-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->handler:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;

    .line 220
    iget-boolean v1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mRunning:Z

    if-eqz v1, :cond_1

    .line 221
    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->restartPreviewAndDecode()V

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->resume()V

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 215
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method private playBeepSoundAndVibrate()V
    .locals 3

    .line 735
    iget-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->playBeep:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 736
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 738
    :cond_0
    iget-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->vibrate:Z

    if-eqz v0, :cond_1

    .line 740
    :try_start_0
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->context:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0xc8

    .line 741
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 743
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private resumeOrientationState()V
    .locals 2

    .line 169
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget v1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mOrientationState:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method private saveOrientationState()V
    .locals 1

    .line 165
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mOrientationState:I

    return-void
.end method

.method private setLayoutParams()Landroid/widget/AbsoluteLayout$LayoutParams;
    .locals 6

    .line 440
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lio/dcloud/feature/barcode2/camera/CameraManager;->sScreenWidth:I

    .line 441
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lio/dcloud/feature/barcode2/camera/CameraManager;->sScreenAllHeight:I

    .line 442
    invoke-static {}, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->getInstance()Lio/dcloud/feature/barcode2/view/DetectorViewConfig;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->gatherRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    .line 443
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 444
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 445
    iget v2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewWidth:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 446
    iget v2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewHeight:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 450
    iget-boolean v2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->isVerticalScreen:Z

    if-eqz v2, :cond_0

    .line 451
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v2, v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->getCR(II)Landroid/graphics/Point;

    move-result-object v0

    goto :goto_0

    .line 453
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v2, v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->getCR(II)Landroid/graphics/Point;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 455
    new-instance v0, Landroid/graphics/Point;

    iget v2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewWidth:I

    iget v3, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewHeight:I

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 462
    :cond_1
    iget-boolean v2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->isVerticalScreen:Z

    if-eqz v2, :cond_3

    .line 463
    iget v2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewWidth:I

    .line 464
    iget v3, v0, Landroid/graphics/Point;->x:I

    mul-int v3, v3, v2

    iget v4, v0, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v4

    .line 466
    iget v4, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewHeight:I

    if-ge v3, v4, :cond_2

    .line 468
    iget v2, v0, Landroid/graphics/Point;->y:I

    mul-int v2, v2, v4

    iget v0, v0, Landroid/graphics/Point;->x:I

    div-int/2addr v2, v0

    .line 469
    iget v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewWidth:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 470
    sput v0, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->detectorRectOffestLeft:I

    .line 471
    sput v1, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->detectorRectOffestTop:I

    goto :goto_1

    .line 473
    :cond_2
    iget v3, v0, Landroid/graphics/Point;->x:I

    mul-int v3, v3, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    div-int v4, v3, v0

    .line 474
    iget v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewHeight:I

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    .line 475
    sput v0, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->detectorRectOffestTop:I

    .line 476
    sput v1, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->detectorRectOffestLeft:I

    goto :goto_2

    .line 479
    :cond_3
    iget v4, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewHeight:I

    .line 480
    iget v2, v0, Landroid/graphics/Point;->x:I

    mul-int v2, v2, v4

    iget v3, v0, Landroid/graphics/Point;->y:I

    div-int/2addr v2, v3

    .line 482
    iget v3, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewWidth:I

    if-ge v2, v3, :cond_4

    .line 484
    iget v2, v0, Landroid/graphics/Point;->y:I

    mul-int v2, v2, v3

    iget v0, v0, Landroid/graphics/Point;->x:I

    div-int v4, v2, v0

    .line 485
    iget v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewHeight:I

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    .line 486
    sput v0, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->detectorRectOffestTop:I

    .line 487
    sput v1, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->detectorRectOffestLeft:I

    move v2, v3

    goto :goto_2

    .line 489
    :cond_4
    iget v2, v0, Landroid/graphics/Point;->x:I

    mul-int v2, v2, v4

    iget v0, v0, Landroid/graphics/Point;->y:I

    div-int/2addr v2, v0

    .line 490
    iget v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewWidth:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 491
    sput v0, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->detectorRectOffestLeft:I

    .line 492
    sput v1, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->detectorRectOffestTop:I

    :goto_1
    move v1, v0

    const/4 v0, 0x0

    .line 495
    :goto_2
    new-instance v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v3, v2, v4, v1, v0}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 496
    invoke-static {}, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->getInstance()Lio/dcloud/feature/barcode2/view/DetectorViewConfig;

    move-result-object v5

    invoke-virtual {v5, v1, v0, v2, v4}, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->initSurfaceViewRect(IIII)V

    return-object v3
.end method

.method private startP()V
    .locals 3

    .line 388
    invoke-direct {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->initCamera()V

    .line 390
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->decodeFormats:Ljava/util/Vector;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 391
    invoke-virtual {p0, v1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->initDecodeFormats(Lcom/alibaba/fastjson/JSONArray;)V

    .line 393
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->errorMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 394
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x8

    .line 395
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "code"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iget-object v1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->errorMsg:Ljava/lang/String;

    const-string v2, "message"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    const-string v2, "fail"

    .line 397
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "error"

    .line 398
    invoke-direct {p0, v1, v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 401
    :cond_1
    iget-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mRunning:Z

    if-nez v0, :cond_5

    .line 402
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->getViewfinderView()Lio/dcloud/feature/barcode2/view/ViewfinderView;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/view/ViewfinderView;->startUpdateScreenTimer()V

    .line 403
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->handler:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 404
    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->restartPreviewAndDecode()V

    goto :goto_0

    .line 406
    :cond_2
    invoke-virtual {p0, v2}, Lio/dcloud/feature/weex_barcode/BarcodeView;->onResume(Z)V

    .line 407
    :goto_0
    iget-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->isCancelScan:Z

    if-eqz v0, :cond_4

    .line 408
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->surfaceView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 409
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->lastBiptmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 410
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->lastBiptmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 411
    iput-object v1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->lastBiptmap:Landroid/graphics/Bitmap;

    .line 413
    :cond_3
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->clearLastBitmapData()V

    .line 414
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->surfaceView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->postInvalidate()V

    .line 415
    invoke-direct {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->initCamera()V

    :cond_4
    const/4 v0, 0x1

    .line 417
    iput-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mRunning:Z

    .line 418
    iput-boolean v2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->isCancelScan:Z

    :cond_5
    return-void
.end method


# virtual methods
.method public autoFocus()V
    .locals 1

    .line 660
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->handler:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->autoFocus()V

    return-void
.end method

.method public cancelScan()V
    .locals 2

    .line 282
    iget-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mRunning:Z

    if-eqz v0, :cond_2

    .line 283
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->handler:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->quitSynchronously()V

    const/4 v0, 0x0

    .line 285
    iput-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->handler:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;

    .line 287
    :cond_0
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->getViewfinderView()Lio/dcloud/feature/barcode2/view/ViewfinderView;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/view/ViewfinderView;->stopUpdateScreenTimer()V

    .line 288
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->removeAutoFocus()V

    .line 289
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->stopPreview()V

    .line 290
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->getLastBitmapData()[B

    move-result-object v0

    .line 291
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/feature/barcode2/camera/CameraManager;->getCameraHandler()Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 293
    invoke-direct {p0, v0, v1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->byte2bitmap([BLandroid/hardware/Camera;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->lastBiptmap:Landroid/graphics/Bitmap;

    .line 294
    :cond_1
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->closeDriver()V

    const/4 v0, 0x0

    .line 295
    iput-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mRunning:Z

    const/4 v0, 0x1

    .line 296
    iput-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->isCancelScan:Z

    :cond_2
    return-void
.end method

.method public closeScan()V
    .locals 2

    .line 301
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->onPause()V

    .line 302
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->closeDriver()V

    .line 303
    invoke-static {}, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->clearData()V

    const/4 v0, 0x0

    .line 304
    iput-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->surfaceView:Landroid/view/TextureView;

    .line 305
    iget-object v1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->lastBiptmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 306
    iget-object v1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->lastBiptmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 307
    iput-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->lastBiptmap:Landroid/graphics/Bitmap;

    .line 309
    :cond_0
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->clearLastBitmapData()V

    .line 313
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public drawViewfinder()V
    .locals 1

    .line 750
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewfinderView:Lio/dcloud/feature/barcode2/view/ViewfinderView;

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/view/ViewfinderView;->drawViewfinder()V

    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 760
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->handler:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;

    return-object v0
.end method

.method public getViewfinderView()Lio/dcloud/feature/barcode2/view/ViewfinderView;
    .locals 1

    .line 655
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewfinderView:Lio/dcloud/feature/barcode2/view/ViewfinderView;

    return-object v0
.end method

.method public handleDecode(Lcom/dcloud/zxing2/Result;Landroid/graphics/Bitmap;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "barcode"
        }
    .end annotation

    .line 665
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->inactivityTimer:Lio/dcloud/feature/barcode2/decoding/InactivityTimer;

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/decoding/InactivityTimer;->onActivity()V

    .line 666
    invoke-direct {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->playBeepSoundAndVibrate()V

    .line 669
    iget-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mConserve:Z

    if-eqz v0, :cond_1

    .line 670
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mFilename:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 671
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mFilename:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isDeviceRootDir(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mFilename:Ljava/lang/String;

    const-string v1, "_doc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mFilename:Ljava/lang/String;

    .line 675
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    iget-object v1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mFilename:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "image"

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/WXSDKInstance;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 676
    invoke-static {p2, v0}, Lio/dcloud/common/util/PdrUtil;->saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 678
    :goto_0
    invoke-virtual {p1}, Lcom/dcloud/zxing2/Result;->getBarcodeFormat()Lcom/dcloud/zxing2/BarcodeFormat;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->convertTypestrToNum(Lcom/dcloud/zxing2/BarcodeFormat;)I

    move-result v1

    .line 680
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 681
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "code"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    invoke-virtual {p1}, Lcom/dcloud/zxing2/Result;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v3, "message"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    .line 683
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "file"

    .line 684
    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p2, "type"

    const-string v0, "success"

    .line 686
    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    iget-object p1, p1, Lcom/dcloud/zxing2/Result;->textCharset:Ljava/lang/String;

    const-string p2, "charSet"

    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "marked"

    .line 689
    invoke-direct {p0, p1, v2}, Lio/dcloud/feature/weex_barcode/BarcodeView;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 691
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->cancelScan()V

    return-void
.end method

.method public initBarcodeView(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 173
    iput p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewWidth:I

    .line 174
    iput p2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewHeight:I

    .line 175
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object p1

    new-instance p2, Lio/dcloud/feature/weex_barcode/BarcodeView$2;

    invoke-direct {p2, p0}, Lio/dcloud/feature/weex_barcode/BarcodeView$2;-><init>(Lio/dcloud/feature/weex_barcode/BarcodeView;)V

    invoke-virtual {p1, p2}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initDecodeFormats(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filters"
        }
    .end annotation

    .line 506
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->decodeFormats:Ljava/util/Vector;

    if-eqz p1, :cond_2

    .line 507
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 512
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    const/4 v2, -0x1

    .line 516
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONArray;->getInteger(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 518
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONException;->printStackTrace()V

    const/4 v3, -0x1

    :goto_1
    if-eq v3, v2, :cond_1

    .line 521
    iget-object v2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->decodeFormats:Ljava/util/Vector;

    invoke-direct {p0, v3}, Lio/dcloud/feature/weex_barcode/BarcodeView;->convertNumToBarcodeFormat(I)Lcom/dcloud/zxing2/BarcodeFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 508
    :cond_2
    :goto_2
    iget-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->decodeFormats:Ljava/util/Vector;

    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->EAN_13:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 509
    iget-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->decodeFormats:Ljava/util/Vector;

    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->EAN_8:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 510
    iget-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->decodeFormats:Ljava/util/Vector;

    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->QR_CODE:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 755
    iget-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mRunning:Z

    return v0
.end method

.method public onDestory()V
    .locals 1

    .line 329
    invoke-direct {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->resumeOrientationState()V

    .line 330
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->inactivityTimer:Lio/dcloud/feature/barcode2/decoding/InactivityTimer;

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/decoding/InactivityTimer;->shutdown()V

    const/4 v0, 0x0

    .line 331
    iput-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->hasSurface:Z

    const/4 v0, 0x0

    .line 332
    iput-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->decodeFormats:Ljava/util/Vector;

    .line 333
    iput-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->characterSet:Ljava/lang/String;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 792
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 793
    iget-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->nopermission:Z

    if-eqz v0, :cond_4

    .line 794
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    const/4 v1, -0x1

    .line 795
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x41900000    # 18.0f

    .line 796
    iget-object v2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v2}, Lio/dcloud/common/util/PdrUtil;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 797
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 798
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 799
    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 800
    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 801
    iget v3, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    div-float/2addr v2, v4

    sub-float/2addr v3, v2

    div-float/2addr v1, v4

    sub-float/2addr v3, v1

    float-to-int v1, v3

    .line 802
    iget v2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewWidth:I

    div-int/lit8 v2, v2, 0x2

    .line 805
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    const/4 v5, 0x0

    if-lt v3, v4, :cond_0

    .line 806
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 807
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 809
    :cond_0
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 810
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v4

    :goto_0
    const-string v5, "en"

    .line 812
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    int-to-float v2, v2

    int-to-float v1, v1

    const-string v3, "Need camera permission"

    .line 813
    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    const-string v5, "ja"

    .line 814
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    int-to-float v2, v2

    int-to-float v1, v1

    const-string v3, "\u30ab\u30e1\u30e9\u6a29\u9650\u304c\u3042\u308a\u307e\u305b\u3093"

    .line 815
    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    const-string v5, "zh"

    .line 818
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "Hant"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    int-to-float v2, v2

    int-to-float v1, v1

    const-string v3, "\u672a\u7372\u5f97\u76f8\u6a5f\u8a31\u53ef\u6b0a"

    .line 820
    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    int-to-float v2, v2

    int-to-float v1, v1

    const-string v3, "\u672a\u83b7\u5f97\u76f8\u673a\u6743\u9650"

    .line 823
    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 317
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->handler:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->quitSynchronously()V

    const/4 v0, 0x0

    .line 319
    iput-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->handler:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;

    .line 321
    :cond_0
    iget-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->nopermission:Z

    if-nez v0, :cond_1

    .line 322
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->closeDriver()V

    .line 323
    :cond_1
    iget-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mRunning:Z

    .line 324
    invoke-direct {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->cancel()V

    .line 325
    iput-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mRunning:Z

    return-void
.end method

.method public onResume(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSysEvent"
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->lastBiptmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->isCancelScan:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 424
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->surfaceView:Landroid/view/TextureView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->lastBiptmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 425
    :cond_0
    iget-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->hasSurface:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 428
    :cond_1
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->surfaceView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 429
    :goto_0
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 430
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    .line 431
    iput-boolean v2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->playBeep:Z

    .line 432
    :cond_2
    invoke-direct {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->initBeepSound()V

    if-eqz p1, :cond_3

    .line 433
    iget-boolean p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mRunning:Z

    if-eqz p1, :cond_3

    .line 434
    iput-boolean v2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mRunning:Z

    .line 435
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->start()V

    :cond_3
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "surface",
            "width",
            "height"
        }
    .end annotation

    const/4 p1, 0x1

    .line 765
    iput-boolean p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->isSurfaceAvaliable:Z

    .line 766
    iget-boolean p2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->hasSurface:Z

    if-nez p2, :cond_0

    .line 767
    iput-boolean p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->hasSurface:Z

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    const/4 p1, 0x0

    .line 781
    iput-boolean p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->hasSurface:Z

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "surface",
            "width",
            "height"
        }
    .end annotation

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    return-void
.end method

.method public setAutoDecodeCharset(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoDecodeCharsetParam"
        }
    .end annotation

    .line 238
    iput-boolean p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->autoDecodeCharset:Z

    return-void
.end method

.method public setAutoZoom(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isAutoZoomParam"
        }
    .end annotation

    .line 243
    sput-boolean p1, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->isAutoZoom:Z

    return-void
.end method

.method public setBackground(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    sget p1, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->laserColor:I

    .line 249
    :goto_0
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->setBackgroundColor(I)V

    return-void
.end method

.method public setConserve(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mConserve"
        }
    .end annotation

    .line 266
    iput-boolean p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mConserve:Z

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mFilename"
        }
    .end annotation

    .line 270
    iput-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mFilename:Ljava/lang/String;

    return-void
.end method

.method public setFlash(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 274
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/dcloud/feature/barcode2/camera/CameraManager;->setFlashlight(Z)V

    return-void
.end method

.method public setFrameColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    sget p1, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->laserColor:I

    .line 230
    :goto_0
    sput p1, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->cornerColor:I

    return-void
.end method

.method public setPlayBeep(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playBeep"
        }
    .end annotation

    .line 258
    iput-boolean p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->playBeep:Z

    return-void
.end method

.method public setScanBarColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    sget p1, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->laserColor:I

    .line 254
    :goto_0
    sput p1, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->laserColor:I

    return-void
.end method

.method public setVibrate(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vibrate"
        }
    .end annotation

    .line 262
    iput-boolean p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->vibrate:Z

    return-void
.end method

.method public start()V
    .locals 3

    .line 356
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const-string v1, "android.permission.CAMERA"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/dcloud/feature/weex_barcode/BarcodeView$4;

    invoke-direct {v2, p0}, Lio/dcloud/feature/weex_barcode/BarcodeView$4;-><init>(Lio/dcloud/feature/weex_barcode/BarcodeView;)V

    invoke-static {v0, v1, v2}, Lio/dcloud/common/adapter/util/PermissionUtil;->useSystemPermissions(Landroid/app/Activity;[Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    return-void
.end method

.method public updateStyles(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewWidth",
            "viewHeight"
        }
    .end annotation

    .line 184
    iget v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewHeight:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewWidth:I

    if-ne v0, p1, :cond_0

    return-void

    .line 185
    :cond_0
    iput p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewWidth:I

    .line 186
    iput p2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewHeight:I

    .line 187
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object p1

    new-instance p2, Lio/dcloud/feature/weex_barcode/BarcodeView$3;

    invoke-direct {p2, p0}, Lio/dcloud/feature/weex_barcode/BarcodeView$3;-><init>(Lio/dcloud/feature/weex_barcode/BarcodeView;)V

    invoke-virtual {p1, p2}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method
