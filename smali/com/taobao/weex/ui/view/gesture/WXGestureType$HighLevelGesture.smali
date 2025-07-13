.class public final enum Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;
.super Ljava/lang/Enum;
.source "WXGestureType.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/gesture/WXGestureType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/gesture/WXGestureType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HighLevelGesture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;",
        ">;",
        "Lcom/taobao/weex/ui/view/gesture/WXGestureType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

.field public static final enum HORIZONTALPAN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

.field public static final enum LONG_PRESS:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

.field public static final enum PAN_END:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

.field public static final enum PAN_MOVE:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

.field public static final enum PAN_START:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

.field public static final enum SWIPE:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

.field public static final enum VERTICALPAN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;


# instance fields
.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 41
    new-instance v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    const-string v1, "SWIPE"

    const/4 v2, 0x0

    const-string v3, "swipe"

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->SWIPE:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    .line 42
    new-instance v1, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    const-string v3, "LONG_PRESS"

    const/4 v4, 0x1

    const-string v5, "longpress"

    invoke-direct {v1, v3, v4, v5}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->LONG_PRESS:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    .line 43
    new-instance v3, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    const-string v5, "PAN_START"

    const/4 v6, 0x2

    const-string v7, "panstart"

    invoke-direct {v3, v5, v6, v7}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->PAN_START:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    .line 44
    new-instance v5, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    const-string v7, "PAN_MOVE"

    const/4 v8, 0x3

    const-string v9, "panmove"

    invoke-direct {v5, v7, v8, v9}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->PAN_MOVE:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    .line 45
    new-instance v7, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    const-string v9, "PAN_END"

    const/4 v10, 0x4

    const-string v11, "panend"

    invoke-direct {v7, v9, v10, v11}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->PAN_END:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    .line 46
    new-instance v9, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    const-string v11, "HORIZONTALPAN"

    const/4 v12, 0x5

    const-string v13, "horizontalpan"

    invoke-direct {v9, v11, v12, v13}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->HORIZONTALPAN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    .line 47
    new-instance v11, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    const-string v13, "VERTICALPAN"

    const/4 v14, 0x6

    const-string/jumbo v15, "verticalpan"

    invoke-direct {v11, v13, v14, v15}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->VERTICALPAN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 40
    sput-object v13, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->$VALUES:[Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "description"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-object p3, p0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 40
    const-class v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    return-object p0
.end method

.method public static values()[Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;
    .locals 1

    .line 40
    sget-object v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->$VALUES:[Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    invoke-virtual {v0}, [Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->description:Ljava/lang/String;

    return-object v0
.end method
