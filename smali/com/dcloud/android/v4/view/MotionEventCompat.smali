.class public Lcom/dcloud/android/v4/view/MotionEventCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dcloud/android/v4/view/MotionEventCompat$HoneycombMr1MotionEventVersionImpl;,
        Lcom/dcloud/android/v4/view/MotionEventCompat$GingerbreadMotionEventVersionImpl;,
        Lcom/dcloud/android/v4/view/MotionEventCompat$EclairMotionEventVersionImpl;,
        Lcom/dcloud/android/v4/view/MotionEventCompat$BaseMotionEventVersionImpl;,
        Lcom/dcloud/android/v4/view/MotionEventCompat$MotionEventVersionImpl;
    }
.end annotation


# static fields
.field public static final ACTION_HOVER_ENTER:I = 0x9

.field public static final ACTION_HOVER_EXIT:I = 0xa

.field public static final ACTION_HOVER_MOVE:I = 0x7

.field public static final ACTION_MASK:I = 0xff

.field public static final ACTION_POINTER_DOWN:I = 0x5

.field public static final ACTION_POINTER_INDEX_MASK:I = 0xff00

.field public static final ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field public static final ACTION_POINTER_UP:I = 0x6

.field public static final ACTION_SCROLL:I = 0x8

.field public static final AXIS_BRAKE:I = 0x17

.field public static final AXIS_DISTANCE:I = 0x18

.field public static final AXIS_GAS:I = 0x16

.field public static final AXIS_GENERIC_1:I = 0x20

.field public static final AXIS_GENERIC_10:I = 0x29

.field public static final AXIS_GENERIC_11:I = 0x2a

.field public static final AXIS_GENERIC_12:I = 0x2b

.field public static final AXIS_GENERIC_13:I = 0x2c

.field public static final AXIS_GENERIC_14:I = 0x2d

.field public static final AXIS_GENERIC_15:I = 0x2e

.field public static final AXIS_GENERIC_16:I = 0x2f

.field public static final AXIS_GENERIC_2:I = 0x21

.field public static final AXIS_GENERIC_3:I = 0x22

.field public static final AXIS_GENERIC_4:I = 0x23

.field public static final AXIS_GENERIC_5:I = 0x24

.field public static final AXIS_GENERIC_6:I = 0x25

.field public static final AXIS_GENERIC_7:I = 0x26

.field public static final AXIS_GENERIC_8:I = 0x27

.field public static final AXIS_GENERIC_9:I = 0x28

.field public static final AXIS_HAT_X:I = 0xf

.field public static final AXIS_HAT_Y:I = 0x10

.field public static final AXIS_HSCROLL:I = 0xa

.field public static final AXIS_LTRIGGER:I = 0x11

.field public static final AXIS_ORIENTATION:I = 0x8

.field public static final AXIS_PRESSURE:I = 0x2

.field public static final AXIS_RTRIGGER:I = 0x12

.field public static final AXIS_RUDDER:I = 0x14

.field public static final AXIS_RX:I = 0xc

.field public static final AXIS_RY:I = 0xd

.field public static final AXIS_RZ:I = 0xe

.field public static final AXIS_SIZE:I = 0x3

.field public static final AXIS_THROTTLE:I = 0x13

.field public static final AXIS_TILT:I = 0x19

.field public static final AXIS_TOOL_MAJOR:I = 0x6

.field public static final AXIS_TOOL_MINOR:I = 0x7

.field public static final AXIS_TOUCH_MAJOR:I = 0x4

.field public static final AXIS_TOUCH_MINOR:I = 0x5

.field public static final AXIS_VSCROLL:I = 0x9

.field public static final AXIS_WHEEL:I = 0x15

.field public static final AXIS_X:I = 0x0

.field public static final AXIS_Y:I = 0x1

.field public static final AXIS_Z:I = 0xb

.field static final IMPL:Lcom/dcloud/android/v4/view/MotionEventCompat$MotionEventVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/dcloud/android/v4/view/MotionEventCompat$HoneycombMr1MotionEventVersionImpl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/MotionEventCompat$HoneycombMr1MotionEventVersionImpl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/MotionEventCompat;->IMPL:Lcom/dcloud/android/v4/view/MotionEventCompat$MotionEventVersionImpl;

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 4
    new-instance v0, Lcom/dcloud/android/v4/view/MotionEventCompat$GingerbreadMotionEventVersionImpl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/MotionEventCompat$GingerbreadMotionEventVersionImpl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/MotionEventCompat;->IMPL:Lcom/dcloud/android/v4/view/MotionEventCompat$MotionEventVersionImpl;

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    .line 6
    new-instance v0, Lcom/dcloud/android/v4/view/MotionEventCompat$EclairMotionEventVersionImpl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/MotionEventCompat$EclairMotionEventVersionImpl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/MotionEventCompat;->IMPL:Lcom/dcloud/android/v4/view/MotionEventCompat$MotionEventVersionImpl;

    goto :goto_0

    .line 8
    :cond_2
    new-instance v0, Lcom/dcloud/android/v4/view/MotionEventCompat$BaseMotionEventVersionImpl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/MotionEventCompat$BaseMotionEventVersionImpl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/MotionEventCompat;->IMPL:Lcom/dcloud/android/v4/view/MotionEventCompat$MotionEventVersionImpl;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 1

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/MotionEventCompat;->IMPL:Lcom/dcloud/android/v4/view/MotionEventCompat$MotionEventVersionImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/MotionEventCompat$MotionEventVersionImpl;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result p0

    return p0
.end method

.method public static getActionIndex(Landroid/view/MotionEvent;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    const v0, 0xff00

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static getActionMasked(Landroid/view/MotionEvent;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static getAxisValue(Landroid/view/MotionEvent;I)F
    .locals 1

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/MotionEventCompat;->IMPL:Lcom/dcloud/android/v4/view/MotionEventCompat$MotionEventVersionImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/MotionEventCompat$MotionEventVersionImpl;->getAxisValue(Landroid/view/MotionEvent;I)F

    move-result p0

    return p0
.end method

.method public static getAxisValue(Landroid/view/MotionEvent;II)F
    .locals 1

    .line 2
    sget-object v0, Lcom/dcloud/android/v4/view/MotionEventCompat;->IMPL:Lcom/dcloud/android/v4/view/MotionEventCompat$MotionEventVersionImpl;

    invoke-interface {v0, p0, p1, p2}, Lcom/dcloud/android/v4/view/MotionEventCompat$MotionEventVersionImpl;->getAxisValue(Landroid/view/MotionEvent;II)F

    move-result p0

    return p0
.end method

.method public static getPointerCount(Landroid/view/MotionEvent;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/MotionEventCompat;->IMPL:Lcom/dcloud/android/v4/view/MotionEventCompat$MotionEventVersionImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/MotionEventCompat$MotionEventVersionImpl;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result p0

    return p0
.end method

.method public static getPointerId(Landroid/view/MotionEvent;I)I
    .locals 1

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/MotionEventCompat;->IMPL:Lcom/dcloud/android/v4/view/MotionEventCompat$MotionEventVersionImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/MotionEventCompat$MotionEventVersionImpl;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p0

    return p0
.end method

.method public static getSource(Landroid/view/MotionEvent;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/MotionEventCompat;->IMPL:Lcom/dcloud/android/v4/view/MotionEventCompat$MotionEventVersionImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/MotionEventCompat$MotionEventVersionImpl;->getSource(Landroid/view/MotionEvent;)I

    move-result p0

    return p0
.end method

.method public static getX(Landroid/view/MotionEvent;I)F
    .locals 1

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/MotionEventCompat;->IMPL:Lcom/dcloud/android/v4/view/MotionEventCompat$MotionEventVersionImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/MotionEventCompat$MotionEventVersionImpl;->getX(Landroid/view/MotionEvent;I)F

    move-result p0

    return p0
.end method

.method public static getY(Landroid/view/MotionEvent;I)F
    .locals 1

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/MotionEventCompat;->IMPL:Lcom/dcloud/android/v4/view/MotionEventCompat$MotionEventVersionImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/MotionEventCompat$MotionEventVersionImpl;->getY(Landroid/view/MotionEvent;I)F

    move-result p0

    return p0
.end method
