.class public final enum Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;
.super Ljava/lang/Enum;
.source "RouteShareURLOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/search/share/RouteShareURLOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RouteShareMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BUS_ROUTE_SHARE_MODE:Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;

.field public static final enum CAR_ROUTE_SHARE_MODE:Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;

.field public static final enum CYCLE_ROUTE_SHARE_MODE:Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;

.field public static final enum FOOT_ROUTE_SHARE_MODE:Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;

.field private static final synthetic b:[Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 75
    new-instance v0, Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;

    const-string v1, "CAR_ROUTE_SHARE_MODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;->CAR_ROUTE_SHARE_MODE:Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;

    .line 80
    new-instance v1, Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;

    const-string v3, "FOOT_ROUTE_SHARE_MODE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;->FOOT_ROUTE_SHARE_MODE:Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;

    .line 85
    new-instance v3, Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;

    const-string v5, "CYCLE_ROUTE_SHARE_MODE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;->CYCLE_ROUTE_SHARE_MODE:Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;

    .line 90
    new-instance v5, Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;

    const-string v7, "BUS_ROUTE_SHARE_MODE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;->BUS_ROUTE_SHARE_MODE:Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 71
    sput-object v7, Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;->b:[Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, -0x1

    .line 92
    iput p1, p0, Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;->a:I

    .line 95
    iput p3, p0, Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;
    .locals 1

    .line 71
    const-class v0, Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;

    return-object p0
.end method

.method public static values()[Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;
    .locals 1

    .line 71
    sget-object v0, Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;->b:[Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;

    invoke-virtual {v0}, [Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;

    return-object v0
.end method


# virtual methods
.method public getRouteShareMode()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/baidu/mapapi/search/share/RouteShareURLOption$RouteShareMode;->a:I

    return v0
.end method
