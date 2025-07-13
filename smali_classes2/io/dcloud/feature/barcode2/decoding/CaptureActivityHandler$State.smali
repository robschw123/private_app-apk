.class final enum Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

.field public static final enum DONE:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

.field public static final enum PREVIEW:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

.field public static final enum SUCCESS:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    const-string v1, "PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;->PREVIEW:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    .line 2
    new-instance v1, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    const-string v3, "SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;->SUCCESS:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    .line 3
    new-instance v3, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    const-string v5, "DONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;->DONE:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;->$VALUES:[Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;
    .locals 1

    .line 1
    const-class v0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    return-object p0
.end method

.method public static values()[Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;
    .locals 1

    .line 1
    sget-object v0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;->$VALUES:[Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    invoke-virtual {v0}, [Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    return-object v0
.end method
