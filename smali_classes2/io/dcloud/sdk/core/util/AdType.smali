.class public final enum Lio/dcloud/sdk/core/util/AdType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/sdk/core/util/AdType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AD_CONTENT_PAGE:Lio/dcloud/sdk/core/util/AdType;

.field public static final enum AD_DRAW:Lio/dcloud/sdk/core/util/AdType;

.field public static final enum AD_FULLSCREEN:Lio/dcloud/sdk/core/util/AdType;

.field public static final enum AD_INTERSTITIAL:Lio/dcloud/sdk/core/util/AdType;

.field public static final enum AD_NONE:Lio/dcloud/sdk/core/util/AdType;

.field public static final enum AD_REWARD:Lio/dcloud/sdk/core/util/AdType;

.field public static final enum AD_SPLASH:Lio/dcloud/sdk/core/util/AdType;

.field public static final enum AD_TEMPLATE:Lio/dcloud/sdk/core/util/AdType;

.field private static final synthetic a:[Lio/dcloud/sdk/core/util/AdType;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lio/dcloud/sdk/core/util/AdType;

    const-string v1, "AD_FULLSCREEN"

    const/4 v2, 0x0

    const-string v3, "full_screen_video"

    invoke-direct {v0, v1, v2, v3}, Lio/dcloud/sdk/core/util/AdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/dcloud/sdk/core/util/AdType;->AD_FULLSCREEN:Lio/dcloud/sdk/core/util/AdType;

    .line 2
    new-instance v1, Lio/dcloud/sdk/core/util/AdType;

    const-string v3, "AD_REWARD"

    const/4 v4, 0x1

    const-string v5, "rewarded"

    invoke-direct {v1, v3, v4, v5}, Lio/dcloud/sdk/core/util/AdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lio/dcloud/sdk/core/util/AdType;->AD_REWARD:Lio/dcloud/sdk/core/util/AdType;

    .line 3
    new-instance v3, Lio/dcloud/sdk/core/util/AdType;

    const-string v5, "AD_NONE"

    const/4 v6, 0x2

    const-string v7, ""

    invoke-direct {v3, v5, v6, v7}, Lio/dcloud/sdk/core/util/AdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lio/dcloud/sdk/core/util/AdType;->AD_NONE:Lio/dcloud/sdk/core/util/AdType;

    .line 4
    new-instance v5, Lio/dcloud/sdk/core/util/AdType;

    const-string v7, "AD_SPLASH"

    const/4 v8, 0x3

    const-string v9, "splash"

    invoke-direct {v5, v7, v8, v9}, Lio/dcloud/sdk/core/util/AdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lio/dcloud/sdk/core/util/AdType;->AD_SPLASH:Lio/dcloud/sdk/core/util/AdType;

    .line 5
    new-instance v7, Lio/dcloud/sdk/core/util/AdType;

    const-string v9, "AD_INTERSTITIAL"

    const/4 v10, 0x4

    const-string v11, "interstitial"

    invoke-direct {v7, v9, v10, v11}, Lio/dcloud/sdk/core/util/AdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lio/dcloud/sdk/core/util/AdType;->AD_INTERSTITIAL:Lio/dcloud/sdk/core/util/AdType;

    .line 6
    new-instance v9, Lio/dcloud/sdk/core/util/AdType;

    const-string v11, "AD_DRAW"

    const/4 v12, 0x5

    const-string v13, "draw_flow"

    invoke-direct {v9, v11, v12, v13}, Lio/dcloud/sdk/core/util/AdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lio/dcloud/sdk/core/util/AdType;->AD_DRAW:Lio/dcloud/sdk/core/util/AdType;

    .line 7
    new-instance v11, Lio/dcloud/sdk/core/util/AdType;

    const-string v13, "AD_CONTENT_PAGE"

    const/4 v14, 0x6

    const-string v15, "content_page"

    invoke-direct {v11, v13, v14, v15}, Lio/dcloud/sdk/core/util/AdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lio/dcloud/sdk/core/util/AdType;->AD_CONTENT_PAGE:Lio/dcloud/sdk/core/util/AdType;

    .line 8
    new-instance v13, Lio/dcloud/sdk/core/util/AdType;

    const-string v15, "AD_TEMPLATE"

    const/4 v14, 0x7

    const-string v12, "template"

    invoke-direct {v13, v15, v14, v12}, Lio/dcloud/sdk/core/util/AdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lio/dcloud/sdk/core/util/AdType;->AD_TEMPLATE:Lio/dcloud/sdk/core/util/AdType;

    const/16 v12, 0x8

    new-array v12, v12, [Lio/dcloud/sdk/core/util/AdType;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    .line 9
    sput-object v12, Lio/dcloud/sdk/core/util/AdType;->a:[Lio/dcloud/sdk/core/util/AdType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lio/dcloud/sdk/core/util/AdType;->b:Ljava/lang/String;

    return-void
.end method

.method public static getAdType(Ljava/lang/String;)Lio/dcloud/sdk/core/util/AdType;
    .locals 5

    .line 1
    invoke-static {}, Lio/dcloud/sdk/core/util/AdType;->values()[Lio/dcloud/sdk/core/util/AdType;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget-object v4, v3, Lio/dcloud/sdk/core/util/AdType;->b:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    sget-object p0, Lio/dcloud/sdk/core/util/AdType;->AD_NONE:Lio/dcloud/sdk/core/util/AdType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/sdk/core/util/AdType;
    .locals 1

    .line 1
    const-class v0, Lio/dcloud/sdk/core/util/AdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/sdk/core/util/AdType;

    return-object p0
.end method

.method public static values()[Lio/dcloud/sdk/core/util/AdType;
    .locals 1

    .line 1
    sget-object v0, Lio/dcloud/sdk/core/util/AdType;->a:[Lio/dcloud/sdk/core/util/AdType;

    invoke-virtual {v0}, [Lio/dcloud/sdk/core/util/AdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/sdk/core/util/AdType;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/util/AdType;->b:Ljava/lang/String;

    return-object v0
.end method
