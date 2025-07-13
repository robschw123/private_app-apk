.class public Lcom/baidu/mapsdkplatform/comapi/map/a;
.super Ljava/lang/Object;
.source "AppResList.java"

# interfaces
.implements Lcom/baidu/platform/comapi/b/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 24
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x7t
        0x5t
        0x3t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public b()[Ljava/lang/String;
    .locals 17

    const-string v0, "cfg/idrres/ResPackIndoorMap.rs"

    const-string v1, "cfg/idrres/DVIndoor.cfg"

    const-string v2, "cfg/idrres/baseindoormap.sty"

    const-string v3, "cfg/a/DVDirectory.cfg"

    const-string v4, "cfg/a/DVSDirectory.cfg"

    const-string v5, "cfg/a/DVHotcity.cfg"

    const-string v6, "cfg/a/DVVersion_pkg.cfg"

    const-string v7, "cfg/a/DVHotMap.cfg"

    const-string v8, "cfg/a/mode_1/map.rs"

    const-string v9, "cfg/a/mode_1/map.sty"

    const-string v10, "cfg/a/mode_1/reduct.rs"

    const-string v11, "cfg/a/mode_1/reduct.sty"

    const-string v12, "cfg/a/mode_1/traffic.rs"

    const-string v13, "cfg/a/mode_1/traffic.sty"

    const-string v14, "cfg/a/mode_1/indoor.rs"

    const-string v15, "cfg/a/mode_1/indoor.sty"

    const-string v16, "cfg/a/mode_2/map.sty"

    .line 67
    filled-new-array/range {v0 .. v16}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
