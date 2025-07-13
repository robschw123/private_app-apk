.class public final enum Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;
.super Ljava/lang/Enum;
.source "HeatMapAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/map/HeatMapAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CosineCurve:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InBack:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InBounce:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InCirc:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InCubic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InCurve:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InElastic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InExpo:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InOutBack:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InOutBounce:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InOutCirc:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InOutCubic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InOutElastic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InOutExpo:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InOutQuad:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InOutQuart:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InOutQuint:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InOutSine:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InQuad:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InQuart:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InQuint:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InSine:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum Linear:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutBack:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutBounce:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutCirc:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutCubic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutCurve:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutElastic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutExpo:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutInBack:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutInBounce:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutInCirc:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutInCubic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutInElastic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutInExpo:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutInQuad:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutInQuart:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutInQuint:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutInSine:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutQuad:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutQuart:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutQuint:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutSine:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum SineCurve:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field private static final synthetic a:[Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 47

    .line 14
    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "Linear"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->Linear:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v3, "InQuad"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InQuad:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v3, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v5, "OutQuad"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutQuad:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    .line 15
    new-instance v5, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v7, "InOutQuad"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InOutQuad:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v7, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v9, "OutInQuad"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutInQuad:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v9, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v11, "InCubic"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InCubic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    .line 16
    new-instance v11, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v13, "OutCubic"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutCubic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v13, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v15, "InOutCubic"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InOutCubic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v15, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v14, "OutInCubic"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutInCubic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v14, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v12, "InQuart"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InQuart:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    .line 17
    new-instance v12, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v10, "OutQuart"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutQuart:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v10, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v8, "InOutQuart"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InOutQuart:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v8, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v6, "OutInQuart"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutInQuart:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v6, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v4, "InQuint"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InQuint:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v4, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v2, "OutQuint"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutQuint:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    .line 18
    new-instance v2, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v6, "InOutQuint"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InOutQuint:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v6, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v4, "OutInQuint"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutInQuint:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v4, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v2, "InSine"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InSine:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v2, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v6, "OutSine"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutSine:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v6, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v4, "InOutSine"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InOutSine:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v4, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v2, "OutInSine"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutInSine:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    .line 19
    new-instance v2, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v6, "InExpo"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InExpo:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v6, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v4, "OutExpo"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutExpo:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v2, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v4, "InOutExpo"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InOutExpo:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v4, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v6, "OutInExpo"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutInExpo:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v2, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v6, "InCirc"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InCirc:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v4, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v6, "OutCirc"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutCirc:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v2, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v6, "InOutCirc"

    move-object/from16 v29, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v4}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InOutCirc:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    .line 20
    new-instance v4, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v6, "OutInCirc"

    move-object/from16 v30, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v2}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutInCirc:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v2, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v6, "InElastic"

    move-object/from16 v31, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v4}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InElastic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v4, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v6, "OutElastic"

    move-object/from16 v32, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v2}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutElastic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v2, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v6, "InOutElastic"

    move-object/from16 v33, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v6, v4}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InOutElastic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v4, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v6, "OutInElastic"

    move-object/from16 v34, v2

    const/16 v2, 0x20

    invoke-direct {v4, v6, v2}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutInElastic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v2, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v6, "InBack"

    move-object/from16 v35, v4

    const/16 v4, 0x21

    invoke-direct {v2, v6, v4}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InBack:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v4, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v6, "OutBack"

    move-object/from16 v36, v2

    const/16 v2, 0x22

    invoke-direct {v4, v6, v2}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutBack:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v2, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v6, "InOutBack"

    move-object/from16 v37, v4

    const/16 v4, 0x23

    invoke-direct {v2, v6, v4}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InOutBack:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    .line 21
    new-instance v4, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v6, "OutInBack"

    move-object/from16 v38, v2

    const/16 v2, 0x24

    invoke-direct {v4, v6, v2}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutInBack:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v2, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v6, "InBounce"

    move-object/from16 v39, v4

    const/16 v4, 0x25

    invoke-direct {v2, v6, v4}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InBounce:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v4, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v6, "OutBounce"

    move-object/from16 v40, v2

    const/16 v2, 0x26

    invoke-direct {v4, v6, v2}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutBounce:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v2, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v6, "InOutBounce"

    move-object/from16 v41, v4

    const/16 v4, 0x27

    invoke-direct {v2, v6, v4}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InOutBounce:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v4, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v6, "OutInBounce"

    move-object/from16 v42, v2

    const/16 v2, 0x28

    invoke-direct {v4, v6, v2}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutInBounce:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v2, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v6, "InCurve"

    move-object/from16 v43, v4

    const/16 v4, 0x29

    invoke-direct {v2, v6, v4}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InCurve:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v4, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v6, "OutCurve"

    move-object/from16 v44, v2

    const/16 v2, 0x2a

    invoke-direct {v4, v6, v2}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutCurve:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v2, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v6, "SineCurve"

    move-object/from16 v45, v4

    const/16 v4, 0x2b

    invoke-direct {v2, v6, v4}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->SineCurve:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v4, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v6, "CosineCurve"

    move-object/from16 v46, v2

    const/16 v2, 0x2c

    invoke-direct {v4, v6, v2}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->CosineCurve:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/16 v2, 0x2d

    new-array v2, v2, [Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    const/16 v0, 0x11

    aput-object v20, v2, v0

    const/16 v0, 0x12

    aput-object v21, v2, v0

    const/16 v0, 0x13

    aput-object v22, v2, v0

    const/16 v0, 0x14

    aput-object v23, v2, v0

    const/16 v0, 0x15

    aput-object v24, v2, v0

    const/16 v0, 0x16

    aput-object v25, v2, v0

    const/16 v0, 0x17

    aput-object v26, v2, v0

    const/16 v0, 0x18

    aput-object v27, v2, v0

    const/16 v0, 0x19

    aput-object v28, v2, v0

    const/16 v0, 0x1a

    aput-object v29, v2, v0

    const/16 v0, 0x1b

    aput-object v30, v2, v0

    const/16 v0, 0x1c

    aput-object v31, v2, v0

    const/16 v0, 0x1d

    aput-object v32, v2, v0

    const/16 v0, 0x1e

    aput-object v33, v2, v0

    const/16 v0, 0x1f

    aput-object v34, v2, v0

    const/16 v0, 0x20

    aput-object v35, v2, v0

    const/16 v0, 0x21

    aput-object v36, v2, v0

    const/16 v0, 0x22

    aput-object v37, v2, v0

    const/16 v0, 0x23

    aput-object v38, v2, v0

    const/16 v0, 0x24

    aput-object v39, v2, v0

    const/16 v0, 0x25

    aput-object v40, v2, v0

    const/16 v0, 0x26

    aput-object v41, v2, v0

    const/16 v0, 0x27

    aput-object v42, v2, v0

    const/16 v0, 0x28

    aput-object v43, v2, v0

    const/16 v0, 0x29

    aput-object v44, v2, v0

    const/16 v0, 0x2a

    aput-object v45, v2, v0

    const/16 v0, 0x2b

    aput-object v46, v2, v0

    const/16 v0, 0x2c

    aput-object v4, v2, v0

    .line 13
    sput-object v2, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->a:[Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;
    .locals 1

    .line 13
    const-class v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    return-object p0
.end method

.method public static values()[Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;
    .locals 1

    .line 13
    sget-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->a:[Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    invoke-virtual {v0}, [Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    return-object v0
.end method
