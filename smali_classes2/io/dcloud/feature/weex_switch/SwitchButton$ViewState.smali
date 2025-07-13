.class Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;
.super Ljava/lang/Object;
.source "SwitchButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex_switch/SwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewState"
.end annotation


# instance fields
.field buttonX:F

.field checkStateColor:I

.field checkedLineColor:I

.field radius:F


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;)V
    .locals 0

    .line 1177
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->copy(Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;)V

    return-void
.end method

.method private copy(Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 1196
    iget v0, p1, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->buttonX:F

    iput v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->buttonX:F

    .line 1197
    iget v0, p1, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkStateColor:I

    iput v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkStateColor:I

    .line 1198
    iget v0, p1, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkedLineColor:I

    iput v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkedLineColor:I

    .line 1199
    iget p1, p1, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->radius:F

    iput p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->radius:F

    return-void
.end method
