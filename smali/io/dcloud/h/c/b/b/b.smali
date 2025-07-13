.class public Lio/dcloud/h/c/b/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/sdk/core/adapter/IAdAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/h/c/b/b/b$a;,
        Lio/dcloud/h/c/b/b/b$b;,
        Lio/dcloud/h/c/b/b/b$c;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAd(Landroid/app/Activity;Lio/dcloud/sdk/core/entry/DCloudAOLSlot;)Lio/dcloud/sdk/core/module/DCBaseAOLLoader;
    .locals 2

    .line 1
    invoke-virtual {p2}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lio/dcloud/h/c/b/b/b$c;

    invoke-direct {v0, p0, p2, p1}, Lio/dcloud/h/c/b/b/b$c;-><init>(Lio/dcloud/h/c/b/b/b;Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Landroid/app/Activity;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAdapterSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isSupport()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setPersonalAd(Z)V
    .locals 0

    return-void
.end method

.method public updatePrivacyConfig(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
