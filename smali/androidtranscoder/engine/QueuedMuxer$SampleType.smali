.class public final enum Landroidtranscoder/engine/QueuedMuxer$SampleType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidtranscoder/engine/QueuedMuxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SampleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidtranscoder/engine/QueuedMuxer$SampleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidtranscoder/engine/QueuedMuxer$SampleType;

.field public static final enum AUDIO:Landroidtranscoder/engine/QueuedMuxer$SampleType;

.field public static final enum VIDEO:Landroidtranscoder/engine/QueuedMuxer$SampleType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroidtranscoder/engine/QueuedMuxer$SampleType;

    const-string v1, "VIDEO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidtranscoder/engine/QueuedMuxer$SampleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidtranscoder/engine/QueuedMuxer$SampleType;->VIDEO:Landroidtranscoder/engine/QueuedMuxer$SampleType;

    new-instance v1, Landroidtranscoder/engine/QueuedMuxer$SampleType;

    const-string v3, "AUDIO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidtranscoder/engine/QueuedMuxer$SampleType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidtranscoder/engine/QueuedMuxer$SampleType;->AUDIO:Landroidtranscoder/engine/QueuedMuxer$SampleType;

    const/4 v3, 0x2

    new-array v3, v3, [Landroidtranscoder/engine/QueuedMuxer$SampleType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Landroidtranscoder/engine/QueuedMuxer$SampleType;->$VALUES:[Landroidtranscoder/engine/QueuedMuxer$SampleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidtranscoder/engine/QueuedMuxer$SampleType;
    .locals 1

    .line 1
    const-class v0, Landroidtranscoder/engine/QueuedMuxer$SampleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidtranscoder/engine/QueuedMuxer$SampleType;

    return-object p0
.end method

.method public static values()[Landroidtranscoder/engine/QueuedMuxer$SampleType;
    .locals 1

    .line 1
    sget-object v0, Landroidtranscoder/engine/QueuedMuxer$SampleType;->$VALUES:[Landroidtranscoder/engine/QueuedMuxer$SampleType;

    invoke-virtual {v0}, [Landroidtranscoder/engine/QueuedMuxer$SampleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidtranscoder/engine/QueuedMuxer$SampleType;

    return-object v0
.end method
