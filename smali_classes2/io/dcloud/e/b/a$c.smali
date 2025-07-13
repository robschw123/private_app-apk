.class Lio/dcloud/e/b/a$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/e/b/a;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lio/dcloud/e/b/e;

.field final synthetic d:Landroid/widget/CheckBox;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lio/dcloud/e/b/e;

.field final synthetic g:Lio/dcloud/e/b/e;

.field final synthetic h:Z

.field final synthetic i:Lio/dcloud/e/b/a;


# direct methods
.method constructor <init>(Lio/dcloud/e/b/a;Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/e/b/e;Landroid/widget/CheckBox;Ljava/lang/String;Lio/dcloud/e/b/e;Lio/dcloud/e/b/e;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/e/b/a$c;->i:Lio/dcloud/e/b/a;

    iput-object p2, p0, Lio/dcloud/e/b/a$c;->a:Landroid/app/Activity;

    iput-object p3, p0, Lio/dcloud/e/b/a$c;->b:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/e/b/a$c;->c:Lio/dcloud/e/b/e;

    iput-object p5, p0, Lio/dcloud/e/b/a$c;->d:Landroid/widget/CheckBox;

    iput-object p6, p0, Lio/dcloud/e/b/a$c;->e:Ljava/lang/String;

    iput-object p7, p0, Lio/dcloud/e/b/a$c;->f:Lio/dcloud/e/b/e;

    iput-object p8, p0, Lio/dcloud/e/b/a$c;->g:Lio/dcloud/e/b/e;

    iput-boolean p9, p0, Lio/dcloud/e/b/a$c;->h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    const/4 p1, -0x2

    if-ne p2, p1, :cond_2

    .line 1
    iget-object p1, p0, Lio/dcloud/e/b/a$c;->i:Lio/dcloud/e/b/a;

    invoke-static {p1}, Lio/dcloud/e/b/a;->a(Lio/dcloud/e/b/a;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lio/dcloud/e/b/a$c;->a:Landroid/app/Activity;

    invoke-static {p1}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->getIActivityHandler(Landroid/app/Activity;)Lio/dcloud/common/DHInterface/IActivityHandler;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 4
    iget-object p2, p0, Lio/dcloud/e/b/a$c;->b:Ljava/lang/String;

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IActivityHandler;->closeAppStreamSplash(Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string p2, "closeSplashScreen0"

    .line 5
    invoke-static {p1, p2}, Lio/dcloud/common/util/BaseInfo;->setLoadingLaunchePage(ZLjava/lang/String;)V

    .line 6
    iget-object p1, p0, Lio/dcloud/e/b/a$c;->i:Lio/dcloud/e/b/a;

    iget-object p1, p1, Lio/dcloud/e/b/a;->e:Lio/dcloud/e/b/c;

    invoke-virtual {p1}, Lio/dcloud/e/b/c;->e()I

    move-result p1

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lio/dcloud/e/b/a$c;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lio/dcloud/e/b/a$c;->c:Lio/dcloud/e/b/e;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Lio/dcloud/e/b/e;->w()V

    .line 12
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MAIN"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.category.HOME"

    .line 13
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    iget-object p2, p0, Lio/dcloud/e/b/a$c;->a:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const/4 p1, -0x3

    if-ne p2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    if-ne p2, p1, :cond_5

    .line 19
    iget-object p1, p0, Lio/dcloud/e/b/a$c;->d:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 20
    iget-object p1, p0, Lio/dcloud/e/b/a$c;->a:Landroid/app/Activity;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "test_runing"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/dcloud/e/b/a$c;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "pdr"

    const-string v1, "__am=t"

    invoke-static {p1, v0, p2, v1}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_4
    iget-object v2, p0, Lio/dcloud/e/b/a$c;->i:Lio/dcloud/e/b/a;

    iget-object v3, p0, Lio/dcloud/e/b/a$c;->a:Landroid/app/Activity;

    iget-object v4, p0, Lio/dcloud/e/b/a$c;->b:Ljava/lang/String;

    iget-object v5, p0, Lio/dcloud/e/b/a$c;->e:Ljava/lang/String;

    iget-object v6, p0, Lio/dcloud/e/b/a$c;->c:Lio/dcloud/e/b/e;

    iget-object v7, p0, Lio/dcloud/e/b/a$c;->f:Lio/dcloud/e/b/e;

    iget-object v8, p0, Lio/dcloud/e/b/a$c;->g:Lio/dcloud/e/b/e;

    iget-boolean v9, p0, Lio/dcloud/e/b/a$c;->h:Z

    invoke-virtual/range {v2 .. v9}, Lio/dcloud/e/b/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/e/b/e;Lio/dcloud/e/b/e;Lio/dcloud/e/b/e;Z)V

    .line 23
    iget-object p1, p0, Lio/dcloud/e/b/a$c;->i:Lio/dcloud/e/b/a;

    invoke-static {p1}, Lio/dcloud/e/b/a;->a(Lio/dcloud/e/b/a;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_5
    :goto_0
    return-void
.end method
