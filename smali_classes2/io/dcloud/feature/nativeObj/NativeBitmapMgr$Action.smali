.class public final enum Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/NativeBitmapMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum Bitmap:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum View:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum addEventListener:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum addImages:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum bitmapRecycle:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum clear:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum clearAnimation:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum currentImageIndex:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum drawBitmap:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum drawInput:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum drawRichText:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum drawText:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum evalWeexJS:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum getBitmapById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum getInputFocusById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum getInputValueById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum getItems:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum getViewById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum hide:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum interceptTouchEvent:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum isVisible:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum load:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum loadBase64Data:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum save:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum setImages:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum setInputFocusById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum setStyle:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum setTouchEventRect:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum show:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum startAnimation:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum toBase64Data:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum view_animate:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum view_clearRect:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum view_close:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum view_draw:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum view_drawRect:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum view_reset:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

.field public static final enum view_restore:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 40

    .line 1
    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v1, "Bitmap"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->Bitmap:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v3, "getItems"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->getItems:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v3, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v5, "getBitmapById"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->getBitmapById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v5, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v7, "clear"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->clear:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v7, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v9, "load"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->load:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v9, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v11, "loadBase64Data"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->loadBase64Data:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v11, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v13, "save"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->save:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v13, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v15, "toBase64Data"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->toBase64Data:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    .line 2
    new-instance v15, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v14, "View"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->View:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v14, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v12, "startAnimation"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->startAnimation:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v12, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v10, "clearAnimation"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->clearAnimation:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v10, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v8, "getViewById"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->getViewById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v8, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "drawBitmap"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->drawBitmap:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v6, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v4, "drawText"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->drawText:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v2, "evalWeexJS"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->evalWeexJS:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "drawRichText"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->drawRichText:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v6, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v4, "show"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->show:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v2, "hide"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->hide:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "setImages"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->setImages:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v6, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v4, "addImages"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->addImages:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    .line 3
    new-instance v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v2, "view_animate"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_animate:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "view_reset"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_reset:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v6, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v4, "view_restore"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_restore:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v4, "view_drawRect"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_drawRect:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "isVisible"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->isVisible:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "addEventListener"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->addEventListener:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "interceptTouchEvent"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->interceptTouchEvent:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    .line 4
    new-instance v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "setTouchEventRect"

    move-object/from16 v29, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->setTouchEventRect:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "bitmapRecycle"

    move-object/from16 v30, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->bitmapRecycle:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "setStyle"

    move-object/from16 v31, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->setStyle:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "view_clearRect"

    move-object/from16 v32, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_clearRect:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "view_draw"

    move-object/from16 v33, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v6, v4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_draw:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "view_close"

    move-object/from16 v34, v2

    const/16 v2, 0x20

    invoke-direct {v4, v6, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->view_close:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "currentImageIndex"

    move-object/from16 v35, v4

    const/16 v4, 0x21

    invoke-direct {v2, v6, v4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->currentImageIndex:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    .line 5
    new-instance v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "drawInput"

    move-object/from16 v36, v2

    const/16 v2, 0x22

    invoke-direct {v4, v6, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->drawInput:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "getInputValueById"

    move-object/from16 v37, v4

    const/16 v4, 0x23

    invoke-direct {v2, v6, v4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->getInputValueById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "getInputFocusById"

    move-object/from16 v38, v2

    const/16 v2, 0x24

    invoke-direct {v4, v6, v2}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->getInputFocusById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    new-instance v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const-string v6, "setInputFocusById"

    move-object/from16 v39, v4

    const/16 v4, 0x25

    invoke-direct {v2, v6, v4}, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->setInputFocusById:Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/16 v4, 0x26

    new-array v4, v4, [Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v16, v4, v0

    const/16 v0, 0xe

    aput-object v17, v4, v0

    const/16 v0, 0xf

    aput-object v18, v4, v0

    const/16 v0, 0x10

    aput-object v19, v4, v0

    const/16 v0, 0x11

    aput-object v20, v4, v0

    const/16 v0, 0x12

    aput-object v21, v4, v0

    const/16 v0, 0x13

    aput-object v22, v4, v0

    const/16 v0, 0x14

    aput-object v23, v4, v0

    const/16 v0, 0x15

    aput-object v24, v4, v0

    const/16 v0, 0x16

    aput-object v25, v4, v0

    const/16 v0, 0x17

    aput-object v26, v4, v0

    const/16 v0, 0x18

    aput-object v27, v4, v0

    const/16 v0, 0x19

    aput-object v28, v4, v0

    const/16 v0, 0x1a

    aput-object v29, v4, v0

    const/16 v0, 0x1b

    aput-object v30, v4, v0

    const/16 v0, 0x1c

    aput-object v31, v4, v0

    const/16 v0, 0x1d

    aput-object v32, v4, v0

    const/16 v0, 0x1e

    aput-object v33, v4, v0

    const/16 v0, 0x1f

    aput-object v34, v4, v0

    const/16 v0, 0x20

    aput-object v35, v4, v0

    const/16 v0, 0x21

    aput-object v36, v4, v0

    const/16 v0, 0x22

    aput-object v37, v4, v0

    const/16 v0, 0x23

    aput-object v38, v4, v0

    const/16 v0, 0x24

    aput-object v39, v4, v0

    const/16 v0, 0x25

    aput-object v2, v4, v0

    .line 6
    sput-object v4, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->$VALUES:[Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;
    .locals 1

    .line 1
    const-class v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    return-object p0
.end method

.method public static values()[Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;
    .locals 1

    .line 1
    sget-object v0, Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->$VALUES:[Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    invoke-virtual {v0}, [Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/feature/nativeObj/NativeBitmapMgr$Action;

    return-object v0
.end method
