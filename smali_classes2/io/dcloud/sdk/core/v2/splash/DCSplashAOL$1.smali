.class Lio/dcloud/sdk/core/v2/splash/DCSplashAOL$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/h/c/c/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/core/v2/splash/DCSplashAOL;->load(Lio/dcloud/sdk/core/entry/SplashAOLConfig;Lio/dcloud/sdk/core/v2/splash/DCSplashAOLLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/core/v2/splash/DCSplashAOLLoadListener;

.field final synthetic b:Lio/dcloud/sdk/core/v2/splash/DCSplashAOL;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/core/v2/splash/DCSplashAOL;Lio/dcloud/sdk/core/v2/splash/DCSplashAOLLoadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/core/v2/splash/DCSplashAOL$1;->b:Lio/dcloud/sdk/core/v2/splash/DCSplashAOL;

    iput-object p2, p0, Lio/dcloud/sdk/core/v2/splash/DCSplashAOL$1;->a:Lio/dcloud/sdk/core/v2/splash/DCSplashAOLLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;Lorg/json/JSONArray;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v2/splash/DCSplashAOL$1;->a:Lio/dcloud/sdk/core/v2/splash/DCSplashAOLLoadListener;

    invoke-interface {v0, p1, p2, p3}, Lio/dcloud/sdk/core/v2/base/DCBaseAOLLoadListener;->onError(ILjava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method public onLoaded()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v2/splash/DCSplashAOL$1;->a:Lio/dcloud/sdk/core/v2/splash/DCSplashAOLLoadListener;

    invoke-interface {v0}, Lio/dcloud/sdk/core/v2/splash/DCSplashAOLLoadListener;->onSplashAdLoad()V

    return-void
.end method
