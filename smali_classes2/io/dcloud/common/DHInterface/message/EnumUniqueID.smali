.class public final enum Lio/dcloud/common/DHInterface/message/EnumUniqueID;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/common/DHInterface/message/EnumUniqueID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dcloud/common/DHInterface/message/EnumUniqueID;

.field public static final enum FEATURE_APS_UNI_PUSH:Lio/dcloud/common/DHInterface/message/EnumUniqueID;

.field public static final enum FEATURE_UTS:Lio/dcloud/common/DHInterface/message/EnumUniqueID;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lio/dcloud/common/DHInterface/message/EnumUniqueID;

    const-string v1, "FEATURE_APS_UNI_PUSH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/common/DHInterface/message/EnumUniqueID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/common/DHInterface/message/EnumUniqueID;->FEATURE_APS_UNI_PUSH:Lio/dcloud/common/DHInterface/message/EnumUniqueID;

    .line 2
    new-instance v1, Lio/dcloud/common/DHInterface/message/EnumUniqueID;

    const-string v3, "FEATURE_UTS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/dcloud/common/DHInterface/message/EnumUniqueID;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/dcloud/common/DHInterface/message/EnumUniqueID;->FEATURE_UTS:Lio/dcloud/common/DHInterface/message/EnumUniqueID;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/dcloud/common/DHInterface/message/EnumUniqueID;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lio/dcloud/common/DHInterface/message/EnumUniqueID;->$VALUES:[Lio/dcloud/common/DHInterface/message/EnumUniqueID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/common/DHInterface/message/EnumUniqueID;
    .locals 1

    .line 1
    const-class v0, Lio/dcloud/common/DHInterface/message/EnumUniqueID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/common/DHInterface/message/EnumUniqueID;

    return-object p0
.end method

.method public static values()[Lio/dcloud/common/DHInterface/message/EnumUniqueID;
    .locals 1

    .line 1
    sget-object v0, Lio/dcloud/common/DHInterface/message/EnumUniqueID;->$VALUES:[Lio/dcloud/common/DHInterface/message/EnumUniqueID;

    invoke-virtual {v0}, [Lio/dcloud/common/DHInterface/message/EnumUniqueID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/common/DHInterface/message/EnumUniqueID;

    return-object v0
.end method
