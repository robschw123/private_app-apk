.class public final enum Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;
.super Ljava/lang/Enum;
.source "MassTransitRoutePlanOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransTypeIntercity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ETRANS_COACH_FIRST:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;

.field public static final enum ETRANS_PLANE_FIRST:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;

.field public static final enum ETRANS_TRAIN_FIRST:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;

.field private static final synthetic b:[Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 173
    new-instance v0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;

    const-string v1, "ETRANS_TRAIN_FIRST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;->ETRANS_TRAIN_FIRST:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;

    .line 177
    new-instance v1, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;

    const-string v3, "ETRANS_PLANE_FIRST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;->ETRANS_PLANE_FIRST:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;

    .line 181
    new-instance v3, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;

    const-string v5, "ETRANS_COACH_FIRST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;->ETRANS_COACH_FIRST:Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 169
    sput-object v5, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;->b:[Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 185
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 183
    iput p1, p0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;->a:I

    .line 186
    iput p3, p0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;
    .locals 1

    .line 169
    const-class v0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;

    return-object p0
.end method

.method public static values()[Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;
    .locals 1

    .line 169
    sget-object v0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;->b:[Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;

    invoke-virtual {v0}, [Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .line 190
    iget v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption$TransTypeIntercity;->a:I

    return v0
.end method
