.class public final enum Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;
.super Ljava/lang/Enum;
.source "MassTransitRoutePlanOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TacticsIntercity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ETRANS_LEAST_PRICE:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;

.field public static final enum ETRANS_LEAST_TIME:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;

.field public static final enum ETRANS_START_EARLY:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;

.field private static final synthetic b:[Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 145
    new-instance v0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;

    const-string v1, "ETRANS_LEAST_TIME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;->ETRANS_LEAST_TIME:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;

    .line 149
    new-instance v1, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;

    const-string v3, "ETRANS_START_EARLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;->ETRANS_START_EARLY:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;

    .line 153
    new-instance v3, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;

    const-string v5, "ETRANS_LEAST_PRICE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;->ETRANS_LEAST_PRICE:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 141
    sput-object v5, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;->b:[Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 157
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 155
    iput p1, p0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;->a:I

    .line 158
    iput p3, p0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;
    .locals 1

    .line 141
    const-class v0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;

    return-object p0
.end method

.method public static values()[Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;
    .locals 1

    .line 141
    sget-object v0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;->b:[Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;

    invoke-virtual {v0}, [Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TacticsIntercity;->a:I

    return v0
.end method
