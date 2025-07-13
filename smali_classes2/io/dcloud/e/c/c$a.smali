.class Lio/dcloud/e/c/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/e/c/c;->a(Landroid/app/Activity;Landroid/content/Intent;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lio/dcloud/e/c/c;


# direct methods
.method constructor <init>(Lio/dcloud/e/c/c;Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/e/c/c$a;->d:Lio/dcloud/e/c/c;

    iput-object p2, p0, Lio/dcloud/e/c/c$a;->a:Lio/dcloud/common/DHInterface/IApp;

    iput-object p3, p0, Lio/dcloud/e/c/c$a;->b:Landroid/app/Activity;

    iput-object p4, p0, Lio/dcloud/e/c/c$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lio/dcloud/e/c/c$a;->a:Lio/dcloud/common/DHInterface/IApp;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lio/dcloud/e/c/c$a;->d:Lio/dcloud/e/c/c;

    iget-object v1, p0, Lio/dcloud/e/c/c$a;->b:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lio/dcloud/e/c/c;->a(Lio/dcloud/e/c/c;Landroid/app/Activity;Lio/dcloud/common/DHInterface/IApp;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lio/dcloud/e/c/c$a;->d:Lio/dcloud/e/c/c;

    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lio/dcloud/e/c/c$a;->b:Landroid/app/Activity;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lio/dcloud/e/c/c$a;->c:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/16 v2, 0x20

    invoke-virtual {p1, v0, v2, v1}, Lio/dcloud/e/c/c;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :cond_1
    if-nez v3, :cond_2

    .line 6
    sget-object p1, Lio/dcloud/common/util/BaseInfo;->sLastRunApp:Ljava/lang/String;

    iget-object v0, p0, Lio/dcloud/e/c/c$a;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 7
    sput-object p1, Lio/dcloud/common/util/BaseInfo;->sLastRunApp:Ljava/lang/String;

    .line 8
    iget-object p1, p0, Lio/dcloud/e/c/c$a;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method
