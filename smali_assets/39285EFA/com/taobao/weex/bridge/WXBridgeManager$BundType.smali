.class public final enum Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
.super Ljava/lang/Enum;
.source "WXBridgeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BundType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/weex/bridge/WXBridgeManager$BundType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

.field public static final enum Others:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

.field public static final enum Rax:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

.field public static final enum Vue:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 224
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    const-string v1, "Vue"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Vue:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    .line 225
    new-instance v1, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    const-string v3, "Rax"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Rax:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    .line 226
    new-instance v3, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    const-string v5, "Others"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Others:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 223
    sput-object v5, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->$VALUES:[Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 223
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 223
    const-class v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    return-object p0
.end method

.method public static values()[Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
    .locals 1

    .line 223
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->$VALUES:[Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    invoke-virtual {v0}, [Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    return-object v0
.end method
