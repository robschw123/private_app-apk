.class public final enum Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;
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
    name = "LowLevelGesture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;",
        ">;",
        "Lcom/taobao/weex/ui/view/gesture/WXGestureType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

.field public static final enum ACTION_CANCEL:Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

.field public static final enum ACTION_DOWN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

.field public static final enum ACTION_MOVE:Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

.field public static final enum ACTION_UP:Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;


# instance fields
.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 24
    new-instance v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    const-string v1, "ACTION_DOWN"

    const/4 v2, 0x0

    const-string v3, "touchstart"

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->ACTION_DOWN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    .line 25
    new-instance v1, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    const-string v3, "ACTION_MOVE"

    const/4 v4, 0x1

    const-string v5, "touchmove"

    invoke-direct {v1, v3, v4, v5}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->ACTION_MOVE:Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    .line 26
    new-instance v3, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    const-string v5, "ACTION_UP"

    const/4 v6, 0x2

    const-string v7, "touchend"

    invoke-direct {v3, v5, v6, v7}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->ACTION_UP:Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    .line 27
    new-instance v5, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    const-string v7, "ACTION_CANCEL"

    const/4 v8, 0x3

    const-string v9, "touchcancel"

    invoke-direct {v5, v7, v8, v9}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->ACTION_CANCEL:Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 23
    sput-object v7, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->$VALUES:[Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

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

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-object p3, p0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 23
    const-class v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    return-object p0
.end method

.method public static values()[Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;
    .locals 1

    .line 23
    sget-object v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->$VALUES:[Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    invoke-virtual {v0}, [Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->description:Ljava/lang/String;

    return-object v0
.end method
