.class public final enum Lcom/baidu/mapapi/search/poi/PoiSortType;
.super Ljava/lang/Enum;
.source "PoiSortType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mapapi/search/poi/PoiSortType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/baidu/mapapi/search/poi/PoiSortType;

.field public static final enum comprehensive:Lcom/baidu/mapapi/search/poi/PoiSortType;

.field public static final enum distance_from_near_to_far:Lcom/baidu/mapapi/search/poi/PoiSortType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lcom/baidu/mapapi/search/poi/PoiSortType;

    const-string v1, "comprehensive"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/mapapi/search/poi/PoiSortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/search/poi/PoiSortType;->comprehensive:Lcom/baidu/mapapi/search/poi/PoiSortType;

    .line 13
    new-instance v1, Lcom/baidu/mapapi/search/poi/PoiSortType;

    const-string v3, "distance_from_near_to_far"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/baidu/mapapi/search/poi/PoiSortType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/baidu/mapapi/search/poi/PoiSortType;->distance_from_near_to_far:Lcom/baidu/mapapi/search/poi/PoiSortType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/baidu/mapapi/search/poi/PoiSortType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 11
    sput-object v3, Lcom/baidu/mapapi/search/poi/PoiSortType;->a:[Lcom/baidu/mapapi/search/poi/PoiSortType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mapapi/search/poi/PoiSortType;
    .locals 1

    .line 11
    const-class v0, Lcom/baidu/mapapi/search/poi/PoiSortType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mapapi/search/poi/PoiSortType;

    return-object p0
.end method

.method public static values()[Lcom/baidu/mapapi/search/poi/PoiSortType;
    .locals 1

    .line 11
    sget-object v0, Lcom/baidu/mapapi/search/poi/PoiSortType;->a:[Lcom/baidu/mapapi/search/poi/PoiSortType;

    invoke-virtual {v0}, [Lcom/baidu/mapapi/search/poi/PoiSortType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mapapi/search/poi/PoiSortType;

    return-object v0
.end method
