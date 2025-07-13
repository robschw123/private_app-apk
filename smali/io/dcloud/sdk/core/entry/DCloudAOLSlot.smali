.class public Lio/dcloud/sdk/core/entry/DCloudAOLSlot;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lorg/json/JSONObject;

.field private e:I

.field private f:Z

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method private constructor <init>(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->g:I

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->k:I

    .line 15
    invoke-static {p1}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->a(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->a:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->b(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->b:Ljava/lang/String;

    .line 17
    invoke-static {p1}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->c(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->c:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->d(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;)I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->e:I

    .line 19
    invoke-static {p1}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->e(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;)I

    move-result v0

    iput v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->i:I

    .line 20
    invoke-static {p1}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->f(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;)I

    move-result v0

    iput v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->j:I

    .line 21
    invoke-static {p1}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->g(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;)I

    move-result v0

    iput v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->g:I

    .line 22
    invoke-static {p1}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->h(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->f:Z

    .line 23
    invoke-static {p1}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->i(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->h:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;Lio/dcloud/sdk/core/entry/DCloudAOLSlot$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;-><init>(Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;)V

    return-void
.end method


# virtual methods
.method public getAdpid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getConfig()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->d:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->e:I

    return v0
.end method

.method public getEI()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->j:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->g:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->k:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->i:I

    return v0
.end method

.method public isVideoSoundEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->f:Z

    return v0
.end method

.method public setAdpid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->a:Ljava/lang/String;

    return-void
.end method

.method public setConfig(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->d:Lorg/json/JSONObject;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->k:I

    return-void
.end method
