.class synthetic Landroidtranscoder/engine/QueuedMuxer$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidtranscoder/engine/QueuedMuxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidtranscoder$engine$QueuedMuxer$SampleType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Landroidtranscoder/engine/QueuedMuxer$SampleType;->values()[Landroidtranscoder/engine/QueuedMuxer$SampleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidtranscoder/engine/QueuedMuxer$1;->$SwitchMap$androidtranscoder$engine$QueuedMuxer$SampleType:[I

    :try_start_0
    sget-object v1, Landroidtranscoder/engine/QueuedMuxer$SampleType;->VIDEO:Landroidtranscoder/engine/QueuedMuxer$SampleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Landroidtranscoder/engine/QueuedMuxer$1;->$SwitchMap$androidtranscoder$engine$QueuedMuxer$SampleType:[I

    sget-object v1, Landroidtranscoder/engine/QueuedMuxer$SampleType;->AUDIO:Landroidtranscoder/engine/QueuedMuxer$SampleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
