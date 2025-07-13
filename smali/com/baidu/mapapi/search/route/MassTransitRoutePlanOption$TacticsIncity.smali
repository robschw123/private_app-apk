.class public final enum Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;
.super Ljava/lang/Enum;
.source "MassTransitRoutePlanOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TacticsIncity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ETRANS_LEAST_TIME:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;

.field public static final enum ETRANS_LEAST_TRANSFER:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;

.field public static final enum ETRANS_LEAST_WALK:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;

.field public static final enum ETRANS_NO_SUBWAY:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;

.field public static final enum ETRANS_SUBWAY_FIRST:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;

.field public static final enum ETRANS_SUGGEST:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;

.field private static final synthetic b:[Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 105
    new-instance v0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;

    const-string v1, "ETRANS_SUGGEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;->ETRANS_SUGGEST:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;

    .line 109
    new-instance v1, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;

    const-string v3, "ETRANS_LEAST_TRANSFER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;->ETRANS_LEAST_TRANSFER:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;

    .line 113
    new-instance v3, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;

    const-string v5, "ETRANS_LEAST_WALK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;->ETRANS_LEAST_WALK:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;

    .line 117
    new-instance v5, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;

    const-string v7, "ETRANS_NO_SUBWAY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;->ETRANS_NO_SUBWAY:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;

    .line 121
    new-instance v7, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;

    const-string v9, "ETRANS_LEAST_TIME"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;->ETRANS_LEAST_TIME:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;

    .line 125
    new-instance v9, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;

    const-string v11, "ETRANS_SUBWAY_FIRST"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;->ETRANS_SUBWAY_FIRST:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 101
    sput-object v11, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;->b:[Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 127
    iput p1, p0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;->a:I

    .line 130
    iput p3, p0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;
    .locals 1

    .line 101
    const-class v0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;

    return-object p0
.end method

.method public static values()[Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;
    .locals 1

    .line 101
    sget-object v0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;->b:[Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;

    invoke-virtual {v0}, [Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIncity;->a:I

    return v0
.end method
