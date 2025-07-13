.class public final enum Lcom/baidu/mapsdkplatform/comapi/map/w;
.super Ljava/lang/Enum;
.source "MapRenderType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mapsdkplatform/comapi/map/w;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/mapsdkplatform/comapi/map/w;

.field public static final enum b:Lcom/baidu/mapsdkplatform/comapi/map/w;

.field private static final synthetic d:[Lcom/baidu/mapsdkplatform/comapi/map/w;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/w;

    const-string v1, "GLSurfaceView"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/mapsdkplatform/comapi/map/w;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/map/w;->a:Lcom/baidu/mapsdkplatform/comapi/map/w;

    new-instance v1, Lcom/baidu/mapsdkplatform/comapi/map/w;

    const-string v4, "TextureView"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/baidu/mapsdkplatform/comapi/map/w;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/baidu/mapsdkplatform/comapi/map/w;->b:Lcom/baidu/mapsdkplatform/comapi/map/w;

    new-array v4, v5, [Lcom/baidu/mapsdkplatform/comapi/map/w;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 3
    sput-object v4, Lcom/baidu/mapsdkplatform/comapi/map/w;->d:[Lcom/baidu/mapsdkplatform/comapi/map/w;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lcom/baidu/mapsdkplatform/comapi/map/w;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mapsdkplatform/comapi/map/w;
    .locals 1

    .line 3
    const-class v0, Lcom/baidu/mapsdkplatform/comapi/map/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mapsdkplatform/comapi/map/w;

    return-object p0
.end method

.method public static values()[Lcom/baidu/mapsdkplatform/comapi/map/w;
    .locals 1

    .line 3
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/w;->d:[Lcom/baidu/mapsdkplatform/comapi/map/w;

    invoke-virtual {v0}, [Lcom/baidu/mapsdkplatform/comapi/map/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mapsdkplatform/comapi/map/w;

    return-object v0
.end method
