.class public Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/DCloudAOLManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivacyConfig"
.end annotation


# instance fields
.field private isAdult:Z

.field private isCanGetAndroidId:Z

.field private isCanGetInstallAppList:Z

.field private isCanGetMacAddress:Z

.field private isCanGetRunningApps:Z

.field private isCanUseLocation:Z

.field private isCanUsePhoneState:Z

.field private isCanUseStorage:Z

.field private isCanUseWifiState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;->isAdult:Z

    .line 4
    iput-boolean v0, p0, Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;->isCanUsePhoneState:Z

    .line 5
    iput-boolean v0, p0, Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;->isCanUseStorage:Z

    .line 6
    iput-boolean v0, p0, Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;->isCanUseLocation:Z

    .line 7
    iput-boolean v0, p0, Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;->isCanUseWifiState:Z

    .line 8
    iput-boolean v0, p0, Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;->isCanGetInstallAppList:Z

    .line 9
    iput-boolean v0, p0, Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;->isCanGetRunningApps:Z

    .line 10
    iput-boolean v0, p0, Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;->isCanGetMacAddress:Z

    .line 11
    iput-boolean v0, p0, Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;->isCanGetAndroidId:Z

    return-void
.end method


# virtual methods
.method public isAdult()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;->isAdult:Z

    return v0
.end method

.method public isCanGetAndroidId()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;->isCanGetAndroidId:Z

    return v0
.end method

.method public isCanGetInstallAppList()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;->isCanGetInstallAppList:Z

    return v0
.end method

.method public isCanGetMacAddress()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;->isCanGetMacAddress:Z

    return v0
.end method

.method public isCanGetRunningApps()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;->isCanGetRunningApps:Z

    return v0
.end method

.method public isCanUseLocation()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;->isCanUseLocation:Z

    return v0
.end method

.method public isCanUsePhoneState()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;->isCanUsePhoneState:Z

    return v0
.end method

.method public isCanUseStorage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;->isCanUseStorage:Z

    return v0
.end method

.method public isCanUseWifiState()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;->isCanUseWifiState:Z

    return v0
.end method

.method public setAdult(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;->isAdult:Z

    return-void
.end method

.method public setCanGetAndroidId(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;->isCanGetAndroidId:Z

    return-void
.end method

.method public setCanGetInstallAppList(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;->isCanGetInstallAppList:Z

    return-void
.end method

.method public setCanGetMacAddress(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;->isCanGetMacAddress:Z

    return-void
.end method

.method public setCanGetRunningApps(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;->isCanGetRunningApps:Z

    return-void
.end method

.method public setCanUseLocation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;->isCanUseLocation:Z

    return-void
.end method

.method public setCanUsePhoneState(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;->isCanUsePhoneState:Z

    return-void
.end method

.method public setCanUseStorage(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;->isCanUseStorage:Z

    return-void
.end method

.method public setCanUseWifiState(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;->isCanUseWifiState:Z

    return-void
.end method
