.class public final enum Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/DHInterface/ISysEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SysEventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

.field public static final enum AllSystemEvent:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

.field public static final enum onActivityResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

.field public static final enum onConfigurationChanged:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

.field public static final enum onCreateOptionMenu:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

.field public static final enum onDeviceNetChanged:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

.field public static final enum onKeyDown:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

.field public static final enum onKeyLongPress:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

.field public static final enum onKeyUp:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

.field public static final enum onKeyboardHide:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

.field public static final enum onKeyboardShow:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

.field public static final enum onNewIntent:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

.field public static final enum onPause:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

.field public static final enum onRequestPermissionsResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

.field public static final enum onResume:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

.field public static final enum onSaveInstanceState:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

.field public static final enum onSimStateChanged:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

.field public static final enum onSizeChanged:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

.field public static final enum onSplashclosed:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

.field public static final enum onStart:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

.field public static final enum onStop:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

.field public static final enum onWebAppBackground:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

.field public static final enum onWebAppForeground:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

.field public static final enum onWebAppPause:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

.field public static final enum onWebAppReStart:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

.field public static final enum onWebAppSaveState:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

.field public static final enum onWebAppSrcUpZip:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

.field public static final enum onWebAppStop:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

.field public static final enum onWebAppTrimMemory:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 30

    .line 1
    new-instance v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const-string v1, "AllSystemEvent"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->AllSystemEvent:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    .line 2
    new-instance v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const-string v3, "onActivityResult"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onActivityResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    .line 3
    new-instance v3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const-string v5, "onCreateOptionMenu"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onCreateOptionMenu:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    .line 4
    new-instance v5, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const-string v7, "onKeyDown"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyDown:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    .line 5
    new-instance v7, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const-string v9, "onKeyUp"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyUp:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    .line 6
    new-instance v9, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const-string v11, "onSaveInstanceState"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onSaveInstanceState:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    .line 7
    new-instance v11, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const-string v13, "onKeyLongPress"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyLongPress:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    .line 8
    new-instance v13, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const-string v15, "onStart"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onStart:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    .line 9
    new-instance v15, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const-string v14, "onResume"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onResume:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    .line 10
    new-instance v14, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const-string v12, "onWebAppStop"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppStop:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    .line 11
    new-instance v12, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const-string v10, "onWebAppReStart"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppReStart:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    .line 12
    new-instance v10, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const-string v8, "onWebAppSaveState"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppSaveState:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    .line 13
    new-instance v8, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const-string v6, "onWebAppTrimMemory"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppTrimMemory:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    .line 14
    new-instance v6, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const-string v4, "onWebAppBackground"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppBackground:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    .line 15
    new-instance v4, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const-string v2, "onWebAppPause"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppPause:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    .line 16
    new-instance v2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const-string v6, "onWebAppForeground"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppForeground:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    .line 17
    new-instance v6, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const-string v4, "onWebAppSrcUpZip"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppSrcUpZip:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    .line 18
    new-instance v4, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const-string v2, "onStop"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onStop:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    .line 19
    new-instance v2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const-string v6, "onPause"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onPause:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    .line 20
    new-instance v6, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const-string v4, "onDeviceNetChanged"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onDeviceNetChanged:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    .line 22
    new-instance v4, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const-string v2, "onSimStateChanged"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onSimStateChanged:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    .line 23
    new-instance v2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const-string v6, "onNewIntent"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onNewIntent:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    .line 24
    new-instance v6, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const-string v4, "onConfigurationChanged"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onConfigurationChanged:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    .line 25
    new-instance v2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const-string v4, "onKeyboardShow"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyboardShow:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    .line 26
    new-instance v4, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const-string v6, "onKeyboardHide"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyboardHide:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    .line 27
    new-instance v2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const-string v6, "onRequestPermissionsResult"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onRequestPermissionsResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    .line 28
    new-instance v4, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const-string v6, "onSplashclosed"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2}, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onSplashclosed:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    .line 29
    new-instance v2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const-string v6, "onSizeChanged"

    move-object/from16 v29, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v4}, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onSizeChanged:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const/16 v4, 0x1c

    new-array v4, v4, [Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

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

    aput-object v2, v4, v0

    .line 30
    sput-object v4, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->$VALUES:[Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;
    .locals 1

    .line 1
    const-class v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    return-object p0
.end method

.method public static values()[Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;
    .locals 1

    .line 1
    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->$VALUES:[Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {v0}, [Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    return-object v0
.end method
