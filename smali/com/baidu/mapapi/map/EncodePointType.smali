.class public final enum Lcom/baidu/mapapi/map/EncodePointType;
.super Ljava/lang/Enum;
.source "EncodePointType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mapapi/map/EncodePointType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BUILDINGINFO:Lcom/baidu/mapapi/map/EncodePointType;

.field public static final enum NONE:Lcom/baidu/mapapi/map/EncodePointType;

.field private static final synthetic a:[Lcom/baidu/mapapi/map/EncodePointType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/baidu/mapapi/map/EncodePointType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/mapapi/map/EncodePointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/EncodePointType;->NONE:Lcom/baidu/mapapi/map/EncodePointType;

    .line 5
    new-instance v1, Lcom/baidu/mapapi/map/EncodePointType;

    const-string v3, "BUILDINGINFO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/baidu/mapapi/map/EncodePointType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/baidu/mapapi/map/EncodePointType;->BUILDINGINFO:Lcom/baidu/mapapi/map/EncodePointType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/baidu/mapapi/map/EncodePointType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/baidu/mapapi/map/EncodePointType;->a:[Lcom/baidu/mapapi/map/EncodePointType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mapapi/map/EncodePointType;
    .locals 1

    .line 3
    const-class v0, Lcom/baidu/mapapi/map/EncodePointType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mapapi/map/EncodePointType;

    return-object p0
.end method

.method public static values()[Lcom/baidu/mapapi/map/EncodePointType;
    .locals 1

    .line 3
    sget-object v0, Lcom/baidu/mapapi/map/EncodePointType;->a:[Lcom/baidu/mapapi/map/EncodePointType;

    invoke-virtual {v0}, [Lcom/baidu/mapapi/map/EncodePointType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mapapi/map/EncodePointType;

    return-object v0
.end method
