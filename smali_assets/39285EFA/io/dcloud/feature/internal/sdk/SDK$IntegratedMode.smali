.class public final enum Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/internal/sdk/SDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IntegratedMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

.field public static final enum RUNTIME:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

.field public static final enum WEBAPP:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

.field public static final enum WEBVIEW:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    const-string v1, "WEBVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;->WEBVIEW:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    .line 2
    new-instance v1, Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    const-string v3, "WEBAPP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;->WEBAPP:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    .line 3
    new-instance v3, Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    const-string v5, "RUNTIME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;->RUNTIME:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;->$VALUES:[Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;
    .locals 1

    .line 1
    const-class v0, Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    return-object p0
.end method

.method public static values()[Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;
    .locals 1

    .line 1
    sget-object v0, Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;->$VALUES:[Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    invoke-virtual {v0}, [Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    return-object v0
.end method
