.class public abstract Lcom/asus/msa/SupplementaryDID/IDidAidlInterface$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/asus/msa/SupplementaryDID/IDidAidlInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/msa/SupplementaryDID/IDidAidlInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/msa/SupplementaryDID/IDidAidlInterface$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.asus.msa.SupplementaryDID.IDidAidlInterface"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static native a(Landroid/os/IBinder;)Lcom/asus/msa/SupplementaryDID/IDidAidlInterface;
.end method


# virtual methods
.method public native asBinder()Landroid/os/IBinder;
.end method

.method public native onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.end method
