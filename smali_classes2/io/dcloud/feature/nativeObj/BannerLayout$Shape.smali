.class final enum Lio/dcloud/feature/nativeObj/BannerLayout$Shape;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/BannerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Shape"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/feature/nativeObj/BannerLayout$Shape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dcloud/feature/nativeObj/BannerLayout$Shape;

.field public static final enum oval:Lio/dcloud/feature/nativeObj/BannerLayout$Shape;

.field public static final enum rect:Lio/dcloud/feature/nativeObj/BannerLayout$Shape;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lio/dcloud/feature/nativeObj/BannerLayout$Shape;

    const-string v1, "rect"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/nativeObj/BannerLayout$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/nativeObj/BannerLayout$Shape;->rect:Lio/dcloud/feature/nativeObj/BannerLayout$Shape;

    new-instance v1, Lio/dcloud/feature/nativeObj/BannerLayout$Shape;

    const-string v3, "oval"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/dcloud/feature/nativeObj/BannerLayout$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/dcloud/feature/nativeObj/BannerLayout$Shape;->oval:Lio/dcloud/feature/nativeObj/BannerLayout$Shape;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/dcloud/feature/nativeObj/BannerLayout$Shape;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 2
    sput-object v3, Lio/dcloud/feature/nativeObj/BannerLayout$Shape;->$VALUES:[Lio/dcloud/feature/nativeObj/BannerLayout$Shape;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/feature/nativeObj/BannerLayout$Shape;
    .locals 1

    .line 1
    const-class v0, Lio/dcloud/feature/nativeObj/BannerLayout$Shape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/feature/nativeObj/BannerLayout$Shape;

    return-object p0
.end method

.method public static values()[Lio/dcloud/feature/nativeObj/BannerLayout$Shape;
    .locals 1

    .line 1
    sget-object v0, Lio/dcloud/feature/nativeObj/BannerLayout$Shape;->$VALUES:[Lio/dcloud/feature/nativeObj/BannerLayout$Shape;

    invoke-virtual {v0}, [Lio/dcloud/feature/nativeObj/BannerLayout$Shape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/feature/nativeObj/BannerLayout$Shape;

    return-object v0
.end method
