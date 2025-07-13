.class public Lcom/baidu/mapsdkplatform/comapi/a;
.super Ljava/lang/Object;
.source "BMapManagerInternal.java"

# interfaces
.implements Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$c;


# static fields
.field private static final a:Ljava/lang/String; = "a"

.field private static f:Lcom/baidu/mapsdkplatform/comapi/a; = null

.field private static g:I = -0x64


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/os/Handler;

.field private d:Lcom/baidu/mapsdkplatform/comapi/f;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 239
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->getInstance()Lcom/baidu/mapsdkplatform/comapi/NativeLoader;

    move-result-object v0

    const-string v1, "gnustl_shared"

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 240
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->getInstance()Lcom/baidu/mapsdkplatform/comapi/NativeLoader;

    move-result-object v0

    invoke-static {}, Lcom/baidu/mapapi/VersionInfo;->getKitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 242
    invoke-static {}, Lcom/baidu/mapsdkplatform/comjni/tools/a;->b()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/baidu/mapsdkplatform/comapi/a;
    .locals 1

    .line 41
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/a;->f:Lcom/baidu/mapsdkplatform/comapi/a;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/a;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/a;-><init>()V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/a;->f:Lcom/baidu/mapsdkplatform/comapi/a;

    .line 45
    :cond_0
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/a;->f:Lcom/baidu/mapsdkplatform/comapi/a;

    return-object v0
.end method

.method private a(Landroid/os/Message;)V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 170
    invoke-static {}, Lcom/baidu/mapapi/JNIInitializer;->getCachedContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 175
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7dc

    if-ne v0, v1, :cond_2

    .line 177
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    .line 178
    new-instance p1, Landroid/content/Intent;

    const-string v0, "permission check ok"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "permission check error"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    iget v1, p1, Landroid/os/Message;->arg1:I

    const-string v2, "error_code"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v1, "error_message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object p1, v0

    .line 185
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 187
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg2:I

    const/4 v1, 0x3

    const-string v2, "network error"

    if-ne v0, v1, :cond_3

    .line 188
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/a;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 191
    :cond_3
    iget v0, p1, Landroid/os/Message;->arg2:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    iget v0, p1, Landroid/os/Message;->arg2:I

    const/16 v1, 0x194

    if-eq v0, v1, :cond_4

    iget v0, p1, Landroid/os/Message;->arg2:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    iget p1, p1, Landroid/os/Message;->arg2:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_5

    .line 195
    :cond_4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/baidu/mapsdkplatform/comapi/a;Landroid/os/Message;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/a;->a(Landroid/os/Message;)V

    return-void
.end method

.method private f()V
    .locals 3

    .line 145
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 146
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 147
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/a;->b:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/a;->d:Lcom/baidu/mapsdkplatform/comapi/f;

    if-eqz v2, :cond_0

    .line 150
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a;->d:Lcom/baidu/mapsdkplatform/comapi/f;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/a;->b:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a;->b:Landroid/content/Context;

    return-void
.end method

.method public a(Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$b;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 209
    :cond_0
    iget v0, p1, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$b;->a:I

    if-nez v0, :cond_1

    .line 210
    iget-object v0, p1, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$b;->e:Ljava/lang/String;

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->c:Ljava/lang/String;

    .line 211
    iget-object v0, p1, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$b;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$b;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/util/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Authentication Error\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "baidumapsdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_0
    iget v0, p1, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$b;->a:I

    sget v1, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->b:I

    if-eq v0, v1, :cond_2

    iget v0, p1, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$b;->a:I

    sget v1, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->a:I

    if-eq v0, v1, :cond_2

    iget v0, p1, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$b;->a:I

    sget v1, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->c:I

    if-eq v0, v1, :cond_2

    .line 221
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/c;->a()Lcom/baidu/mapsdkplatform/comapi/util/c;

    move-result-object v0

    iget v1, p1, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$b;->f:I

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/util/c;->a(I)V

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a;->c:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget v0, p1, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$b;->a:I

    sget v1, Lcom/baidu/mapsdkplatform/comapi/a;->g:I

    if-eq v0, v1, :cond_3

    .line 226
    iget v0, p1, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$b;->a:I

    sput v0, Lcom/baidu/mapsdkplatform/comapi/a;->g:I

    .line 228
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x7dc

    .line 229
    iput v1, v0, Landroid/os/Message;->what:I

    .line 230
    iget v1, p1, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$b;->a:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 232
    iget-object p1, p1, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$b;->d:Ljava/lang/String;

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 234
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a;->c:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void
.end method

.method public b()V
    .locals 2

    .line 53
    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/a;->e:I

    if-nez v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 55
    invoke-static {}, Lcom/baidu/mapapi/JNIInitializer;->getCachedContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "BDMapSDK"

    const-string v1, "BDMapSDKException: you have not supplyed the global app context info from SDKInitializer.initialize(Context) function."

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 64
    :cond_0
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/f;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/f;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a;->d:Lcom/baidu/mapsdkplatform/comapi/f;

    .line 65
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/a;->f()V

    .line 69
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;->getInstance()Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;->updateNetworkInfo(Landroid/content/Context;)V

    .line 72
    :cond_1
    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/a;->e:I

    return-void
.end method

.method public c()Z
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a;->b:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 77
    invoke-static {}, Lcom/baidu/mapapi/JNIInitializer;->getCachedContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "BDMapSDK"

    const-string v2, "BDMapSDKException: you have not supplyed the global app context info from SDKInitializer.initialize(Context) function."

    .line 79
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/util/h;->b(Landroid/content/Context;)V

    .line 87
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/c;->b()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 88
    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->setPrivacyMode(Z)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-static {v2}, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->setPrivacyMode(Z)V

    .line 93
    :goto_0
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/b;

    invoke-direct {v0, p0}, Lcom/baidu/mapsdkplatform/comapi/b;-><init>(Lcom/baidu/mapsdkplatform/comapi/a;)V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a;->c:Landroid/os/Handler;

    .line 100
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/util/h;->c(Landroid/content/Context;)V

    .line 102
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/c;->a()Lcom/baidu/mapsdkplatform/comapi/util/c;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/util/c;->a(Landroid/content/Context;)V

    .line 104
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->h()V

    .line 107
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->init(Landroid/content/Context;)V

    .line 108
    invoke-static {p0}, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->setPermissionCheckResultListener(Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$c;)V

    .line 109
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->permissionCheck()I

    .line 111
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/c;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 112
    :cond_2
    new-instance v0, Lcom/baidu/mapapi/common/BaiduMapSDKException;

    const-string v1, "not agree privacyMode, please invoke SDKInitializer.setAgreePrivacy(Context, boolean) function"

    invoke-direct {v0, v1}, Lcom/baidu/mapapi/common/BaiduMapSDKException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()V
    .locals 1

    .line 122
    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/a;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/a;->e:I

    if-nez v0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/a;->g()V

    .line 126
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->b()V

    :cond_0
    return-void
.end method

.method public e()Landroid/content/Context;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 135
    invoke-static {}, Lcom/baidu/mapapi/JNIInitializer;->getCachedContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a;->b:Landroid/content/Context;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a;->b:Landroid/content/Context;

    return-object v0
.end method
