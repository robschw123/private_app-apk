.class Lio/dcloud/e/b/a$f;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/e/b/a;->a(Lio/dcloud/e/b/e;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/e/b/e;

.field final synthetic b:Lio/dcloud/e/b/a;


# direct methods
.method constructor <init>(Lio/dcloud/e/b/a;Lio/dcloud/e/b/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/e/b/a$f;->b:Lio/dcloud/e/b/a;

    iput-object p2, p0, Lio/dcloud/e/b/a$f;->a:Lio/dcloud/e/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p1, p0, Lio/dcloud/e/b/a$f;->a:Lio/dcloud/e/b/e;

    invoke-virtual {p1}, Lio/dcloud/e/b/f;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/AppRuntime;->hasPrivacyForNotShown(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lio/dcloud/e/b/a$f;->b:Lio/dcloud/e/b/a;

    invoke-static {p1}, Lio/dcloud/e/b/a;->b(Lio/dcloud/e/b/a;)Lio/dcloud/common/DHInterface/ICore;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/e/b/a$f;->a:Lio/dcloud/e/b/e;

    invoke-virtual {p2}, Lio/dcloud/e/b/f;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/ICore;->onRestart(Landroid/content/Context;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
