.class Lio/dcloud/sdk/core/b/a$a;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/core/b/a;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/core/b/a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/core/b/a$a;->a:Lio/dcloud/sdk/core/b/a;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "bd"

    const-string v0, "io.dcloud.sdk.poly.adapter.bd.BDAdAdapter"

    .line 2
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "csj"

    const-string v0, "io.dcloud.sdk.poly.adapter.csj.CSJAdAdapter"

    .line 3
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "gdt"

    const-string v0, "io.dcloud.sdk.poly.adapter.gdt.GDTADAdapter"

    .line 4
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sgm"

    const-string v0, "io.dcloud.sdk.poly.adapter.sgm.SGMADAdapter"

    .line 5
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ks"

    const-string v0, "io.dcloud.sdk.poly.adapter.ks.KSADAdapter"

    .line 6
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "hw"

    const-string v0, "io.dcloud.sdk.poly.adapter.hw.HWAdAdapter"

    .line 7
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "gm"

    const-string v0, "io.dcloud.sdk.poly.adapter.gm.DGMAdAdapter"

    .line 8
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "gg"

    const-string v0, "io.dcloud.sdk.poly.adapter.google.AdMobAdAdapter"

    .line 9
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "pg"

    const-string v0, "io.dcloud.sdk.poly.adapter.pg.PGADAdapter"

    .line 10
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-class p1, Lio/dcloud/h/c/b/b/b;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "wm"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
