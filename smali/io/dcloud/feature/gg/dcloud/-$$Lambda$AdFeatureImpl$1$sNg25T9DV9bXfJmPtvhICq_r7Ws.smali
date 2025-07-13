.class public final synthetic Lio/dcloud/feature/gg/dcloud/-$$Lambda$AdFeatureImpl$1$sNg25T9DV9bXfJmPtvhICq_r7Ws;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/-$$Lambda$AdFeatureImpl$1$sNg25T9DV9bXfJmPtvhICq_r7Ws;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/-$$Lambda$AdFeatureImpl$1$sNg25T9DV9bXfJmPtvhICq_r7Ws;->f$0:Landroid/content/Context;

    invoke-static {v0}, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$1;->lambda$onSplashAdLoad$0(Landroid/content/Context;)V

    return-void
.end method
