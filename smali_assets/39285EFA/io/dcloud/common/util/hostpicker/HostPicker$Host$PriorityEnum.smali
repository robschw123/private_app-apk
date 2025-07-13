.class public final enum Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/hostpicker/HostPicker$Host;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PriorityEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

.field public static final enum BACKUP:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

.field public static final enum FIRST:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

.field public static final enum NORMAL:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;


# instance fields
.field val:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->NORMAL:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    .line 5
    new-instance v1, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    const-string v3, "FIRST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->FIRST:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    .line 9
    new-instance v3, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    const-string v5, "BACKUP"

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-direct {v3, v5, v6, v7}, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->BACKUP:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 10
    sput-object v5, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->$VALUES:[Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->val:I

    .line 5
    iput p3, p0, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->val:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;
    .locals 1

    .line 1
    const-class v0, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    return-object p0
.end method

.method public static values()[Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;
    .locals 1

    .line 1
    sget-object v0, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->$VALUES:[Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    invoke-virtual {v0}, [Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    return-object v0
.end method
