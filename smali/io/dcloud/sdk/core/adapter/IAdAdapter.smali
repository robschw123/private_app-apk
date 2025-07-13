.class public interface abstract Lio/dcloud/sdk/core/adapter/IAdAdapter;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getAd(Landroid/app/Activity;Lio/dcloud/sdk/core/entry/DCloudAOLSlot;)Lio/dcloud/sdk/core/module/DCBaseAOLLoader;
.end method

.method public abstract getAdapterSDKVersion()Ljava/lang/String;
.end method

.method public abstract getSDKVersion()Ljava/lang/String;
.end method

.method public abstract isSupport()Z
.end method

.method public abstract setPersonalAd(Z)V
.end method

.method public abstract updatePrivacyConfig(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method
