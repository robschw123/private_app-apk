.class public final enum Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;
.super Ljava/lang/Enum;
.source "GradientLineOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/map/GradientLineOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LineDirectionCross180"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FROM_EAST_TO_WEST:Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;

.field public static final enum FROM_WEST_TO_EAST:Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;

.field public static final enum NONE:Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;

.field private static final synthetic a:[Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 17
    new-instance v0, Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;->NONE:Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;

    .line 21
    new-instance v1, Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;

    const-string v3, "FROM_EAST_TO_WEST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;->FROM_EAST_TO_WEST:Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;

    .line 25
    new-instance v3, Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;

    const-string v5, "FROM_WEST_TO_EAST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;->FROM_WEST_TO_EAST:Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 13
    sput-object v5, Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;->a:[Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;

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

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;
    .locals 1

    .line 13
    const-class v0, Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;

    return-object p0
.end method

.method public static values()[Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;
    .locals 1

    .line 13
    sget-object v0, Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;->a:[Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;

    invoke-virtual {v0}, [Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;

    return-object v0
.end method
