.class Lio/dcloud/common/util/emulator/CommandUtil$SingletonHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/emulator/CommandUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lio/dcloud/common/util/emulator/CommandUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/dcloud/common/util/emulator/CommandUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/dcloud/common/util/emulator/CommandUtil;-><init>(Lio/dcloud/common/util/emulator/CommandUtil$1;)V

    sput-object v0, Lio/dcloud/common/util/emulator/CommandUtil$SingletonHolder;->INSTANCE:Lio/dcloud/common/util/emulator/CommandUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lio/dcloud/common/util/emulator/CommandUtil;
    .locals 1

    .line 1
    sget-object v0, Lio/dcloud/common/util/emulator/CommandUtil$SingletonHolder;->INSTANCE:Lio/dcloud/common/util/emulator/CommandUtil;

    return-object v0
.end method
