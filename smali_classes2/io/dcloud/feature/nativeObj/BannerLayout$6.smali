.class synthetic Lio/dcloud/feature/nativeObj/BannerLayout$6;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/BannerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$dcloud$feature$nativeObj$BannerLayout$Position:[I

.field static final synthetic $SwitchMap$io$dcloud$feature$nativeObj$BannerLayout$Shape:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->values()[Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/dcloud/feature/nativeObj/BannerLayout$6;->$SwitchMap$io$dcloud$feature$nativeObj$BannerLayout$Position:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->centerBottom:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lio/dcloud/feature/nativeObj/BannerLayout$6;->$SwitchMap$io$dcloud$feature$nativeObj$BannerLayout$Position:[I

    sget-object v3, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->centerTop:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lio/dcloud/feature/nativeObj/BannerLayout$6;->$SwitchMap$io$dcloud$feature$nativeObj$BannerLayout$Position:[I

    sget-object v3, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->leftBottom:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lio/dcloud/feature/nativeObj/BannerLayout$6;->$SwitchMap$io$dcloud$feature$nativeObj$BannerLayout$Position:[I

    sget-object v3, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->leftTop:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v2, Lio/dcloud/feature/nativeObj/BannerLayout$6;->$SwitchMap$io$dcloud$feature$nativeObj$BannerLayout$Position:[I

    sget-object v3, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->rightBottom:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x5

    aput v4, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v2, Lio/dcloud/feature/nativeObj/BannerLayout$6;->$SwitchMap$io$dcloud$feature$nativeObj$BannerLayout$Position:[I

    sget-object v3, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->rightTop:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x6

    aput v4, v2, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v2, Lio/dcloud/feature/nativeObj/BannerLayout$6;->$SwitchMap$io$dcloud$feature$nativeObj$BannerLayout$Position:[I

    sget-object v3, Lio/dcloud/feature/nativeObj/BannerLayout$Position;->none:Lio/dcloud/feature/nativeObj/BannerLayout$Position;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x7

    aput v4, v2, v3
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 2
    :catch_6
    invoke-static {}, Lio/dcloud/feature/nativeObj/BannerLayout$Shape;->values()[Lio/dcloud/feature/nativeObj/BannerLayout$Shape;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lio/dcloud/feature/nativeObj/BannerLayout$6;->$SwitchMap$io$dcloud$feature$nativeObj$BannerLayout$Shape:[I

    :try_start_7
    sget-object v3, Lio/dcloud/feature/nativeObj/BannerLayout$Shape;->rect:Lio/dcloud/feature/nativeObj/BannerLayout$Shape;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lio/dcloud/feature/nativeObj/BannerLayout$6;->$SwitchMap$io$dcloud$feature$nativeObj$BannerLayout$Shape:[I

    sget-object v2, Lio/dcloud/feature/nativeObj/BannerLayout$Shape;->oval:Lio/dcloud/feature/nativeObj/BannerLayout$Shape;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method
