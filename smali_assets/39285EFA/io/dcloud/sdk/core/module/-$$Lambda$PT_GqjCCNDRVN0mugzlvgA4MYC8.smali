.class public final synthetic Lio/dcloud/sdk/core/module/-$$Lambda$PT_GqjCCNDRVN0mugzlvgA4MYC8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;


# direct methods
.method public synthetic constructor <init>(Lio/dcloud/sdk/core/module/DCBaseAOLLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dcloud/sdk/core/module/-$$Lambda$PT_GqjCCNDRVN0mugzlvgA4MYC8;->f$0:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/dcloud/sdk/core/module/-$$Lambda$PT_GqjCCNDRVN0mugzlvgA4MYC8;->f$0:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    invoke-virtual {v0}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->load()V

    return-void
.end method
