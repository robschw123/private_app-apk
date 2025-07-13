.class public final enum Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;
.super Ljava/lang/Enum;
.source "SearchResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/search/core/SearchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ERRORNO"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

.field public static final enum AMBIGUOUS_KEYWORD:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

.field public static final enum AMBIGUOUS_ROURE_ADDR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

.field public static final enum INDOOR_ROUTE_NO_IN_BUILDING:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

.field public static final enum INDOOR_ROUTE_NO_IN_SAME_BUILDING:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

.field public static final enum INVALID_DISTRICT_ID:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

.field public static final enum KEY_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

.field public static final enum MASS_TRANSIT_NO_POI_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

.field public static final enum MASS_TRANSIT_OPTION_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

.field public static final enum MASS_TRANSIT_SERVER_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

.field public static final enum NETWORK_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

.field public static final enum NETWORK_TIME_OUT:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

.field public static final enum NOT_SUPPORT_BUS:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

.field public static final enum NOT_SUPPORT_BUS_2CITY:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

.field public static final enum NO_ADVANCED_PERMISSION:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

.field public static final enum NO_DATA_FOR_LATLNG:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

.field public static final enum NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

.field public static final enum PARAMER_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

.field public static final enum PERMISSION_UNFINISHED:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

.field public static final enum POIINDOOR_BID_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

.field public static final enum POIINDOOR_FLOOR_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

.field public static final enum POIINDOOR_SERVER_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

.field public static final enum REQUEST_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

.field public static final enum RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

.field public static final enum SEARCH_OPTION_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

.field public static final enum SEARCH_SERVER_INTERNAL_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

.field public static final enum ST_EN_TOO_NEAR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 42
    new-instance v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    const-string v1, "NO_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    .line 46
    new-instance v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    const-string v3, "RESULT_NOT_FOUND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    .line 50
    new-instance v3, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    const-string v5, "AMBIGUOUS_KEYWORD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->AMBIGUOUS_KEYWORD:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    .line 54
    new-instance v5, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    const-string v7, "AMBIGUOUS_ROURE_ADDR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->AMBIGUOUS_ROURE_ADDR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    .line 58
    new-instance v7, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    const-string v9, "NOT_SUPPORT_BUS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NOT_SUPPORT_BUS:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    .line 62
    new-instance v9, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    const-string v11, "NOT_SUPPORT_BUS_2CITY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NOT_SUPPORT_BUS_2CITY:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    .line 66
    new-instance v11, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    const-string v13, "ST_EN_TOO_NEAR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->ST_EN_TOO_NEAR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    .line 70
    new-instance v13, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    const-string v15, "KEY_ERROR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->KEY_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    .line 74
    new-instance v15, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    const-string v14, "PERMISSION_UNFINISHED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->PERMISSION_UNFINISHED:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    .line 78
    new-instance v14, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    const-string v12, "NETWORK_TIME_OUT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NETWORK_TIME_OUT:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    .line 82
    new-instance v12, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    const-string v10, "NETWORK_ERROR"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NETWORK_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    .line 86
    new-instance v10, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    const-string v8, "POIINDOOR_BID_ERROR"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->POIINDOOR_BID_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    .line 90
    new-instance v8, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    const-string v6, "POIINDOOR_FLOOR_ERROR"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->POIINDOOR_FLOOR_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    .line 94
    new-instance v6, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    const-string v4, "POIINDOOR_SERVER_ERROR"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->POIINDOOR_SERVER_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    .line 100
    new-instance v4, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    const-string v2, "INDOOR_ROUTE_NO_IN_BUILDING"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->INDOOR_ROUTE_NO_IN_BUILDING:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    .line 104
    new-instance v2, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    const-string v6, "INDOOR_ROUTE_NO_IN_SAME_BUILDING"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->INDOOR_ROUTE_NO_IN_SAME_BUILDING:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    .line 108
    new-instance v6, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    const-string v4, "MASS_TRANSIT_SERVER_ERROR"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->MASS_TRANSIT_SERVER_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    .line 113
    new-instance v4, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    const-string v2, "MASS_TRANSIT_OPTION_ERROR"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->MASS_TRANSIT_OPTION_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    .line 118
    new-instance v2, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    const-string v6, "MASS_TRANSIT_NO_POI_ERROR"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->MASS_TRANSIT_NO_POI_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    .line 123
    new-instance v6, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    const-string v4, "SEARCH_SERVER_INTERNAL_ERROR"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->SEARCH_SERVER_INTERNAL_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    .line 128
    new-instance v4, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    const-string v2, "SEARCH_OPTION_ERROR"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->SEARCH_OPTION_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    .line 133
    new-instance v2, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    const-string v6, "REQUEST_ERROR"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->REQUEST_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    .line 138
    new-instance v6, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    const-string v4, "NO_ADVANCED_PERMISSION"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ADVANCED_PERMISSION:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    .line 142
    new-instance v2, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    const-string v4, "INVALID_DISTRICT_ID"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->INVALID_DISTRICT_ID:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    .line 146
    new-instance v4, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    const-string v6, "NO_DATA_FOR_LATLNG"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_DATA_FOR_LATLNG:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    .line 151
    new-instance v2, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    const-string v6, "PARAMER_ERROR"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->PARAMER_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    const/16 v4, 0x1a

    new-array v4, v4, [Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v16, v4, v0

    const/16 v0, 0xe

    aput-object v17, v4, v0

    const/16 v0, 0xf

    aput-object v18, v4, v0

    const/16 v0, 0x10

    aput-object v19, v4, v0

    const/16 v0, 0x11

    aput-object v20, v4, v0

    const/16 v0, 0x12

    aput-object v21, v4, v0

    const/16 v0, 0x13

    aput-object v22, v4, v0

    const/16 v0, 0x14

    aput-object v23, v4, v0

    const/16 v0, 0x15

    aput-object v24, v4, v0

    const/16 v0, 0x16

    aput-object v25, v4, v0

    const/16 v0, 0x17

    aput-object v26, v4, v0

    const/16 v0, 0x18

    aput-object v27, v4, v0

    const/16 v0, 0x19

    aput-object v2, v4, v0

    .line 38
    sput-object v4, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->$VALUES:[Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;
    .locals 1

    .line 38
    const-class v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return-object p0
.end method

.method public static values()[Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;
    .locals 1

    .line 38
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->$VALUES:[Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    invoke-virtual {v0}, [Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return-object v0
.end method
