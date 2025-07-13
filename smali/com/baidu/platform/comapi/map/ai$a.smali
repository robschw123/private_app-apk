.class public final enum Lcom/baidu/platform/comapi/map/ai$a;
.super Ljava/lang/Enum;
.source "RenderControlFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platform/comapi/map/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/platform/comapi/map/ai$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/platform/comapi/map/ai$a;

.field public static final enum b:Lcom/baidu/platform/comapi/map/ai$a;

.field public static final enum c:Lcom/baidu/platform/comapi/map/ai$a;

.field private static final synthetic d:[Lcom/baidu/platform/comapi/map/ai$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 14
    new-instance v0, Lcom/baidu/platform/comapi/map/ai$a;

    const-string v1, "OPENGL_ES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/platform/comapi/map/ai$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/platform/comapi/map/ai$a;->a:Lcom/baidu/platform/comapi/map/ai$a;

    .line 17
    new-instance v1, Lcom/baidu/platform/comapi/map/ai$a;

    const-string v3, "VULKAN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/baidu/platform/comapi/map/ai$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/baidu/platform/comapi/map/ai$a;->b:Lcom/baidu/platform/comapi/map/ai$a;

    .line 20
    new-instance v3, Lcom/baidu/platform/comapi/map/ai$a;

    const-string v5, "AUTO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/baidu/platform/comapi/map/ai$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/baidu/platform/comapi/map/ai$a;->c:Lcom/baidu/platform/comapi/map/ai$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/baidu/platform/comapi/map/ai$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 12
    sput-object v5, Lcom/baidu/platform/comapi/map/ai$a;->d:[Lcom/baidu/platform/comapi/map/ai$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/platform/comapi/map/ai$a;
    .locals 1

    .line 12
    const-class v0, Lcom/baidu/platform/comapi/map/ai$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/platform/comapi/map/ai$a;

    return-object p0
.end method

.method public static values()[Lcom/baidu/platform/comapi/map/ai$a;
    .locals 1

    .line 12
    sget-object v0, Lcom/baidu/platform/comapi/map/ai$a;->d:[Lcom/baidu/platform/comapi/map/ai$a;

    invoke-virtual {v0}, [Lcom/baidu/platform/comapi/map/ai$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/platform/comapi/map/ai$a;

    return-object v0
.end method
