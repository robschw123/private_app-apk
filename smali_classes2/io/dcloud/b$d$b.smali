.class Lio/dcloud/b$d$b;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/b$d;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lio/dcloud/b$d;


# direct methods
.method constructor <init>(Lio/dcloud/b$d;Landroid/app/Dialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/b$d$b;->b:Lio/dcloud/b$d;

    iput-object p2, p0, Lio/dcloud/b$d$b;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/b$d$b;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object v0, p0, Lio/dcloud/b$d$b;->b:Lio/dcloud/b$d;

    iget-object v0, v0, Lio/dcloud/b$d;->a:Lio/dcloud/common/DHInterface/ICallBack;

    invoke-interface {v0, p1, p2}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
