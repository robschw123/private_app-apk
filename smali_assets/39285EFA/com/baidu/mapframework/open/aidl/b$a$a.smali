.class Lcom/baidu/mapframework/open/aidl/b$a$a;
.super Ljava/lang/Object;
.source "IOpenClientCallback.java"

# interfaces
.implements Lcom/baidu/mapframework/open/aidl/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapframework/open/aidl/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/baidu/mapframework/open/aidl/b;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/baidu/mapframework/open/aidl/b$a$a;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 95
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.baidu.mapframework.open.aidl.IOpenClientCallback"

    .line 97
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 99
    iget-object v2, p0, Lcom/baidu/mapframework/open/aidl/b$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    invoke-static {}, Lcom/baidu/mapframework/open/aidl/b$a;->a()Lcom/baidu/mapframework/open/aidl/b;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 101
    invoke-static {}, Lcom/baidu/mapframework/open/aidl/b$a;->a()Lcom/baidu/mapframework/open/aidl/b;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/baidu/mapframework/open/aidl/b;->a(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 104
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 107
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/baidu/mapframework/open/aidl/b$a$a;->b:Landroid/os/IBinder;

    return-object v0
.end method
