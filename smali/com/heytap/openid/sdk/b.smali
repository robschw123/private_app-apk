.class public Lcom/heytap/openid/sdk/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/openid/sdk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/heytap/openid/sdk/c;


# direct methods
.method public constructor <init>(Lcom/heytap/openid/sdk/c;)V
    .locals 0

    iput-object p1, p0, Lcom/heytap/openid/sdk/b;->a:Lcom/heytap/openid/sdk/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end method

.method public native onServiceDisconnected(Landroid/content/ComponentName;)V
.end method
