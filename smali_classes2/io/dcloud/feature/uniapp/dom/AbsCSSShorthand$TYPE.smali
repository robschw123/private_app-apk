.class public final enum Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;
.super Ljava/lang/Enum;
.source "AbsCSSShorthand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

.field public static final enum BORDER:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

.field public static final enum MARGIN:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

.field public static final enum PADDING:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 44
    new-instance v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    const-string v1, "MARGIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->MARGIN:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    new-instance v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    const-string v3, "PADDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->PADDING:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    new-instance v3, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    const-string v5, "BORDER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->BORDER:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 43
    sput-object v5, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->$VALUES:[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

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

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 43
    const-class v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    return-object p0
.end method

.method public static values()[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;
    .locals 1

    .line 43
    sget-object v0, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->$VALUES:[Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    invoke-virtual {v0}, [Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;

    return-object v0
.end method
