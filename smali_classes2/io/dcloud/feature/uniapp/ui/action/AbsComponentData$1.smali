.class synthetic Lio/dcloud/feature/uniapp/ui/action/AbsComponentData$1;
.super Ljava/lang/Object;
.source "AbsComponentData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$dcloud$feature$uniapp$dom$AbsCSSShorthand$TYPE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 99
    invoke-static {}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->values()[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData$1;->$SwitchMap$io$dcloud$feature$uniapp$dom$AbsCSSShorthand$TYPE:[I

    :try_start_0
    sget-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->MARGIN:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    invoke-virtual {v1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData$1;->$SwitchMap$io$dcloud$feature$uniapp$dom$AbsCSSShorthand$TYPE:[I

    sget-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->PADDING:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    invoke-virtual {v1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData$1;->$SwitchMap$io$dcloud$feature$uniapp$dom$AbsCSSShorthand$TYPE:[I

    sget-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->BORDER:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    invoke-virtual {v1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
