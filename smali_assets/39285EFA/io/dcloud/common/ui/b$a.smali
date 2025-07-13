.class Lio/dcloud/common/ui/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/common/ui/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/ui/b;->a(Landroid/app/Activity;Lio/dcloud/common/ui/b$b;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lio/dcloud/common/ui/b$b;

.field final synthetic c:Lio/dcloud/common/ui/b;


# direct methods
.method constructor <init>(Lio/dcloud/common/ui/b;Landroid/app/Activity;Lio/dcloud/common/ui/b$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/common/ui/b$a;->c:Lio/dcloud/common/ui/b;

    iput-object p2, p0, Lio/dcloud/common/ui/b$a;->a:Landroid/app/Activity;

    iput-object p3, p0, Lio/dcloud/common/ui/b$a;->b:Lio/dcloud/common/ui/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 7
    iget-object v0, p0, Lio/dcloud/common/ui/b$a;->a:Landroid/app/Activity;

    const-string v1, "pdr"

    const-string v2, "scok"

    const-string v3, "0"

    invoke-static {v0, v1, v2, v3}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lio/dcloud/common/ui/b$a;->b:Lio/dcloud/common/ui/b$b;

    iget-object v1, p0, Lio/dcloud/common/ui/b$a;->c:Lio/dcloud/common/ui/b;

    invoke-static {v1}, Lio/dcloud/common/ui/b;->a(Lio/dcloud/common/ui/b;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/dcloud/common/ui/b$b;->a(Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/ui/b$a;->a:Landroid/app/Activity;

    const-string v1, "privacy_config_uni_sp_file"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "privacy_config_version_uni_current_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4
    iget-object p1, p0, Lio/dcloud/common/ui/b$a;->a:Landroid/app/Activity;

    const-string v0, "pdr"

    const-string v1, "scok"

    const-string v2, "1"

    invoke-static {p1, v0, v1, v2}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lio/dcloud/common/ui/b$a;->b:Lio/dcloud/common/ui/b$b;

    invoke-interface {p1}, Lio/dcloud/common/ui/b$b;->a()V

    return-void
.end method

.method public onCancel()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/ui/b$a;->a:Landroid/app/Activity;

    const-string v1, "pdr"

    const-string v2, "scok"

    const-string v3, "0"

    invoke-static {v0, v1, v2, v3}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/ui/b$a;->b:Lio/dcloud/common/ui/b$b;

    iget-object v1, p0, Lio/dcloud/common/ui/b$a;->c:Lio/dcloud/common/ui/b;

    invoke-static {v1}, Lio/dcloud/common/ui/b;->a(Lio/dcloud/common/ui/b;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/dcloud/common/ui/b$b;->b(Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;)V

    .line 4
    iget-object v0, p0, Lio/dcloud/common/ui/b$a;->a:Landroid/app/Activity;

    const-string v1, "privacy_config_uni_sp_file"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "privacy_config_choose_disagree_uni_current_key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
