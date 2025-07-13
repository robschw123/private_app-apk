.class public final enum Lcom/baidu/mapapi/search/core/RouteLine$TYPE;
.super Ljava/lang/Enum;
.source "RouteLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/search/core/RouteLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mapapi/search/core/RouteLine$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BIKINGSTEP:Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

.field public static final enum DRIVESTEP:Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

.field public static final enum TRANSITSTEP:Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

.field public static final enum WALKSTEP:Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

.field private static final synthetic b:[Lcom/baidu/mapapi/search/core/RouteLine$TYPE;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 31
    new-instance v0, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    const-string v1, "DRIVESTEP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;->DRIVESTEP:Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    new-instance v1, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    const-string v3, "TRANSITSTEP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;->TRANSITSTEP:Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    new-instance v3, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    const-string v5, "WALKSTEP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;->WALKSTEP:Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    new-instance v5, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    const-string v7, "BIKINGSTEP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;->BIKINGSTEP:Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 30
    sput-object v7, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;->b:[Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;->a:I

    return-void
.end method

.method private a()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;->a:I

    return v0
.end method

.method static synthetic a(Lcom/baidu/mapapi/search/core/RouteLine$TYPE;)I
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;->a()I

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mapapi/search/core/RouteLine$TYPE;
    .locals 1

    .line 30
    const-class v0, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    return-object p0
.end method

.method public static values()[Lcom/baidu/mapapi/search/core/RouteLine$TYPE;
    .locals 1

    .line 30
    sget-object v0, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;->b:[Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    invoke-virtual {v0}, [Lcom/baidu/mapapi/search/core/RouteLine$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    return-object v0
.end method
