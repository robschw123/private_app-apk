.class public final enum Lcom/baidu/platform/base/SearchType;
.super Ljava/lang/Enum;
.source "SearchType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/platform/base/SearchType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/platform/base/SearchType;

.field public static final enum b:Lcom/baidu/platform/base/SearchType;

.field public static final enum c:Lcom/baidu/platform/base/SearchType;

.field public static final enum d:Lcom/baidu/platform/base/SearchType;

.field public static final enum e:Lcom/baidu/platform/base/SearchType;

.field public static final enum f:Lcom/baidu/platform/base/SearchType;

.field public static final enum g:Lcom/baidu/platform/base/SearchType;

.field public static final enum h:Lcom/baidu/platform/base/SearchType;

.field public static final enum i:Lcom/baidu/platform/base/SearchType;

.field public static final enum j:Lcom/baidu/platform/base/SearchType;

.field public static final enum k:Lcom/baidu/platform/base/SearchType;

.field public static final enum l:Lcom/baidu/platform/base/SearchType;

.field public static final enum m:Lcom/baidu/platform/base/SearchType;

.field public static final enum n:Lcom/baidu/platform/base/SearchType;

.field public static final enum o:Lcom/baidu/platform/base/SearchType;

.field public static final enum p:Lcom/baidu/platform/base/SearchType;

.field public static final enum q:Lcom/baidu/platform/base/SearchType;

.field public static final enum r:Lcom/baidu/platform/base/SearchType;

.field public static final enum s:Lcom/baidu/platform/base/SearchType;

.field public static final enum t:Lcom/baidu/platform/base/SearchType;

.field public static final enum u:Lcom/baidu/platform/base/SearchType;

.field public static final enum v:Lcom/baidu/platform/base/SearchType;

.field private static final synthetic w:[Lcom/baidu/platform/base/SearchType;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 8
    new-instance v0, Lcom/baidu/platform/base/SearchType;

    const-string v1, "POI_NEAR_BY_SEARCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/platform/base/SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/platform/base/SearchType;->a:Lcom/baidu/platform/base/SearchType;

    .line 9
    new-instance v1, Lcom/baidu/platform/base/SearchType;

    const-string v3, "POI_IN_CITY_SEARCH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/baidu/platform/base/SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/baidu/platform/base/SearchType;->b:Lcom/baidu/platform/base/SearchType;

    .line 10
    new-instance v3, Lcom/baidu/platform/base/SearchType;

    const-string v5, "POI_IN_BOUND_SEARCH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/baidu/platform/base/SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/baidu/platform/base/SearchType;->c:Lcom/baidu/platform/base/SearchType;

    .line 11
    new-instance v5, Lcom/baidu/platform/base/SearchType;

    const-string v7, "POI_DETAIL_SEARCH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/baidu/platform/base/SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/baidu/platform/base/SearchType;->d:Lcom/baidu/platform/base/SearchType;

    .line 12
    new-instance v7, Lcom/baidu/platform/base/SearchType;

    const-string v9, "INDOOR_POI_SEARCH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/baidu/platform/base/SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/baidu/platform/base/SearchType;->e:Lcom/baidu/platform/base/SearchType;

    .line 13
    new-instance v9, Lcom/baidu/platform/base/SearchType;

    const-string v11, "SUGGESTION_SEARCH_TYPE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/baidu/platform/base/SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/baidu/platform/base/SearchType;->f:Lcom/baidu/platform/base/SearchType;

    .line 14
    new-instance v11, Lcom/baidu/platform/base/SearchType;

    const-string v13, "GEO_CODER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/baidu/platform/base/SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/baidu/platform/base/SearchType;->g:Lcom/baidu/platform/base/SearchType;

    .line 15
    new-instance v13, Lcom/baidu/platform/base/SearchType;

    const-string v15, "REVERSE_GEO_CODER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/baidu/platform/base/SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/baidu/platform/base/SearchType;->h:Lcom/baidu/platform/base/SearchType;

    .line 16
    new-instance v15, Lcom/baidu/platform/base/SearchType;

    const-string v14, "MASS_TRANSIT_ROUTE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/baidu/platform/base/SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/baidu/platform/base/SearchType;->i:Lcom/baidu/platform/base/SearchType;

    .line 17
    new-instance v14, Lcom/baidu/platform/base/SearchType;

    const-string v12, "TRANSIT_ROUTE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/baidu/platform/base/SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/baidu/platform/base/SearchType;->j:Lcom/baidu/platform/base/SearchType;

    .line 18
    new-instance v12, Lcom/baidu/platform/base/SearchType;

    const-string v10, "DRIVE_ROUTE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/baidu/platform/base/SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/baidu/platform/base/SearchType;->k:Lcom/baidu/platform/base/SearchType;

    .line 19
    new-instance v10, Lcom/baidu/platform/base/SearchType;

    const-string v8, "BIKE_ROUTE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/baidu/platform/base/SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/baidu/platform/base/SearchType;->l:Lcom/baidu/platform/base/SearchType;

    .line 20
    new-instance v8, Lcom/baidu/platform/base/SearchType;

    const-string v6, "WALK_ROUTE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/baidu/platform/base/SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/baidu/platform/base/SearchType;->m:Lcom/baidu/platform/base/SearchType;

    .line 21
    new-instance v6, Lcom/baidu/platform/base/SearchType;

    const-string v4, "INDOOR_ROUTE"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/baidu/platform/base/SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/baidu/platform/base/SearchType;->n:Lcom/baidu/platform/base/SearchType;

    .line 22
    new-instance v4, Lcom/baidu/platform/base/SearchType;

    const-string v2, "BUS_LINE_DETAIL"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/baidu/platform/base/SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/baidu/platform/base/SearchType;->o:Lcom/baidu/platform/base/SearchType;

    .line 23
    new-instance v2, Lcom/baidu/platform/base/SearchType;

    const-string v6, "DISTRICT_SEARCH"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/baidu/platform/base/SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/baidu/platform/base/SearchType;->p:Lcom/baidu/platform/base/SearchType;

    .line 24
    new-instance v6, Lcom/baidu/platform/base/SearchType;

    const-string v4, "POI_DETAIL_SHARE"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/baidu/platform/base/SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/baidu/platform/base/SearchType;->q:Lcom/baidu/platform/base/SearchType;

    .line 25
    new-instance v4, Lcom/baidu/platform/base/SearchType;

    const-string v2, "LOCATION_SEARCH_SHARE"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/baidu/platform/base/SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/baidu/platform/base/SearchType;->r:Lcom/baidu/platform/base/SearchType;

    .line 26
    new-instance v2, Lcom/baidu/platform/base/SearchType;

    const-string v6, "ROUTE_PLAN_SHARE"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/baidu/platform/base/SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/baidu/platform/base/SearchType;->s:Lcom/baidu/platform/base/SearchType;

    .line 27
    new-instance v6, Lcom/baidu/platform/base/SearchType;

    const-string v4, "WEATHER_SEARCH"

    move-object/from16 v22, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/baidu/platform/base/SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/baidu/platform/base/SearchType;->t:Lcom/baidu/platform/base/SearchType;

    .line 28
    new-instance v4, Lcom/baidu/platform/base/SearchType;

    const-string v2, "RECOMMEND_STOP"

    move-object/from16 v23, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/baidu/platform/base/SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/baidu/platform/base/SearchType;->u:Lcom/baidu/platform/base/SearchType;

    .line 29
    new-instance v2, Lcom/baidu/platform/base/SearchType;

    const-string v6, "BUILDING_SEARCH"

    move-object/from16 v24, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/baidu/platform/base/SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/baidu/platform/base/SearchType;->v:Lcom/baidu/platform/base/SearchType;

    const/16 v6, 0x16

    new-array v6, v6, [Lcom/baidu/platform/base/SearchType;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    const/16 v0, 0xf

    aput-object v19, v6, v0

    const/16 v0, 0x10

    aput-object v20, v6, v0

    const/16 v0, 0x11

    aput-object v21, v6, v0

    const/16 v0, 0x12

    aput-object v22, v6, v0

    const/16 v0, 0x13

    aput-object v23, v6, v0

    const/16 v0, 0x14

    aput-object v24, v6, v0

    aput-object v2, v6, v4

    .line 6
    sput-object v6, Lcom/baidu/platform/base/SearchType;->w:[Lcom/baidu/platform/base/SearchType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/platform/base/SearchType;
    .locals 1

    .line 6
    const-class v0, Lcom/baidu/platform/base/SearchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/platform/base/SearchType;

    return-object p0
.end method

.method public static values()[Lcom/baidu/platform/base/SearchType;
    .locals 1

    .line 6
    sget-object v0, Lcom/baidu/platform/base/SearchType;->w:[Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v0}, [Lcom/baidu/platform/base/SearchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/platform/base/SearchType;

    return-object v0
.end method
