.class final enum Lio/dcloud/common/util/net/RequestData$HttpOption;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/net/RequestData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "HttpOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/common/util/net/RequestData$HttpOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dcloud/common/util/net/RequestData$HttpOption;

.field public static final enum DELETE:Lio/dcloud/common/util/net/RequestData$HttpOption;

.field public static final enum GET:Lio/dcloud/common/util/net/RequestData$HttpOption;

.field public static final enum HEAD:Lio/dcloud/common/util/net/RequestData$HttpOption;

.field public static final enum OPTIONS:Lio/dcloud/common/util/net/RequestData$HttpOption;

.field public static final enum POST:Lio/dcloud/common/util/net/RequestData$HttpOption;

.field public static final enum PUT:Lio/dcloud/common/util/net/RequestData$HttpOption;

.field public static final enum TRACE:Lio/dcloud/common/util/net/RequestData$HttpOption;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lio/dcloud/common/util/net/RequestData$HttpOption;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/common/util/net/RequestData$HttpOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/common/util/net/RequestData$HttpOption;->GET:Lio/dcloud/common/util/net/RequestData$HttpOption;

    new-instance v1, Lio/dcloud/common/util/net/RequestData$HttpOption;

    const-string v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/dcloud/common/util/net/RequestData$HttpOption;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/dcloud/common/util/net/RequestData$HttpOption;->POST:Lio/dcloud/common/util/net/RequestData$HttpOption;

    new-instance v3, Lio/dcloud/common/util/net/RequestData$HttpOption;

    const-string v5, "PUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/dcloud/common/util/net/RequestData$HttpOption;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/dcloud/common/util/net/RequestData$HttpOption;->PUT:Lio/dcloud/common/util/net/RequestData$HttpOption;

    new-instance v5, Lio/dcloud/common/util/net/RequestData$HttpOption;

    const-string v7, "DELETE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/dcloud/common/util/net/RequestData$HttpOption;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/dcloud/common/util/net/RequestData$HttpOption;->DELETE:Lio/dcloud/common/util/net/RequestData$HttpOption;

    new-instance v7, Lio/dcloud/common/util/net/RequestData$HttpOption;

    const-string v9, "HEAD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/dcloud/common/util/net/RequestData$HttpOption;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/dcloud/common/util/net/RequestData$HttpOption;->HEAD:Lio/dcloud/common/util/net/RequestData$HttpOption;

    new-instance v9, Lio/dcloud/common/util/net/RequestData$HttpOption;

    const-string v11, "TRACE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/dcloud/common/util/net/RequestData$HttpOption;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/dcloud/common/util/net/RequestData$HttpOption;->TRACE:Lio/dcloud/common/util/net/RequestData$HttpOption;

    new-instance v11, Lio/dcloud/common/util/net/RequestData$HttpOption;

    const-string v13, "OPTIONS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lio/dcloud/common/util/net/RequestData$HttpOption;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lio/dcloud/common/util/net/RequestData$HttpOption;->OPTIONS:Lio/dcloud/common/util/net/RequestData$HttpOption;

    const/4 v13, 0x7

    new-array v13, v13, [Lio/dcloud/common/util/net/RequestData$HttpOption;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 2
    sput-object v13, Lio/dcloud/common/util/net/RequestData$HttpOption;->$VALUES:[Lio/dcloud/common/util/net/RequestData$HttpOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/common/util/net/RequestData$HttpOption;
    .locals 1

    .line 1
    const-class v0, Lio/dcloud/common/util/net/RequestData$HttpOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/common/util/net/RequestData$HttpOption;

    return-object p0
.end method

.method public static values()[Lio/dcloud/common/util/net/RequestData$HttpOption;
    .locals 1

    .line 1
    sget-object v0, Lio/dcloud/common/util/net/RequestData$HttpOption;->$VALUES:[Lio/dcloud/common/util/net/RequestData$HttpOption;

    invoke-virtual {v0}, [Lio/dcloud/common/util/net/RequestData$HttpOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/common/util/net/RequestData$HttpOption;

    return-object v0
.end method
