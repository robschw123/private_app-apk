.class public final synthetic Lio/dcloud/common/util/-$$Lambda$AppRuntime$iO-siCkjBhiP8W7dUfTQnPok5DM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lio/dcloud/common/util/-$$Lambda$AppRuntime$iO-siCkjBhiP8W7dUfTQnPok5DM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/dcloud/common/util/-$$Lambda$AppRuntime$iO-siCkjBhiP8W7dUfTQnPok5DM;

    invoke-direct {v0}, Lio/dcloud/common/util/-$$Lambda$AppRuntime$iO-siCkjBhiP8W7dUfTQnPok5DM;-><init>()V

    sput-object v0, Lio/dcloud/common/util/-$$Lambda$AppRuntime$iO-siCkjBhiP8W7dUfTQnPok5DM;->INSTANCE:Lio/dcloud/common/util/-$$Lambda$AppRuntime$iO-siCkjBhiP8W7dUfTQnPok5DM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lio/dcloud/common/util/AppRuntime;->lambda$switchAllWebViewDarkMode$0(Landroid/view/View;)V

    return-void
.end method
