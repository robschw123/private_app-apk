.class public final enum Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;
.super Ljava/lang/Enum;
.source "PoiInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/search/core/PoiInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "POITYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

.field public static final enum BUS_LINE:Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

.field public static final enum BUS_STATION:Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

.field public static final enum POINT:Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

.field public static final enum SUBWAY_LINE:Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

.field public static final enum SUBWAY_STATION:Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 105
    new-instance v0, Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    const-string v1, "POINT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;->POINT:Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    new-instance v1, Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    const-string v3, "BUS_STATION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;->BUS_STATION:Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    new-instance v3, Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    const-string v5, "BUS_LINE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;->BUS_LINE:Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    new-instance v5, Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    const-string v7, "SUBWAY_STATION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;->SUBWAY_STATION:Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    new-instance v7, Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    const-string v9, "SUBWAY_LINE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;->SUBWAY_LINE:Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 103
    sput-object v9, Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;->$VALUES:[Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    iput p3, p0, Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;->a:I

    return-void
.end method

.method public static fromInt(I)Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 139
    :cond_0
    sget-object p0, Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;->SUBWAY_LINE:Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    return-object p0

    .line 137
    :cond_1
    sget-object p0, Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;->SUBWAY_STATION:Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    return-object p0

    .line 135
    :cond_2
    sget-object p0, Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;->BUS_LINE:Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    return-object p0

    .line 133
    :cond_3
    sget-object p0, Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;->BUS_STATION:Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    return-object p0

    .line 131
    :cond_4
    sget-object p0, Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;->POINT:Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;
    .locals 1

    .line 103
    const-class v0, Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    return-object p0
.end method

.method public static values()[Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;
    .locals 1

    .line 103
    sget-object v0, Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;->$VALUES:[Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    invoke-virtual {v0}, [Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;->a:I

    return v0
.end method
