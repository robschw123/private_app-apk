.class public Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$MyHandler;,
        Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;
    }
.end annotation


# static fields
.field private static volatile isRequestSuccess:Z = false

.field private static isSplashClose:Z = false

.field private static mHandler:Landroid/os/Handler;

.field private static retryCount:I

.field private static splashAd:Lio/dcloud/h/c/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$MyHandler;-><init>(Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$1;)V

    sput-object v0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 3
    sput v0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->retryCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 1
    sget-boolean v0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->isRequestSuccess:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->isRequestSuccess:Z

    return p0
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->setRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 1
    sget-boolean v0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->isSplashClose:Z

    return v0
.end method

.method static synthetic access$400()Lio/dcloud/h/c/d/a;
    .locals 1

    .line 1
    sget-object v0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->splashAd:Lio/dcloud/h/c/d/a;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 1
    sget v0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->retryCount:I

    return v0
.end method

.method static synthetic access$508()I
    .locals 2

    .line 1
    sget v0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->retryCount:I

    return v0
.end method

.method static synthetic access$800()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static doForFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const-string v0, "onAppCreate"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "_adio.dcloud.feature.ad.dcloud.ADHandler"

    const-string v2, "doForFeature"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Landroid/content/Context;

    const-string p0, "AdFeatureImpl onAppCreate"

    .line 4
    invoke-static {v2, p0}, Lio/dcloud/common/adapter/util/Logger;->p(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "uniad"

    .line 5
    invoke-static {p0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 7
    invoke-static {p1, v1, p0, v0}, Lio/dcloud/common/adapter/util/SP;->setsBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cgk"

    .line 8
    invoke-static {p1, v1, v2, v0}, Lio/dcloud/common/adapter/util/SP;->setsBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {p1, v1, p0}, Lio/dcloud/common/adapter/util/SP;->removeBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {p1, v1, v2}, Lio/dcloud/common/adapter/util/SP;->removeBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_0
    const-string v0, "pull"

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "ba_pull"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v0, :cond_14

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v0, "save"

    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    check-cast p1, [Ljava/lang/Object;

    .line 68
    aget-object p0, p1, v7

    check-cast p0, Landroid/content/Context;

    .line 69
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/String;

    .line 70
    aget-object p1, p1, v5

    check-cast p1, Ljava/util/HashMap;

    const-string v1, "AdFeatureImpl save"

    .line 71
    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {p0, v0, p1}, Lio/dcloud/feature/gg/AdSplashUtil;->saveOperate(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_4

    :cond_2
    const-string v0, "formatUrl_wanka"

    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    check-cast p1, [Ljava/lang/Object;

    .line 75
    aget-object p0, p1, v5

    check-cast p0, [Ljava/lang/Object;

    .line 76
    aget-object p1, p0, v7

    check-cast p1, Ljava/lang/String;

    .line 77
    aget-object p0, p0, v6

    check-cast p0, Lorg/json/JSONObject;

    .line 78
    invoke-static {p1, p0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->formatUrl(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v0, "handleArgs_wanka"

    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    check-cast p1, [Ljava/lang/Object;

    .line 81
    aget-object p0, p1, v5

    check-cast p0, Lorg/json/JSONObject;

    .line 82
    invoke-static {p0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->getArgsJsonData(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_4
    const-string v0, "onWillCloseSplash"

    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 84
    sput-boolean v6, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->isSplashClose:Z

    .line 85
    sput-boolean v7, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->isRequestSuccess:Z

    .line 86
    check-cast p1, [Ljava/lang/Object;

    .line 87
    aget-object p0, p1, v7

    check-cast p0, Landroid/content/Context;

    .line 88
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_6

    .line 89
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    .line 93
    :cond_5
    sget-object p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->splashAd:Lio/dcloud/h/c/d/a;

    if-eqz p0, :cond_18

    .line 94
    aget-object p1, p1, v5

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lio/dcloud/h/c/d/a;->a(Landroid/view/View;)V

    goto/16 :goto_4

    :cond_6
    :goto_0
    return-object v3

    :cond_7
    const-string v0, "onCloseSplashNoAd"

    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 96
    sput-boolean v6, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->isSplashClose:Z

    .line 97
    check-cast p1, [Ljava/lang/Object;

    .line 98
    aget-object p0, p1, v7

    check-cast p0, Landroid/content/Context;

    .line 99
    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_9

    .line 100
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    const-string p1, "AdFeatureImpl onCloseSplashNoAd"

    .line 104
    invoke-static {v2, p1}, Lio/dcloud/common/adapter/util/Logger;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {p0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->SplashAdIsEnable(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_18

    :cond_9
    :goto_1
    return-object v3

    :cond_a
    const-string v0, "onCreateAdSplash"

    .line 106
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 107
    sget-boolean p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->isRequestSuccess:Z

    if-nez p0, :cond_b

    return-object v3

    .line 108
    :cond_b
    sget-object p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->splashAd:Lio/dcloud/h/c/d/a;

    if-nez p0, :cond_c

    return-object v3

    .line 109
    :cond_c
    sget-boolean p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->isSplashClose:Z

    if-eqz p0, :cond_d

    return-object v3

    .line 111
    :cond_d
    check-cast p1, [Ljava/lang/Object;

    .line 112
    aget-object p0, p1, v7

    check-cast p0, Landroid/content/Context;

    .line 113
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_10

    .line 114
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_2

    .line 118
    :cond_e
    invoke-static {p0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->SplashAdIsEnable(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_f

    return-object v3

    .line 119
    :cond_f
    aget-object p0, p1, v6

    check-cast p0, Lio/dcloud/common/DHInterface/ICallBack;

    const-string p1, "AdFeatureImpl onCreateAdSplash"

    .line 120
    invoke-static {v2, p1}, Lio/dcloud/common/adapter/util/Logger;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    sget-object p1, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->splashAd:Lio/dcloud/h/c/d/a;

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Lio/dcloud/h/c/c/f/c/f/a;->l()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 122
    sget-object p1, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->splashAd:Lio/dcloud/h/c/d/a;

    const-string v1, ""

    invoke-virtual {p1, v0, v1, p0}, Lio/dcloud/h/c/d/a;->a(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_10
    :goto_2
    return-object v3

    :cond_11
    const-string p1, "onAppAttachBaseContext"

    .line 124
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const-string p0, "AdFeatureImpl onAppAttachBaseContext"

    .line 125
    invoke-static {v2, p0}, Lio/dcloud/common/adapter/util/Logger;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_12
    const-string p1, "onSplashclosed"

    .line 126
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 127
    sget-object p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->splashAd:Lio/dcloud/h/c/d/a;

    if-eqz p0, :cond_13

    .line 128
    invoke-virtual {p0}, Lio/dcloud/h/c/d/a;->w()V

    .line 130
    :cond_13
    sput-object v3, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->splashAd:Lio/dcloud/h/c/d/a;

    goto/16 :goto_4

    .line 131
    :cond_14
    :goto_3
    check-cast p1, [Ljava/lang/Object;

    .line 132
    aget-object v0, p1, v7

    check-cast v0, Landroid/content/Context;

    .line 133
    aget-object v2, p1, v6

    check-cast v2, Ljava/lang/String;

    .line 134
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 136
    invoke-static {}, Lio/dcloud/e/c/g;->b()Z

    move-result p0

    if-eqz p0, :cond_15

    invoke-static {v0, v2}, Lio/dcloud/e/c/h/a;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_15

    return-object v3

    .line 140
    :cond_15
    invoke-static {v0, v1}, Lio/dcloud/e/f/b;->a(Landroid/content/Context;Ljava/lang/String;)Lio/dcloud/e/f/b;

    const/4 p0, 0x3

    new-array p0, p0, [Lio/dcloud/feature/gg/dcloud/IADReceiver;

    .line 141
    new-instance v1, Lio/dcloud/feature/gg/dcloud/ADHandler$ADReceiver;

    invoke-direct {v1, v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$ADReceiver;-><init>(Landroid/content/Context;)V

    aput-object v1, p0, v7

    new-instance v1, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;

    invoke-direct {v1, v0}, Lio/dcloud/feature/gg/dcloud/ADResult$CADReceiver;-><init>(Landroid/content/Context;)V

    aput-object v1, p0, v6

    new-instance v1, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;

    invoke-direct {v1, v0, p1, v2}, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$AdReceiver;-><init>(Landroid/content/Context;[Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, p0, v5

    invoke-static {v0, v2, v7, v3, p0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->pull(Landroid/content/Context;Ljava/lang/String;ZLjava/util/List;[Lio/dcloud/feature/gg/dcloud/IADReceiver;)V

    .line 142
    aget-object p0, p1, v5

    invoke-static {p0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    aget-object p0, p1, v5

    const-string p1, "RETRY"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    :cond_16
    invoke-static {v0}, Lio/dcloud/common/util/AppRuntime;->hasPrivacyForNotShown(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_17

    .line 143
    sput-object v3, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->splashAd:Lio/dcloud/h/c/d/a;

    .line 144
    sput-boolean v7, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->isSplashClose:Z

    .line 145
    sput-boolean v7, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->isRequestSuccess:Z

    .line 146
    sget-object p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 147
    sput v7, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->retryCount:I

    .line 148
    new-instance p0, Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;

    invoke-direct {p0}, Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;-><init>()V

    invoke-virtual {p0, v7}, Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;->width(I)Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;

    move-result-object p0

    invoke-virtual {p0, v7}, Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;->height(I)Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/sdk/core/entry/SplashAOLConfig$Builder;->build()Lio/dcloud/sdk/core/entry/SplashAOLConfig;

    move-result-object p0

    .line 149
    new-instance p1, Lio/dcloud/h/c/d/a;

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-direct {p1, v1}, Lio/dcloud/h/c/d/a;-><init>(Landroid/app/Activity;)V

    sput-object p1, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->splashAd:Lio/dcloud/h/c/d/a;

    .line 150
    new-instance v1, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$1;

    invoke-direct {v1, v0}, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p0, v1, v7}, Lio/dcloud/h/c/d/a;->a(Lio/dcloud/sdk/core/entry/SplashAOLConfig;Lio/dcloud/sdk/core/v2/splash/DCSplashAOLLoadListener;Z)V

    .line 182
    :cond_17
    invoke-static {v7}, Lio/dcloud/feature/gg/AdSplashUtil;->setShowInterstitialAd(Z)V

    :cond_18
    :goto_4
    return-object v3
.end method

.method private static setRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "io.dcloud.HBuilder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lio/dcloud/feature/gg/dcloud/ADHandler;->postSplashError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_0
    return-void
.end method
