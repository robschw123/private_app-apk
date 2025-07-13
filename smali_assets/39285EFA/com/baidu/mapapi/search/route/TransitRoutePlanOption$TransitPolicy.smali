.class public final enum Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;
.super Ljava/lang/Enum;
.source "TransitRoutePlanOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransitPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EBUS_NO_SUBWAY:Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

.field public static final enum EBUS_TIME_FIRST:Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

.field public static final enum EBUS_TRANSFER_FIRST:Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

.field public static final enum EBUS_WALK_FIRST:Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

.field private static final synthetic b:[Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 67
    new-instance v0, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    const-string v1, "EBUS_TIME_FIRST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;->EBUS_TIME_FIRST:Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    .line 72
    new-instance v1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    const-string v3, "EBUS_TRANSFER_FIRST"

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-direct {v1, v3, v4, v5}, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;->EBUS_TRANSFER_FIRST:Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    .line 77
    new-instance v3, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    const-string v6, "EBUS_WALK_FIRST"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v5, v7}, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;->EBUS_WALK_FIRST:Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    .line 82
    new-instance v6, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    const-string v8, "EBUS_NO_SUBWAY"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;->EBUS_NO_SUBWAY:Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    new-array v8, v9, [Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v5

    aput-object v6, v8, v7

    .line 63
    sput-object v8, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;->b:[Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 84
    iput p1, p0, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;->a:I

    .line 87
    iput p3, p0, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;
    .locals 1

    .line 63
    const-class v0, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    return-object p0
.end method

.method public static values()[Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;
    .locals 1

    .line 63
    sget-object v0, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;->b:[Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    invoke-virtual {v0}, [Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;->a:I

    return v0
.end method
