.class public Lcom/heytap/openid/a$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/heytap/openid/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/openid/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/heytap/openid/a$a$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public native a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native asBinder()Landroid/os/IBinder;
.end method
