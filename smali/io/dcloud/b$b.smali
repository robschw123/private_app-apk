.class Lio/dcloud/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/b;->a(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/b;


# direct methods
.method constructor <init>(Lio/dcloud/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/b$b;->a:Lio/dcloud/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance p1, Lio/dcloud/common/ui/e/a;

    iget-object p2, p0, Lio/dcloud/b$b;->a:Lio/dcloud/b;

    iget-object p2, p2, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lio/dcloud/common/ui/e/a;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object p2, p0, Lio/dcloud/b$b;->a:Lio/dcloud/b;

    invoke-virtual {p2}, Lio/dcloud/c;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lio/dcloud/base/R$string;->dcloud_common_tips:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/dcloud/common/ui/e/a;->b(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lio/dcloud/b$b;->a:Lio/dcloud/b;

    invoke-virtual {p2}, Lio/dcloud/c;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lio/dcloud/base/R$string;->dcloud_ua_version_verify_fail_tips:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/dcloud/common/ui/e/a;->a(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lio/dcloud/b$b;->a:Lio/dcloud/b;

    iget-object p2, p2, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    const v0, 0x104000a

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lio/dcloud/b$b$a;

    invoke-direct {v0, p0}, Lio/dcloud/b$b$a;-><init>(Lio/dcloud/b$b;)V

    invoke-virtual {p1, p2, v0}, Lio/dcloud/common/ui/e/a;->b(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 12
    iget-object p2, p0, Lio/dcloud/b$b;->a:Lio/dcloud/b;

    invoke-virtual {p2}, Lio/dcloud/b;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, p2

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int p2, v0

    invoke-virtual {p1, p2}, Lio/dcloud/common/ui/e/a;->b(I)V

    const/16 p2, 0x11

    .line 13
    invoke-virtual {p1, p2}, Lio/dcloud/common/ui/e/a;->a(I)V

    const/4 p1, 0x0

    return-object p1
.end method
