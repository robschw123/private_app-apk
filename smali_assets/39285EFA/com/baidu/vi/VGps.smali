.class public Lcom/baidu/vi/VGps;
.super Ljava/lang/Object;
.source "VGps.java"


# static fields
.field private static e:I = 0x3

.field private static h:Landroid/os/Handler;


# instance fields
.field private a:Landroid/location/GpsStatus$Listener;

.field private b:Landroid/location/LocationListener;

.field private c:Landroid/location/LocationManager;

.field private d:Landroid/location/GpsStatus;

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 127
    new-instance v0, Lcom/baidu/vi/h;

    invoke-direct {v0}, Lcom/baidu/vi/h;-><init>()V

    sput-object v0, Lcom/baidu/vi/VGps;->h:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/baidu/vi/f;

    invoke-direct {v0, p0}, Lcom/baidu/vi/f;-><init>(Lcom/baidu/vi/VGps;)V

    iput-object v0, p0, Lcom/baidu/vi/VGps;->a:Landroid/location/GpsStatus$Listener;

    .line 77
    new-instance v0, Lcom/baidu/vi/g;

    invoke-direct {v0, p0}, Lcom/baidu/vi/g;-><init>(Lcom/baidu/vi/VGps;)V

    iput-object v0, p0, Lcom/baidu/vi/VGps;->b:Landroid/location/LocationListener;

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/baidu/vi/VGps;->c:Landroid/location/LocationManager;

    .line 113
    iput-object v0, p0, Lcom/baidu/vi/VGps;->d:Landroid/location/GpsStatus;

    const/4 v0, 0x0

    .line 115
    iput v0, p0, Lcom/baidu/vi/VGps;->f:I

    .line 119
    iput v0, p0, Lcom/baidu/vi/VGps;->g:I

    return-void
.end method

.method static synthetic a()I
    .locals 1

    .line 28
    sget v0, Lcom/baidu/vi/VGps;->e:I

    return v0
.end method

.method static synthetic a(Lcom/baidu/vi/VGps;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/baidu/vi/VGps;->f:I

    return p1
.end method

.method static synthetic a(Lcom/baidu/vi/VGps;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/baidu/vi/VGps;->d:Landroid/location/GpsStatus;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/vi/VGps;)Landroid/location/LocationManager;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/baidu/vi/VGps;->c:Landroid/location/LocationManager;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/vi/VGps;Landroid/location/LocationManager;)Landroid/location/LocationManager;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/baidu/vi/VGps;->c:Landroid/location/LocationManager;

    return-object p1
.end method

.method static synthetic b(Lcom/baidu/vi/VGps;)Landroid/location/GpsStatus;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/baidu/vi/VGps;->d:Landroid/location/GpsStatus;

    return-object p0
.end method

.method private declared-synchronized b()V
    .locals 4

    monitor-enter p0

    .line 169
    :try_start_0
    sget-object v0, Lcom/baidu/vi/VGps;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    sget-object v0, Lcom/baidu/vi/VGps;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 171
    sget-object v1, Lcom/baidu/vi/VGps;->h:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/baidu/vi/VGps;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/baidu/vi/VGps;->f:I

    return p0
.end method

.method static synthetic d(Lcom/baidu/vi/VGps;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/baidu/vi/VGps;->b()V

    return-void
.end method

.method static synthetic e(Lcom/baidu/vi/VGps;)Landroid/location/GpsStatus$Listener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/baidu/vi/VGps;->a:Landroid/location/GpsStatus$Listener;

    return-object p0
.end method

.method static synthetic f(Lcom/baidu/vi/VGps;)Landroid/location/LocationListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/baidu/vi/VGps;->b:Landroid/location/LocationListener;

    return-object p0
.end method


# virtual methods
.method public getGpsSatellitesNum()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/baidu/vi/VGps;->f:I

    return v0
.end method

.method public init()Z
    .locals 2

    .line 176
    sget-object v0, Lcom/baidu/vi/VGps;->h:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 177
    sget-object v0, Lcom/baidu/vi/VGps;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public unInit()Z
    .locals 3

    .line 182
    sget-object v0, Lcom/baidu/vi/VGps;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 183
    sget-object v0, Lcom/baidu/vi/VGps;->h:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 184
    sget-object v0, Lcom/baidu/vi/VGps;->h:Landroid/os/Handler;

    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v1
.end method

.method public native updateGps(DDFFFI)V
.end method
