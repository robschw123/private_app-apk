.class public final enum Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

.field public static final enum LOADING:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum NONE:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

.field public static final enum NO_MORE_DATA:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

.field public static final enum PULL_TO_REFRESH:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

.field public static final enum REFRESHING:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

.field public static final enum RELEASE_TO_REFRESH:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

.field public static final enum RESET:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->NONE:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    .line 7
    new-instance v1, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    const-string v3, "RESET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->RESET:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    .line 13
    new-instance v3, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    const-string v5, "PULL_TO_REFRESH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->PULL_TO_REFRESH:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    .line 19
    new-instance v5, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    const-string v7, "RELEASE_TO_REFRESH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->RELEASE_TO_REFRESH:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    .line 24
    new-instance v7, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    const-string v9, "REFRESHING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->REFRESHING:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    .line 29
    new-instance v9, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    const-string v11, "LOADING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->LOADING:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    .line 35
    new-instance v11, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    const-string v13, "NO_MORE_DATA"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->NO_MORE_DATA:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    const/4 v13, 0x7

    new-array v13, v13, [Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 36
    sput-object v13, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->$VALUES:[Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;
    .locals 1

    .line 1
    const-class v0, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    return-object p0
.end method

.method public static values()[Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;
    .locals 1

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->$VALUES:[Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    invoke-virtual {v0}, [Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    return-object v0
.end method
