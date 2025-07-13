.class public final synthetic Lio/dcloud/common/util/-$$Lambda$AppRuntime$_ZSq3SuXcfKmm3Jn1F1hS3RLdmo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lio/dcloud/common/util/-$$Lambda$AppRuntime$_ZSq3SuXcfKmm3Jn1F1hS3RLdmo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/dcloud/common/util/-$$Lambda$AppRuntime$_ZSq3SuXcfKmm3Jn1F1hS3RLdmo;

    invoke-direct {v0}, Lio/dcloud/common/util/-$$Lambda$AppRuntime$_ZSq3SuXcfKmm3Jn1F1hS3RLdmo;-><init>()V

    sput-object v0, Lio/dcloud/common/util/-$$Lambda$AppRuntime$_ZSq3SuXcfKmm3Jn1F1hS3RLdmo;->INSTANCE:Lio/dcloud/common/util/-$$Lambda$AppRuntime$_ZSq3SuXcfKmm3Jn1F1hS3RLdmo;

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

    check-cast p1, Lio/dcloud/common/DHInterface/IWebview;

    invoke-static {p1}, Lio/dcloud/common/util/AppRuntime;->lambda$switchAllWebViewDarkMode$1(Lio/dcloud/common/DHInterface/IWebview;)V

    return-void
.end method
