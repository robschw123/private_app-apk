.class public Lio/dcloud/sdk/poly/base/utils/PrivacyManager$a;
.super Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/poly/base/utils/PrivacyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private aId:Ljava/lang/String;

.field private imeis:[Ljava/lang/String;

.field private imsis:Ljava/lang/String;

.field private isAllowPrivacy:Z

.field private mac:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/dcloud/sdk/poly/base/utils/PrivacyManager$a;->isAllowPrivacy:Z

    return-void
.end method


# virtual methods
.method public getAndroidId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/poly/base/utils/PrivacyManager$a;->aId:Ljava/lang/String;

    return-object v0
.end method

.method public getImeis()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/poly/base/utils/PrivacyManager$a;->imeis:[Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/poly/base/utils/PrivacyManager$a;->imsis:Ljava/lang/String;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/poly/base/utils/PrivacyManager$a;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public isAllowPrivacy()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/dcloud/sdk/poly/base/utils/PrivacyManager$a;->isAllowPrivacy:Z

    return v0
.end method

.method public setAllowPrivacy(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/dcloud/sdk/poly/base/utils/PrivacyManager$a;->isAllowPrivacy:Z

    return-void
.end method

.method public setAndroidId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/poly/base/utils/PrivacyManager$a;->aId:Ljava/lang/String;

    return-void
.end method

.method public setImeis([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/poly/base/utils/PrivacyManager$a;->imeis:[Ljava/lang/String;

    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/poly/base/utils/PrivacyManager$a;->imsis:Ljava/lang/String;

    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/poly/base/utils/PrivacyManager$a;->mac:Ljava/lang/String;

    return-void
.end method
