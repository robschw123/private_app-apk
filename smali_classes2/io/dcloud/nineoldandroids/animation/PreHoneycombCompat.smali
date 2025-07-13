.class final Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;
.super Ljava/lang/Object;


# static fields
.field static ALPHA:Lio/dcloud/nineoldandroids/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/nineoldandroids/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static PIVOT_X:Lio/dcloud/nineoldandroids/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/nineoldandroids/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static PIVOT_Y:Lio/dcloud/nineoldandroids/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/nineoldandroids/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static ROTATION:Lio/dcloud/nineoldandroids/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/nineoldandroids/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static ROTATION_X:Lio/dcloud/nineoldandroids/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/nineoldandroids/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static ROTATION_Y:Lio/dcloud/nineoldandroids/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/nineoldandroids/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static SCALE_X:Lio/dcloud/nineoldandroids/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/nineoldandroids/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static SCALE_Y:Lio/dcloud/nineoldandroids/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/nineoldandroids/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static SCROLL_X:Lio/dcloud/nineoldandroids/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/nineoldandroids/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static SCROLL_Y:Lio/dcloud/nineoldandroids/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/nineoldandroids/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static TRANSLATION_X:Lio/dcloud/nineoldandroids/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/nineoldandroids/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static TRANSLATION_Y:Lio/dcloud/nineoldandroids/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/nineoldandroids/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static X:Lio/dcloud/nineoldandroids/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/nineoldandroids/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static Y:Lio/dcloud/nineoldandroids/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dcloud/nineoldandroids/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$1;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->ALPHA:Lio/dcloud/nineoldandroids/util/Property;

    .line 12
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$2;

    const-string v1, "pivotX"

    invoke-direct {v0, v1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->PIVOT_X:Lio/dcloud/nineoldandroids/util/Property;

    .line 23
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$3;

    const-string v1, "pivotY"

    invoke-direct {v0, v1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->PIVOT_Y:Lio/dcloud/nineoldandroids/util/Property;

    .line 34
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$4;

    const-string v1, "translationX"

    invoke-direct {v0, v1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->TRANSLATION_X:Lio/dcloud/nineoldandroids/util/Property;

    .line 45
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$5;

    const-string v1, "translationY"

    invoke-direct {v0, v1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->TRANSLATION_Y:Lio/dcloud/nineoldandroids/util/Property;

    .line 56
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$6;

    const-string v1, "rotation"

    invoke-direct {v0, v1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->ROTATION:Lio/dcloud/nineoldandroids/util/Property;

    .line 67
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$7;

    const-string v1, "rotationX"

    invoke-direct {v0, v1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->ROTATION_X:Lio/dcloud/nineoldandroids/util/Property;

    .line 78
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$8;

    const-string v1, "rotationY"

    invoke-direct {v0, v1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->ROTATION_Y:Lio/dcloud/nineoldandroids/util/Property;

    .line 89
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$9;

    const-string v1, "scaleX"

    invoke-direct {v0, v1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->SCALE_X:Lio/dcloud/nineoldandroids/util/Property;

    .line 100
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$10;

    const-string v1, "scaleY"

    invoke-direct {v0, v1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->SCALE_Y:Lio/dcloud/nineoldandroids/util/Property;

    .line 111
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$11;

    const-string v1, "scrollX"

    invoke-direct {v0, v1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$11;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->SCROLL_X:Lio/dcloud/nineoldandroids/util/Property;

    .line 122
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$12;

    const-string v1, "scrollY"

    invoke-direct {v0, v1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$12;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->SCROLL_Y:Lio/dcloud/nineoldandroids/util/Property;

    .line 133
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$13;

    const-string v1, "x"

    invoke-direct {v0, v1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$13;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->X:Lio/dcloud/nineoldandroids/util/Property;

    .line 144
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$14;

    const-string v1, "y"

    invoke-direct {v0, v1}, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat$14;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/PreHoneycombCompat;->Y:Lio/dcloud/nineoldandroids/util/Property;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
