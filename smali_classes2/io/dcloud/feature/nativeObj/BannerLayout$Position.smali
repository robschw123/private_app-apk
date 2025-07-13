.class public final enum Lio/dcloud/feature/nativeObj/BannerLayout$Position;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/BannerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/feature/nativeObj/BannerLayout$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dcloud/feature/nativeObj/BannerLayout$Position;

.field public static final enum centerBottom:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

.field public static final enum centerTop:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

.field public static final enum leftBottom:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

.field public static final enum leftTop:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

.field public static final enum none:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

.field public static final enum rightBottom:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

.field public static final enum rightTop:Lio/dcloud/feature/nativeObj/BannerLayout$Position;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    const-string v1, "centerBottom"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/BannerLayout$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->centerBottom:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    .line 2
    new-instance v1, Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    const-string v3, "rightBottom"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/dcloud/feature/nativeObj/BannerLayout$Position;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->rightBottom:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    .line 3
    new-instance v3, Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    const-string v5, "leftBottom"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/dcloud/feature/nativeObj/BannerLayout$Position;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->leftBottom:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    .line 4
    new-instance v5, Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    const-string v7, "centerTop"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/dcloud/feature/nativeObj/BannerLayout$Position;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->centerTop:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    .line 5
    new-instance v7, Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    const-string v9, "rightTop"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/dcloud/feature/nativeObj/BannerLayout$Position;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->rightTop:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    .line 6
    new-instance v9, Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    const-string v11, "leftTop"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/dcloud/feature/nativeObj/BannerLayout$Position;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->leftTop:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    .line 7
    new-instance v11, Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    const-string v13, "none"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lio/dcloud/feature/nativeObj/BannerLayout$Position;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->none:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    const/4 v13, 0x7

    new-array v13, v13, [Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->$VALUES:[Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/feature/nativeObj/BannerLayout$Position;
    .locals 1

    .line 1
    const-class v0, Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    return-object p0
.end method

.method public static values()[Lio/dcloud/feature/nativeObj/BannerLayout$Position;
    .locals 1

    .line 1
    sget-object v0, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->$VALUES:[Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    invoke-virtual {v0}, [Lio/dcloud/feature/nativeObj/BannerLayout$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    return-object v0
.end method
