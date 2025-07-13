.class public final enum Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;
.super Ljava/lang/Enum;
.source "BM3DModelOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/map/BM3DModelOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BM3DModelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BM3DModelTypeObj:Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;

.field public static final enum BM3DModelTypeglTF:Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;

.field private static final synthetic a:[Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;

    const-string v1, "BM3DModelTypeObj"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;->BM3DModelTypeObj:Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;

    .line 14
    new-instance v1, Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;

    const-string v3, "BM3DModelTypeglTF"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;->BM3DModelTypeglTF:Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 12
    sput-object v3, Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;->a:[Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;
    .locals 1

    .line 12
    const-class v0, Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;

    return-object p0
.end method

.method public static values()[Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;
    .locals 1

    .line 12
    sget-object v0, Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;->a:[Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;

    invoke-virtual {v0}, [Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;

    return-object v0
.end method
