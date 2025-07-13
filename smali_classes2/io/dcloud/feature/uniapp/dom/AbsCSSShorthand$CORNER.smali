.class public final enum Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;
.super Ljava/lang/Enum;
.source "AbsCSSShorthand.java"

# interfaces
.implements Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CSSProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CORNER"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;",
        ">;",
        "Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CSSProperty;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

.field public static final enum ALL:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

.field public static final enum BORDER_BOTTOM_LEFT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

.field public static final enum BORDER_BOTTOM_RIGHT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

.field public static final enum BORDER_TOP_LEFT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

.field public static final enum BORDER_TOP_RIGHT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 39
    new-instance v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    const-string v1, "BORDER_TOP_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->BORDER_TOP_LEFT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    new-instance v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    const-string v3, "BORDER_TOP_RIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    .line 40
    new-instance v3, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    const-string v5, "BORDER_BOTTOM_RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    new-instance v5, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    const-string v7, "BORDER_BOTTOM_LEFT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    new-instance v7, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    const-string v9, "ALL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->ALL:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    const/4 v9, 0x5

    new-array v9, v9, [Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 38
    sput-object v9, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->$VALUES:[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 38
    const-class v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    return-object p0
.end method

.method public static values()[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;
    .locals 1

    .line 38
    sget-object v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->$VALUES:[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    invoke-virtual {v0}, [Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CORNER;

    return-object v0
.end method
