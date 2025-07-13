.class Lcom/baidu/mapsdkplatform/comapi/b/a/d;
.super Ljava/lang/Object;
.source "NativeCrashUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mapsdkplatform/comapi/b/a/c;


# direct methods
.method constructor <init>(Lcom/baidu/mapsdkplatform/comapi/b/a/c;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/b/a/d;->a:Lcom/baidu/mapsdkplatform/comapi/b/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 177
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/g;->a()Lcom/baidu/mapsdkplatform/comapi/util/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/util/g;->b()Lcom/baidu/mapsdkplatform/comapi/util/f;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 181
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/b/a/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 186
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 188
    array-length v1, v0

    if-nez v1, :cond_2

    goto/16 :goto_3

    .line 194
    :cond_2
    :try_start_0
    new-instance v1, Lcom/baidu/mapsdkplatform/comapi/b/a/e;

    invoke-direct {v1}, Lcom/baidu/mapsdkplatform/comapi/b/a/e;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 199
    :goto_0
    array-length v1, v0

    const/16 v2, 0xa

    if-le v1, v2, :cond_3

    const/16 v1, 0xa

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_7

    .line 207
    aget-object v4, v0, v3

    .line 209
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    .line 213
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/b/a/c;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 214
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 215
    iget-object v5, p0, Lcom/baidu/mapsdkplatform/comapi/b/a/d;->a:Lcom/baidu/mapsdkplatform/comapi/b/a/c;

    invoke-static {v5, v4}, Lcom/baidu/mapsdkplatform/comapi/b/a/c;->a(Lcom/baidu/mapsdkplatform/comapi/b/a/c;Ljava/io/File;)Z

    goto :goto_2

    .line 216
    :cond_5
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".zip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 217
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 218
    iget-object v5, p0, Lcom/baidu/mapsdkplatform/comapi/b/a/d;->a:Lcom/baidu/mapsdkplatform/comapi/b/a/c;

    invoke-static {v5, v4}, Lcom/baidu/mapsdkplatform/comapi/b/a/c;->a(Lcom/baidu/mapsdkplatform/comapi/b/a/c;Ljava/io/File;)Z

    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 224
    :cond_7
    array-length v1, v0

    if-le v1, v2, :cond_8

    .line 225
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/b/a/d;->a:Lcom/baidu/mapsdkplatform/comapi/b/a/c;

    invoke-static {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/b/a/c;->a(Lcom/baidu/mapsdkplatform/comapi/b/a/c;[Ljava/io/File;)V

    :cond_8
    :goto_3
    return-void
.end method
