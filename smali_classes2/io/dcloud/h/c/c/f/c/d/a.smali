.class public Lio/dcloud/h/c/c/f/c/d/a;
.super Lio/dcloud/h/c/c/f/c/f/a;

# interfaces
.implements Lio/dcloud/sdk/core/api/AOLLoader$RewardVideoAdInteractionListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/16 v0, 0x9

    .line 1
    invoke-direct {p0, p1, v0}, Lio/dcloud/h/c/c/f/c/f/a;-><init>(Landroid/app/Activity;I)V

    return-void
.end method

.method private synthetic b(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/f/a;->q:Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    instance-of v1, v0, Lio/dcloud/sdk/core/api/AOLLoader$RewardVideoAdInteractionListener;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lio/dcloud/sdk/core/api/AOLLoader$RewardVideoAdInteractionListener;

    invoke-interface {v0, p1}, Lio/dcloud/sdk/core/api/AOLLoader$RewardVideoAdInteractionListener;->onReward(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$dfDW78OTDWEj5A8k-G_l0ml1oUY(Lio/dcloud/h/c/c/f/c/d/a;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/dcloud/h/c/c/f/c/d/a;->b(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public onReward(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/h/c/c/f/c/d/-$$Lambda$a$dfDW78OTDWEj5A8k-G_l0ml1oUY;

    invoke-direct {v1, p0, p1}, Lio/dcloud/h/c/c/f/c/d/-$$Lambda$a$dfDW78OTDWEj5A8k-G_l0ml1oUY;-><init>(Lio/dcloud/h/c/c/f/c/d/a;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
