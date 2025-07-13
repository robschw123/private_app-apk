.class public Lio/dcloud/e/d/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/dcloud/e/d/b$a;

    invoke-direct {v0}, Lio/dcloud/e/d/b$a;-><init>()V

    sput-object v0, Lio/dcloud/e/d/b;->a:Ljava/util/List;

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    return-object p0

    :pswitch_0
    const-string p0, "luP1DZTusMDhjp7g7NCeBdtrsah2%2FNgkK%2B%2B6zPtE0CtdXeT%2Fq4q7gCqtXAzjj3014wpIVdf1m6tL%0D%0APzb1Ktdchw%3D%3D"

    .line 2
    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "p2WH3ao/DPQajXDOBOngAQRJy7HFI6I+rNVrL72Tvjg="

    return-object p0

    :pswitch_2
    const-string p0, "5rPjudJDczZ5DrTBECwfWbr6jIGaA05lJJ4z8IfXa1gko92nDYCi7GietE6VgZMY"

    return-object p0

    :pswitch_3
    const-string p0, "evs6OIME2yLCyUChqtQTGtxDh4/6wcSpdRw8lh8NGkyLXZQtZ1A7NDehilU2yXH5"

    return-object p0

    :pswitch_4
    const-string p0, "5rPjudJDczZ5DrTBECwfWX3lxIQFlIC/UMsP+phhn+hM5LDHPI8rrfGoWmO4XXwm"

    return-object p0

    :pswitch_5
    const-string p0, "W3v2HgaLzgcTXlUiOoZ7E6RDsIpMd2Glz1MxJdRxdis%2BkMR6DFN%2FwEsYW5qlORVMKEYtVW%2BVMUoO%0A%20%20%20%20HDpP1x%2BJYEBONT5H53P6VIMRAxZjn%2BGSU2QqUAXYXuDA9OkD2SztJLGWMXqJb5xjvxk4w6dV7K0u%0A%20%20%20%20gf1aka3oTokx9uC%2BH30gE40QuExLX%2BnDfSpAPO7o"

    .line 3
    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    const-string p0, "CEroA9kVcgb5YW85GtDBLrVZfsAsUrOdkBRjB/Uh1+E="

    return-object p0

    :pswitch_7
    const-string p0, "0aMrQEq5Ctd6ijW647Rs/mx5Wynbb/R86n/v901mz4AOZyvzw6yH2fs8osrsbbOK"

    return-object p0

    :pswitch_8
    const-string p0, "5rPjudJDczZ5DrTBECwfWSjBF5HsOIb6t/fa0kExz2phP+SrGrN3+oS6bbF8z8n+"

    return-object p0

    :pswitch_9
    const-string p0, "MzNmVWBDga0/H0qKMFZDLz0PBHBKKgKRlNNWHFLAEaJPtU+ccxdpDL48gDm/j1Pn"

    return-object p0

    :pswitch_a
    const-string p0, "5rPjudJDczZ5DrTBECwfWer9fxhAWnoxI7Hr0jS/XKKlD9cg1eZLP+WDaj1U0IQ9"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/dcloud/e/d/b;->a:Ljava/util/List;

    return-object v0
.end method

.method public static b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "kge&yy&m&kgee&eifiomz{&j"

    .line 3
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "j"

    .line 4
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "i"

    .line 5
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
