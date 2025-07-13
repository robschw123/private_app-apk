.class public final enum Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;
.super Ljava/lang/Enum;
.source "PoiFilter.java"

# interfaces
.implements Lcom/baidu/mapapi/search/poi/PoiFilter$SortName;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/search/poi/PoiFilter$SortName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HotelSortName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;",
        ">;",
        "Lcom/baidu/mapapi/search/poi/PoiFilter$SortName;"
    }
.end annotation


# static fields
.field public static final enum DEFAULT:Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;

.field public static final enum HOTEL_DISTANCE:Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;

.field public static final enum HOTEL_HEALTH_SCORE:Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;

.field public static final enum HOTEL_LEVEL:Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;

.field public static final enum HOTEL_PRICE:Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;

.field public static final enum HOTEL_TOTAL_SCORE:Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;

.field private static final synthetic a:[Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 50
    new-instance v0, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;->DEFAULT:Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;

    .line 52
    new-instance v1, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;

    const-string v3, "HOTEL_PRICE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;->HOTEL_PRICE:Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;

    .line 54
    new-instance v3, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;

    const-string v5, "HOTEL_DISTANCE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;->HOTEL_DISTANCE:Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;

    .line 56
    new-instance v5, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;

    const-string v7, "HOTEL_TOTAL_SCORE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;->HOTEL_TOTAL_SCORE:Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;

    .line 58
    new-instance v7, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;

    const-string v9, "HOTEL_LEVEL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;->HOTEL_LEVEL:Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;

    .line 60
    new-instance v9, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;

    const-string v11, "HOTEL_HEALTH_SCORE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;->HOTEL_HEALTH_SCORE:Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 48
    sput-object v11, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;->a:[Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;
    .locals 1

    .line 48
    const-class v0, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;

    return-object p0
.end method

.method public static values()[Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;
    .locals 1

    .line 48
    sget-object v0, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;->a:[Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;

    invoke-virtual {v0}, [Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;

    return-object v0
.end method
