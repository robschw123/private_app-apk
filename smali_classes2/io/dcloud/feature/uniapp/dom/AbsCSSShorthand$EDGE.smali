.class public final enum Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;
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
    name = "EDGE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;",
        ">;",
        "Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$CSSProperty;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

.field public static final enum ALL:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

.field public static final enum BOTTOM:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

.field public static final enum LEFT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

.field public static final enum RIGHT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

.field public static final enum TOP:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 35
    new-instance v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->TOP:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    new-instance v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    const-string v3, "BOTTOM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->BOTTOM:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    new-instance v3, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    const-string v5, "LEFT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->LEFT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    new-instance v5, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    const-string v7, "RIGHT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->RIGHT:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    new-instance v7, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    const-string v9, "ALL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->ALL:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    const/4 v9, 0x5

    new-array v9, v9, [Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 34
    sput-object v9, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->$VALUES:[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

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

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 34
    const-class v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    return-object p0
.end method

.method public static values()[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;
    .locals 1

    .line 34
    sget-object v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->$VALUES:[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    invoke-virtual {v0}, [Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$EDGE;

    return-object v0
.end method
