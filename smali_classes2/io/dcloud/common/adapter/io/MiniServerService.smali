.class public Lio/dcloud/common/adapter/io/MiniServerService;
.super Landroid/app/Service;


# instance fields
.field mServiceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/dcloud/common/adapter/io/MiniServerService;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method private startServer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/io/MiniServerService;->mServiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/io/MiniServerService;->mServiceName:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/adapter/io/AdaService;->getServiceListener(Ljava/lang/String;)Lio/dcloud/common/adapter/io/AdaService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lio/dcloud/common/adapter/io/AdaService;->onExecute()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/io/MiniServerService;->mServiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/io/MiniServerService;->mServiceName:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/adapter/io/AdaService;->getServiceListener(Ljava/lang/String;)Lio/dcloud/common/adapter/io/AdaService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lio/dcloud/common/adapter/io/AdaService;->onDestroy()V

    .line 5
    iget-object v0, p0, Lio/dcloud/common/adapter/io/MiniServerService;->mServiceName:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/adapter/io/AdaService;->getServiceListener(Ljava/lang/String;)Lio/dcloud/common/adapter/io/AdaService;

    .line 8
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2

    .line 1
    sget v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/dcloud/common/adapter/io/MiniServerService;->mServiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mini_server"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/common/adapter/io/MiniServerService;->mServiceName:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lio/dcloud/common/adapter/io/MiniServerService;->startServer()V

    .line 5
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 1
    sget v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "mini_server"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/common/adapter/io/MiniServerService;->mServiceName:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lio/dcloud/common/adapter/io/MiniServerService;->startServer()V

    .line 7
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
