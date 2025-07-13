.class public interface abstract Lio/dcloud/sdk/core/api/AOLLoader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/sdk/core/api/AOLLoader$SplashAdLoadListener;,
        Lio/dcloud/sdk/core/api/AOLLoader$ContentPageLoadListener;,
        Lio/dcloud/sdk/core/api/AOLLoader$InterstitialAdLoadListener;,
        Lio/dcloud/sdk/core/api/AOLLoader$FullScreenVideoAdLoadListener;,
        Lio/dcloud/sdk/core/api/AOLLoader$RewardVideoAdLoadListener;,
        Lio/dcloud/sdk/core/api/AOLLoader$AdLoadListener;,
        Lio/dcloud/sdk/core/api/AOLLoader$DrawAdLoadListener;,
        Lio/dcloud/sdk/core/api/AOLLoader$FeedAdLoadListener;,
        Lio/dcloud/sdk/core/api/AOLLoader$SplashAdListener;,
        Lio/dcloud/sdk/core/api/AOLLoader$ContentPageVideoListener;,
        Lio/dcloud/sdk/core/api/AOLLoader$DrawAdInteractionListener;,
        Lio/dcloud/sdk/core/api/AOLLoader$FeedAdInteractionListener;,
        Lio/dcloud/sdk/core/api/AOLLoader$FullScreenVideoAdInteractionListener;,
        Lio/dcloud/sdk/core/api/AOLLoader$InterstitialAdListener;,
        Lio/dcloud/sdk/core/api/AOLLoader$SplashAdInteractionListener;,
        Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;,
        Lio/dcloud/sdk/core/api/AOLLoader$RewardVideoAdInteractionListener;
    }
.end annotation


# virtual methods
.method public abstract getPersonalAd(Landroid/content/Context;)Z
.end method

.method public abstract setPersonalAd(Landroid/content/Context;Z)V
.end method

.method public abstract setPrivacyConfig(Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;)V
.end method
